// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.8.0;

import {console} from './console.sol';
import {Context} from './Context.sol';
import {Ownable} from './Ownable.sol';
import {Operator} from './Operator.sol';
import {IERC20} from './IERC20.sol';
import {Math} from './Math.sol';
import {SafeMath} from './SafeMath.sol';
import {SafeERC20} from './SafeERC20.sol';
import {EnumerableSet} from './EnumerableSet.sol';

interface IRewardPool {
    function collect() external returns (address, uint256);
}

interface IBoardroomV2 {
    /* ================= EVENTS ================= */

    event DepositShare(address indexed owner, uint256 amount);
    event WithdrawShare(address indexed owner, uint256 amount);
    event RewardClaimed(
        address indexed owner,
        address indexed token,
        uint256 amount
    );
    event RewardCollected(
        address indexed operator,
        address indexed target,
        address indexed token,
        uint256 amount
    );
    event RewardCollectionFailedWithReason(
        address indexed operator,
        address indexed target,
        string reason
    );
    event RewardCollectionFailedWithData(
        address indexed operator,
        address indexed target,
        bytes data
    );

    /* ================= CALLS ================= */

    function totalSupply() external view returns (uint256);

    function balanceOf(address _owner) external view returns (uint256);

    function rewardTokensAt(uint256 index) external view returns (address);

    function rewardTokensLength() external view returns (uint256);

    function rewardPoolsAt(uint256 index) external view returns (address);

    function rewardPoolsLength() external view returns (uint256);

    function lastSnapshotIndex(address _token) external view returns (uint256);

    function rewardEarned(address _token, address _director)
        external
        view
        returns (uint256);

    /* ================= TXNS ================= */

    function deposit(uint256 _amount) external;

    function withdraw(uint256 _amount) external;

    function claimReward() external;

    function exit() external;

    function collectReward() external;
}

interface IBoardroomV2Gov {
    /* ================= EVENTS ================= */

    event RewardTokenAdded(address indexed operator, address token);
    event RewardTokenRemoved(address indexed operator, address token);
    event RewardPoolAdded(address indexed operator, address pool);
    event RewardPoolRemoved(address indexed operator, address pool);

    /* ================= TXNS ================= */

    function migrate() external;

    function addRewardToken(address _token) external;

    function removeRewardToken(address _token) external;

    function addRewardPool(address _pool) external;

    function removeRewardPool(address _pool) external;
}

interface IUniStore {
    /* ================= EVENTS ================= */
    event Deposit(
        address indexed operator,
        address indexed owner,
        uint256 indexed pid,
        uint256 amount
    );
    event Withdraw(
        address indexed operator,
        address indexed owner,
        uint256 indexed pid,
        uint256 amount
    );

    /* ================= CALLS ================= */

    // common
    function totalWeight() external view returns (uint256);

    function poolLength() external view returns (uint256);

    // index
    function poolIdsOf(address _token) external view returns (uint256[] memory);

    // pool info
    function nameOf(uint256 _pid) external view returns (string memory);

    function tokenOf(uint256 _pid) external view returns (address);

    function weightOf(uint256 _pid) external view returns (uint256);

    function totalSupply(uint256 _pid) external view returns (uint256);

    function balanceOf(uint256 _pid, address _owner)
        external
        view
        returns (uint256);

    /* ================= TXNS ================= */

    function deposit(
        uint256 _pid,
        address _owner,
        uint256 _amount
    ) external;

    function withdraw(
        uint256 _pid,
        address _owner,
        uint256 _amount
    ) external;

    function emergencyWithdraw(uint256 _pid) external;
}

interface IUniStoreGov {
    event EmergencyReported(address indexed reporter);
    event EmergencyResolved(address indexed resolver);
    
    function reportEmergency() external;
    function resolveEmergency() external;
}

interface ITokenStoreGov is IUniStoreGov {
    /* ================= EVENTS ================= */

    // event TokenChanged(
    //     address indexed owner,
    //     address newToken,
    //     address oldToken
    // );

    /* ================= TXNS ================= */

    // function setToken(address newToken) external;
}


interface IPoolStoreGov is IUniStoreGov {
    /* ================= EVENTS ================= */


    // event PoolAdded(
    //     address indexed operator,
    //     uint256 indexed pid,
    //     string name,
    //     address token,
    //     uint256 weight
    // );
    // event PoolWeightChanged(
    //     address indexed operator,
    //     uint256 indexed pid,
    //     uint256 from,
    //     uint256 to
    // );
    // event PoolNameChanged(
    //     address indexed operator,
    //     uint256 indexed pid,
    //     string from,
    //     string to
    // );

    /* ================= TXNS ================= */

    // function addPool(
    //     string memory _name,
    //     IERC20 _token,
    //     uint256 _weight
    // ) external;

    // function setPool(uint256 _pid, uint256 _weight) external;

    // function setPool(uint256 _pid, string memory _name) external;
}

interface IPool {
    /* ================= EVENTS ================= */

    event DepositToken(
        address indexed owner,
        uint256 indexed pid,
        uint256 amount
    );
    event WithdrawToken(
        address indexed owner,
        uint256 indexed pid,
        uint256 amount
    );
    event RewardClaimed(
        address indexed owner,
        uint256 indexed pid,
        uint256 amount
    );

    /* ================= CALLS ================= */

    function tokenOf(uint256 _pid) external view returns (address);

    function poolIdsOf(address _token) external view returns (uint256[] memory);

    function totalSupply(uint256 _pid) external view returns (uint256);

    function balanceOf(uint256 _pid, address _owner)
        external
        view
        returns (uint256);

    function rewardRatePerPool(uint256 _pid) external view returns (uint256);

    function rewardPerToken(uint256 _pid) external view returns (uint256);

    function rewardEarned(uint256 _pid, address _target)
        external
        view
        returns (uint256);

    /* ================= TXNS ================= */

    function massUpdate(uint256[] memory _pids) external;

    function update(uint256 _pid) external;

    function deposit(uint256 _pid, uint256 _amount) external;

    function withdraw(uint256 _pid, uint256 _amount) external;

    function claimReward(uint256 _pid) external;

    function exit(uint256 _pid) external;
}

interface IPoolGov {
    /* ================= EVENTS ================= */

    event RewardNotified(
        address indexed operator,
        uint256 amount,
        uint256 period
    );

    /* ================= TXNS ================= */

    function notifyReward(uint256 _amount, uint256 _period) external;
}

abstract contract TokenStoreWrapper is Context {
    using SafeERC20 for IERC20;

    IERC20 public share;
    IUniStore public store;

    function deposit(uint256 _amount) public virtual {
        share.safeTransferFrom(_msgSender(), address(this), _amount);
        share.safeIncreaseAllowance(address(store), _amount);
        store.deposit(0, _msgSender(), _amount);
    }

    function withdraw(uint256 _amount) public virtual {
        store.withdraw(0, _msgSender(), _amount);
        share.safeTransfer(_msgSender(), _amount);
    }
}

abstract contract PoolStoreWrapper is Context {
    using SafeERC20 for IERC20;

    IUniStore public store;

    function deposit(uint256 _pid, uint256 _amount) public virtual {
        IERC20 token = IERC20(store.tokenOf(_pid));
        token.safeTransferFrom(_msgSender(), address(this), _amount);
        token.safeIncreaseAllowance(address(store), _amount);
        store.deposit(_pid, _msgSender(), _amount);
    }

    function withdraw(uint256 _pid, uint256 _amount) public virtual {
        store.withdraw(_pid, _msgSender(), _amount);
        IERC20(store.tokenOf(_pid)).safeTransfer(_msgSender(), _amount);
    }
}

contract TokenStore is IUniStore, ITokenStoreGov, Operator {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;
    
    /* ================= COMPATIBLE ================= */
    
    string private x_name = "";
    uint256[] private x_res;
    uint private x_poollength = 1;
    uint private x_totalw = 1;
    
    function nameOf(uint256 _pid) public override view returns (string memory) {
        _pid;
        return x_name;
    }
    
    function poolIdsOf(address _token) public override view returns (uint256[] memory) {
        _token;
        return x_res;
    }
    
    function poolLength() public override view returns (uint256) {
        return x_poollength;
    }
    
    function tokenOf(uint256 _pid) public override view returns (address) {
        _pid;
        return token;
    }
    
    function totalWeight() public override view returns (uint256) {
        return x_totalw;
    }
    
    function weightOf(uint256 _pid) public override view returns (uint256) {
        _pid;
        return x_totalw;
    }
    

    /* ================= STATES ================= */

    address public token; // override removed

    uint256 private _totalSupply;
    mapping(address => uint256) private _balances;

    bool public emergency = false;

    constructor(address _token) Operator() {
        token = _token;
    }

    /* ================= GOV - OWNER ONLY ================= */

    /**
     * @dev CAUTION: DO NOT USE IN NORMAL SITUATION
     * @notice Enable emergency withdraw
     */
    function reportEmergency() public override onlyOwner {
        emergency = true;
        emit EmergencyReported(_msgSender());
    }

    /**
     * @dev CAUTION: DO NOT USE IN NORMAL SITUATION
     * @notice Disable emergency withdraw
     */
    function resolveEmergency() public override onlyOwner {
        emergency = false;
        emit EmergencyResolved(_msgSender());
    }

    /**
     * @dev CAUTION: MUST USE 1:1 TOKEN MIGRATION
     */
    function setToken(address newToken)
        public
        // override
        onlyOwner
    {
        // address oldToken = token;
        token = newToken;
        IERC20(newToken).safeTransferFrom(
            msg.sender,
            address(this),
            totalSupply(0)
        );
        // emit TokenChanged(_msgSender(), newToken, oldToken);
    }

    /* ================= CALLS - ANYONE ================= */

    /**
     * @return total staked token amount
     */
    function totalSupply(uint _pid) public view override returns (uint256) {
        _pid; // unused
        return _totalSupply;
    }

    /**
     * @param _owner staker address
     * @return staked amount of user
     */
    function balanceOf(uint _pid, address _owner) public view override returns (uint256) {
        _pid;
        return _balances[_owner];
    }

    /* ================= TXNS - OPERATOR ONLY ================= */

    /**
     * @param _owner stake address
     * @param _amount stake amount
     */
    function deposit(uint256 _pid, address _owner, uint256 _amount)
        public
        override
        onlyOperator
    {
        _totalSupply = _totalSupply.add(_amount);
        _balances[_owner] = _balances[_owner].add(_amount);
        IERC20(token).safeTransferFrom(_msgSender(), address(this), _amount);

        emit Deposit(_msgSender(), _owner, _pid, _amount);
    }

    /**
     * @param _owner stake address
     * @param _amount stake amount
     */
    function withdraw(uint256 _pid, address _owner, uint256 _amount)
        public
        override
        onlyOperator
    {
        _totalSupply = _totalSupply.sub(_amount);
        _balances[_owner] = _balances[_owner].sub(_amount);
        IERC20(token).safeTransfer(_msgSender(), _amount);

        emit Withdraw(_msgSender(), _owner, _pid, _amount);
    }

    /**
     * @notice Anyone can withdraw its balance even if is not the operator
     */
    function emergencyWithdraw(uint256 _pid) public override {
        require(emergency, 'TokenStore: not in emergency');

        uint256 balance = _balances[_msgSender()];
        _balances[_msgSender()] = 0;
        IERC20(token).safeTransfer(_msgSender(), balance);

        emit Withdraw(_msgSender(), _msgSender(), _pid, balance);
    }
}

contract PoolStore is IUniStore, IPoolStoreGov, Operator {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    /* ================= DATA STRUCTURE ================= */

    struct Pool {
        string name;
        IERC20 token;
        uint256 weight;
        uint256 totalSupply;
    }

    /* ================= STATES ================= */

    uint256 public override totalWeight = 0;

    Pool[] public pools;
    mapping(uint256 => mapping(address => uint256)) balances;
    mapping(address => uint256[]) public indexByToken;

    bool public emergency = false;

    constructor() Operator() {}

    /* ================= GOV - OWNER ONLY ================= */

    /**
     * @dev CAUTION: DO NOT USE IN NORMAL SITUATION
     * @notice Enable emergency withdraw
     */
    function reportEmergency() public override onlyOwner {
        emergency = true;
        emit EmergencyReported(_msgSender());
    }

    /**
     * @dev CAUTION: DO NOT USE IN NORMAL SITUATION
     * @notice Disable emergency withdraw
     */
    function resolveEmergency() public override onlyOwner {
        emergency = false;
        emit EmergencyResolved(_msgSender());
    }

    /**
     * @param _token pool token
     * @param _weight pool weight
     */
    function addPool(
        string memory _name,
        IERC20 _token,
        uint256 _weight
    ) 
        public
        // override
        onlyOwner
    {
        totalWeight = totalWeight.add(_weight);

        uint256 index = pools.length;
        indexByToken[address(_token)].push(index);

        pools.push(
            Pool({name: _name, token: _token, weight: _weight, totalSupply: 0})
        );
        // emit PoolAdded(_msgSender(), index, _name, address(_token), _weight);
    }

    /**
     * @param _pid pool id
     * @param _weight target pool weight
     */
    function setPool(uint256 _pid, uint256 _weight)
        public
        // override
        checkPoolId(_pid)
        onlyOwner
    {
        Pool memory pool = pools[_pid];

        // uint256 oldWeight = pool.weight;
        totalWeight = totalWeight.add(_weight).sub(pool.weight);
        pool.weight = _weight;

        pools[_pid] = pool;

        // emit PoolWeightChanged(_msgSender(), _pid, oldWeight, _weight);
    }

    /**
     * @param _pid pool id
     * @param _name name of pool
     */
    function setPool(uint256 _pid, string memory _name)
        public
        // override
        checkPoolId(_pid)
        onlyOwner
    {
        // string memory oldName = pools[_pid].name;
        pools[_pid].name = _name;

        // emit PoolNameChanged(_msgSender(), _pid, oldName, _name);
    }

    /* ================= MODIFIER ================= */

    modifier checkPoolId(uint256 _pid) {
        require(_pid <= pools.length, 'PoolStore: invalid pid');

        _;
    }

    /* ================= CALLS - ANYONE ================= */
    /**
     * @return total pool length
     */
    function poolLength() public view override returns (uint256) {
        return pools.length;
    }

    /**
     * @param _token pool token address
     * @return pool id
     */
    function poolIdsOf(address _token)
        public
        view
        override
        returns (uint256[] memory)
    {
        return indexByToken[_token];
    }

    /**
     * @param _pid pool id
     * @return name of pool
     */
    function nameOf(uint256 _pid)
        public
        view
        override
        checkPoolId(_pid)
        returns (string memory)
    {
        return pools[_pid].name;
    }

    /**
     * @param _pid pool id
     * @return pool token
     */
    function tokenOf(uint256 _pid)
        public
        view
        override
        checkPoolId(_pid)
        returns (address)
    {
        return address(pools[_pid].token);
    }

    /**
     * @param _pid pool id
     * @return pool weight
     */
    function weightOf(uint256 _pid)
        public
        view
        override
        checkPoolId(_pid)
        returns (uint256)
    {
        return pools[_pid].weight;
    }

    /**
     * @param _pid pool id
     * @return total staked token amount
     */
    function totalSupply(uint256 _pid)
        public
        view
        override
        checkPoolId(_pid)
        returns (uint256)
    {
        return pools[_pid].totalSupply;
    }

    /**
     * @param _pid pool id
     * @param _sender staker address
     * @return staked amount of user
     */
    function balanceOf(uint256 _pid, address _sender)
        public
        view
        override
        checkPoolId(_pid)
        returns (uint256)
    {
        return balances[_pid][_sender];
    }

    /* ================= TXNS - OPERATOR ONLY ================= */

    /**
     * @param _pid pool id
     * @param _owner stake address
     * @param _amount stake amount
     */
    function deposit(
        uint256 _pid,
        address _owner,
        uint256 _amount
    ) public override checkPoolId(_pid) onlyOperator {
        pools[_pid].totalSupply = pools[_pid].totalSupply.add(_amount);
        balances[_pid][_owner] = balances[_pid][_owner].add(_amount);
        IERC20(tokenOf(_pid)).safeTransferFrom(
            _msgSender(),
            address(this),
            _amount
        );

        emit Deposit(_msgSender(), _owner, _pid, _amount);
    }

    function _withdraw(
        uint256 _pid,
        address _owner,
        uint256 _amount
    ) internal {
        pools[_pid].totalSupply = pools[_pid].totalSupply.sub(_amount);
        balances[_pid][_owner] = balances[_pid][_owner].sub(_amount);
        IERC20(tokenOf(_pid)).safeTransfer(_msgSender(), _amount);

        emit Withdraw(_msgSender(), _owner, _pid, _amount);
    }

    /**
     * @param _pid pool id
     * @param _owner stake address
     * @param _amount stake amount
     */
    function withdraw(
        uint256 _pid,
        address _owner,
        uint256 _amount
    ) public override checkPoolId(_pid) onlyOperator {
        _withdraw(_pid, _owner, _amount);
    }

    /**
     * @notice Anyone can withdraw its balance even if is not the operator
     * @param _pid pool id
     */
    function emergencyWithdraw(uint256 _pid) public override checkPoolId(_pid) {
        require(emergency, 'PoolStore: not in emergency');
        _withdraw(_pid, msg.sender, balanceOf(_pid, _msgSender()));
    }
}

