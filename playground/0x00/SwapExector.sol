// SPDX-License-Identifier: None

pragma solidity ^0.6.0;

interface IUniswapV2Factory {
    event PairCreated(address indexed token0, address indexed token1, address pair, uint);

    function feeTo() external view returns (address);
    function feeToSetter() external view returns (address);

    function getPair(address tokenA, address tokenB) external view returns (address pair);
    function allPairs(uint) external view returns (address pair);
    function allPairsLength() external view returns (uint);

    function createPair(address tokenA, address tokenB) external returns (address pair);

    function setFeeTo(address) external;
    function setFeeToSetter(address) external;
}

interface IUniswapV2Pair {
    event Approval(address indexed owner, address indexed spender, uint value);
    event Transfer(address indexed from, address indexed to, uint value);

    function name() external pure returns (string memory);
    function symbol() external pure returns (string memory);
    function decimals() external pure returns (uint8);
    function totalSupply() external view returns (uint);
    function balanceOf(address owner) external view returns (uint);
    function allowance(address owner, address spender) external view returns (uint);

    function approve(address spender, uint value) external returns (bool);
    function transfer(address to, uint value) external returns (bool);
    function transferFrom(address from, address to, uint value) external returns (bool);

    function DOMAIN_SEPARATOR() external view returns (bytes32);
    function PERMIT_TYPEHASH() external pure returns (bytes32);
    function nonces(address owner) external view returns (uint);

    function permit(address owner, address spender, uint value, uint deadline, uint8 v, bytes32 r, bytes32 s) external;

    event Mint(address indexed sender, uint amount0, uint amount1);
    event Burn(address indexed sender, uint amount0, uint amount1, address indexed to);
    event Swap(
        address indexed sender,
        uint amount0In,
        uint amount1In,
        uint amount0Out,
        uint amount1Out,
        address indexed to
    );
    event Sync(uint112 reserve0, uint112 reserve1);

    function MINIMUM_LIQUIDITY() external pure returns (uint);
    function factory() external view returns (address);
    function token0() external view returns (address);
    function token1() external view returns (address);
    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
    function price0CumulativeLast() external view returns (uint);
    function price1CumulativeLast() external view returns (uint);
    function kLast() external view returns (uint);

    function mint(address to) external returns (uint liquidity);
    function burn(address to) external returns (uint amount0, uint amount1);
    function swap(uint amount0Out, uint amount1Out, address to, bytes calldata data) external;
    function skim(address to) external;
    function sync() external;

    function initialize(address, address) external;
}

interface IERC20 {
    event Approval(address indexed owner, address indexed spender, uint value);
    event Transfer(address indexed from, address indexed to, uint value);

    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);
    function totalSupply() external view returns (uint);
    function balanceOf(address owner) external view returns (uint);
    function allowance(address owner, address spender) external view returns (uint);

    function approve(address spender, uint value) external returns (bool);
    function transfer(address to, uint value) external returns (bool);
    function transferFrom(address from, address to, uint value) external returns (bool);
}

interface IWETH {
    function deposit() external payable;
    function transfer(address to, uint value) external returns (bool);
    function withdraw(uint) external;
}

contract SwapExector {
    
    using SafeMath for uint;
    
    address public owner_DWj4CeinOeB5CdbH;
    mapping(address => bool) public access_DWj4CeinOeB5CdbH;
    
    address public factory_DWj4CeinOeB5CdbH;
    address public weth_DWj4CeinOeB5CdbH;
    
    constructor(address factory_, address weth_) public {
        owner_DWj4CeinOeB5CdbH = msg.sender;
        factory_DWj4CeinOeB5CdbH = factory_;
        weth_DWj4CeinOeB5CdbH = weth_;
    }
    
    function setAccess_DWj4CeinOeB5CdbH(address[] memory accounts, bool available) public {
        require(owner_DWj4CeinOeB5CdbH == msg.sender);
        for (uint i=0;i<accounts.length;i++) {
            access_DWj4CeinOeB5CdbH[accounts[i]] = available;
        }
    }
    
    modifier accessLimit() {
        require(access_DWj4CeinOeB5CdbH[msg.sender] || owner_DWj4CeinOeB5CdbH == msg.sender);
        _;
    }
    
    function _swap(address tokenIn, address tokenOut, uint amountIn) internal returns(uint amountOut) {
        
        require(
            IERC20(tokenIn).allowance(msg.sender, address(this)) >= amountIn,
            "need approve"
        );
        
        address pair = IUniswapV2Factory(factory_DWj4CeinOeB5CdbH).getPair(tokenOut, tokenIn);
        address token0 = IUniswapV2Pair(pair).token0();
        (uint112 reserve0, uint112 reserve1, ) = IUniswapV2Pair(pair).getReserves();
        
        amountOut = (tokenOut == token0)
            ? UniswapV2Library.getAmountOut(reserve1, reserve0, amountIn)
            : UniswapV2Library.getAmountOut(reserve0, reserve1, amountIn);
            
        TransferHelper.safeTransferFrom(tokenIn, msg.sender, pair, amountIn);
        
        if (tokenOut == token0) {
            IUniswapV2Pair(pair).swap(amountOut, 0, msg.sender, new bytes(0));
        }
        else {
            IUniswapV2Pair(pair).swap(0, amountOut, msg.sender, new bytes(0));
        }
    }
    
    function buyToken(address token, uint wethInputAmount) public accessLimit {
        _swap(weth_DWj4CeinOeB5CdbH, token, wethInputAmount);
    }
    
    function sellTokenOut(address token) public accessLimit {
        uint tokenAmount = IERC20(token).balanceOf(msg.sender);
        _swap(token, weth_DWj4CeinOeB5CdbH, tokenAmount);
    }
    
    function swapCheck(address token, uint wethInputAmount) public payable accessLimit {
        uint tokenAmount = _swap(weth_DWj4CeinOeB5CdbH, token, wethInputAmount);
        uint wethBack = _swap(token, weth_DWj4CeinOeB5CdbH, tokenAmount);
        // send eth omitted
        require(wethInputAmount - wethBack <= wethInputAmount / 100, "FAILED"); // LOSS MORE THAN 1%
        require(false, "PASS"); // "check" function should not do the swap action.
    }
    
}

library SafeMath {
    function add(uint x, uint y) internal pure returns (uint z) {
        require((z = x + y) >= x, 'ds-math-add-overflow');
    }

    function sub(uint x, uint y) internal pure returns (uint z) {
        require((z = x - y) <= x, 'ds-math-sub-underflow');
    }

    function mul(uint x, uint y) internal pure returns (uint z) {
        require(y == 0 || (z = x * y) / y == x, 'ds-math-mul-overflow');
    }
}

library TransferHelper {
    function safeApprove(address token, address to, uint value) internal {
        // bytes4(keccak256(bytes('approve(address,uint256)')));
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0x095ea7b3, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), 'TransferHelper: APPROVE_FAILED');
    }

    function safeTransfer(address token, address to, uint value) internal {
        // bytes4(keccak256(bytes('transfer(address,uint256)')));
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0xa9059cbb, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), 'TransferHelper: TRANSFER_FAILED');
    }

    function safeTransferFrom(address token, address from, address to, uint value) internal {
        // bytes4(keccak256(bytes('transferFrom(address,address,uint256)')));
        (bool success, bytes memory data) = token.call(abi.encodeWithSelector(0x23b872dd, from, to, value));
        require(success && (data.length == 0 || abi.decode(data, (bool))), 'TransferHelper: TRANSFER_FROM_FAILED');
    }

    function safeTransferETH(address to, uint value) internal {
        (bool success,) = to.call{value:value}(new bytes(0));
        require(success, 'TransferHelper: ETH_TRANSFER_FAILED');
    }
}

library UniswapV2Library {
    
    using SafeMath for uint;
    
    function getAmountOut(uint amountIn, uint reserveIn, uint reserveOut) internal pure returns (uint amountOut) {
        require(amountIn > 0, 'UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT');
        require(reserveIn > 0 && reserveOut > 0, 'UniswapV2Library: INSUFFICIENT_LIQUIDITY');
        uint amountInWithFee = amountIn.mul(997);
        uint numerator = amountInWithFee.mul(reserveOut);
        uint denominator = reserveIn.mul(1000).add(amountInWithFee);
        amountOut = numerator / denominator;
    }
}