/**
 *Submitted for verification at Etherscan.io on 2021-03-18
*/

/**
 *Submitted for verification at Etherscan.io on 2020-09-25
*/

// SPDX-License-Identifier: BSD-3-Clause
pragma solidity ^0.6.0;





/*
 * @dev Provides information about the current execution context, including the
 * sender of the transaction and its data. While these are generally available
 * via msg.sender and msg.data, they should not be accessed in such a direct
 * manner, since when dealing with GSN meta-transactions the account sending and
 * paying for execution may not be the actual sender (as far as an application
 * is concerned).
 *
 * This contract is only required for intermediate, library-like contracts.
 */
abstract contract Context {
    function _msgSender() internal view virtual returns (address payable) {
        return msg.sender;
    }

    function _msgData() internal view virtual returns (bytes memory) {
        this; // silence state mutability warning without generating bytecode - see https://github.com/ethereum/solidity/issues/2691
        return msg.data;
    }
}





/**
 * @dev Interface of the ERC20 standard as defined in the EIP.
 */
interface IERC20 {
    /**
     * @dev Returns the amount of tokens in existence.
     */
    function totalSupply() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens owned by `account`.
     */
    function balanceOf(address account) external view returns (uint256);

    /**
     * @dev Moves `amount` tokens from the caller's account to `recipient`.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transfer(address recipient, uint256 amount) external returns (bool);

    /**
     * @dev Returns the remaining number of tokens that `spender` will be
     * allowed to spend on behalf of `owner` through {transferFrom}. This is
     * zero by default.
     *
     * This value changes when {approve} or {transferFrom} are called.
     */
    function allowance(address owner, address spender) external view returns (uint256);

    /**
     * @dev Sets `amount` as the allowance of `spender` over the caller's tokens.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * IMPORTANT: Beware that changing an allowance with this method brings the risk
     * that someone may use both the old and the new allowance by unfortunate
     * transaction ordering. One possible solution to mitigate this race
     * condition is to first reduce the spender's allowance to 0 and set the
     * desired value afterwards:
     * https://github.com/ethereum/EIPs/issues/20#issuecomment-263524729
     *
     * Emits an {Approval} event.
     */
    function approve(address spender, uint256 amount) external returns (bool);

    /**
     * @dev Moves `amount` tokens from `sender` to `recipient` using the
     * allowance mechanism. `amount` is then deducted from the caller's
     * allowance.
     *
     * Returns a boolean value indicating whether the operation succeeded.
     *
     * Emits a {Transfer} event.
     */
    function transferFrom(address sender, address recipient, uint256 amount) external returns (bool);

    /**
     * @dev Emitted when `value` tokens are moved from one account (`from`) to
     * another (`to`).
     *
     * Note that `value` may be zero.
     */
    event Transfer(address indexed from, address indexed to, uint256 value);

    /**
     * @dev Emitted when the allowance of a `spender` for an `owner` is set by
     * a call to {approve}. `value` is the new allowance.
     */
    event Approval(address indexed owner, address indexed spender, uint256 value);
}





/**
 * @dev Wrappers over Solidity's arithmetic operations with added overflow
 * checks.
 *
 * Arithmetic operations in Solidity wrap on overflow. This can easily result
 * in bugs, because programmers usually assume that an overflow raises an
 * error, which is the standard behavior in high level programming languages.
 * `SafeMath` restores this intuition by reverting the transaction when an
 * operation overflows.
 *
 * Using this library instead of the unchecked operations eliminates an entire
 * class of bugs, so it's recommended to use it always.
 */
library SafeMath {
    /**
     * @dev Returns the addition of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `+` operator.
     *
     * Requirements:
     *
     * - Addition cannot overflow.
     */
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return sub(a, b, "SafeMath: subtraction overflow");
    }

    /**
     * @dev Returns the subtraction of two unsigned integers, reverting with custom message on
     * overflow (when the result is negative).
     *
     * Counterpart to Solidity's `-` operator.
     *
     * Requirements:
     *
     * - Subtraction cannot overflow.
     */
    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        uint256 c = a - b;

        return c;
    }

    /**
     * @dev Returns the multiplication of two unsigned integers, reverting on
     * overflow.
     *
     * Counterpart to Solidity's `*` operator.
     *
     * Requirements:
     *
     * - Multiplication cannot overflow.
     */
    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        // Gas optimization: this is cheaper than requiring 'a' not being zero, but the
        // benefit is lost if 'b' is also tested.
        // See: https://github.com/OpenZeppelin/openzeppelin-contracts/pull/522
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");

        return c;
    }

    /**
     * @dev Returns the integer division of two unsigned integers. Reverts on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b) internal pure returns (uint256) {
        return div(a, b, "SafeMath: division by zero");
    }

    /**
     * @dev Returns the integer division of two unsigned integers. Reverts with custom message on
     * division by zero. The result is rounded towards zero.
     *
     * Counterpart to Solidity's `/` operator. Note: this function uses a
     * `revert` opcode (which leaves remaining gas untouched) while Solidity
     * uses an invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b > 0, errorMessage);
        uint256 c = a / b;
        // assert(a == b * c + a % b); // There is no case in which this doesn't hold

        return c;
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * Reverts when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b) internal pure returns (uint256) {
        return mod(a, b, "SafeMath: modulo by zero");
    }

    /**
     * @dev Returns the remainder of dividing two unsigned integers. (unsigned integer modulo),
     * Reverts with custom message when dividing by zero.
     *
     * Counterpart to Solidity's `%` operator. This function uses a `revert`
     * opcode (which leaves remaining gas untouched) while Solidity uses an
     * invalid opcode to revert (consuming all remaining gas).
     *
     * Requirements:
     *
     * - The divisor cannot be zero.
     */
    function mod(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b != 0, errorMessage);
        return a % b;
    }
}





/**
 * @dev Collection of functions related to the address type
 */
library Address {
    /**
     * @dev Returns true if `account` is a contract.
     *
     * [IMPORTANT]
     * ====
     * It is unsafe to assume that an address for which this function returns
     * false is an externally-owned account (EOA) and not a contract.
     *
     * Among others, `isContract` will return false for the following
     * types of addresses:
     *
     *  - an externally-owned account
     *  - a contract in construction
     *  - an address where a contract will be created
     *  - an address where a contract lived, but was destroyed
     * ====
     */
    function isContract(address account) internal view returns (bool) {
        // According to EIP-1052, 0x0 is the value returned for not-yet created accounts
        // and 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 is returned
        // for accounts without code, i.e. `keccak256('')`
        bytes32 codehash;
        bytes32 accountHash = 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470;
        // solhint-disable-next-line no-inline-assembly
        assembly { codehash := extcodehash(account) }
        return (codehash != accountHash && codehash != 0x0);
    }

    /**
     * @dev Replacement for Solidity's `transfer`: sends `amount` wei to
     * `recipient`, forwarding all available gas and reverting on errors.
     *
     * https://eips.ethereum.org/EIPS/eip-1884[EIP1884] increases the gas cost
     * of certain opcodes, possibly making contracts go over the 2300 gas limit
     * imposed by `transfer`, making them unable to receive funds via
     * `transfer`. {sendValue} removes this limitation.
     *
     * https://diligence.consensys.net/posts/2019/09/stop-using-soliditys-transfer-now/[Learn more].
     *
     * IMPORTANT: because control is transferred to `recipient`, care must be
     * taken to not create reentrancy vulnerabilities. Consider using
     * {ReentrancyGuard} or the
     * https://solidity.readthedocs.io/en/v0.5.11/security-considerations.html#use-the-checks-effects-interactions-pattern[checks-effects-interactions pattern].
     */
    function sendValue(address payable recipient, uint256 amount) internal {
        require(address(this).balance >= amount, "Address: insufficient balance");

        // solhint-disable-next-line avoid-low-level-calls, avoid-call-value
        (bool success, ) = recipient.call{ value: amount }("");
        require(success, "Address: unable to send value, recipient may have reverted");
    }

    /**
     * @dev Performs a Solidity function call using a low level `call`. A
     * plain`call` is an unsafe replacement for a function call: use this
     * function instead.
     *
     * If `target` reverts with a revert reason, it is bubbled up by this
     * function (like regular Solidity function calls).
     *
     * Returns the raw returned data. To convert to the expected return value,
     * use https://solidity.readthedocs.io/en/latest/units-and-global-variables.html?highlight=abi.decode#abi-encoding-and-decoding-functions[`abi.decode`].
     *
     * Requirements:
     *
     * - `target` must be a contract.
     * - calling `target` with `data` must not revert.
     *
     * _Available since v3.1._
     */
    function functionCall(address target, bytes memory data) internal returns (bytes memory) {
      return functionCall(target, data, "Address: low-level call failed");
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`], but with
     * `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCall(address target, bytes memory data, string memory errorMessage) internal returns (bytes memory) {
        return _functionCallWithValue(target, data, 0, errorMessage);
    }

    /**
     * @dev Same as {xref-Address-functionCall-address-bytes-}[`functionCall`],
     * but also transferring `value` wei to `target`.
     *
     * Requirements:
     *
     * - the calling contract must have an ETH balance of at least `value`.
     * - the called Solidity function must be `payable`.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(address target, bytes memory data, uint256 value) internal returns (bytes memory) {
        return functionCallWithValue(target, data, value, "Address: low-level call with value failed");
    }

    /**
     * @dev Same as {xref-Address-functionCallWithValue-address-bytes-uint256-}[`functionCallWithValue`], but
     * with `errorMessage` as a fallback revert reason when `target` reverts.
     *
     * _Available since v3.1._
     */
    function functionCallWithValue(address target, bytes memory data, uint256 value, string memory errorMessage) internal returns (bytes memory) {
        require(address(this).balance >= value, "Address: insufficient balance for call");
        return _functionCallWithValue(target, data, value, errorMessage);
    }

    function _functionCallWithValue(address target, bytes memory data, uint256 weiValue, string memory errorMessage) private returns (bytes memory) {
        require(isContract(target), "Address: call to non-contract");

        // solhint-disable-next-line avoid-low-level-calls
        (bool success, bytes memory returndata) = target.call{ value: weiValue }(data);
        if (success) {
            return returndata;
        } else {
            // Look for revert reason and bubble it up if present
            if (returndata.length > 0) {
                // The easiest way to bubble the revert reason is using memory via assembly

                // solhint-disable-next-line no-inline-assembly
                assembly {
                    let returndata_size := mload(returndata)
                    revert(add(32, returndata), returndata_size)
                }
            } else {
                revert(errorMessage);
            }
        }
    }
}


/**
 * @dev Implementation of the {IERC20} interface.
 *
 * This implementation is agnostic to the way tokens are created. This means
 * that a supply mechanism has to be added in a derived contract using {_mint}.
 * For a generic mechanism see {ERC20PresetMinterPauser}.
 *
 * TIP: For a detailed writeup see our guide
 * https://forum.zeppelin.solutions/t/how-to-implement-erc20-supply-mechanisms/226[How
 * to implement supply mechanisms].
 *
 * We have followed general OpenZeppelin guidelines: functions revert instead
 * of returning `false` on failure. This behavior is nonetheless conventional
 * and does not conflict with the expectations of ERC20 applications.
 *
 * Additionally, an {Approval} event is emitted on calls to {transferFrom}.
 * This allows applications to reconstruct the allowance for all accounts just
 * by listening to said events. Other implementations of the EIP may not emit
 * these events, as it isn't required by the specification.
 *
 * Finally, the non-standard {decreaseAllowance} and {increaseAllowance}
 * functions have been added to mitigate the well-known issues around setting
 * allowances. See {IERC20-approve}.
 */
contract ERC20 is Context, IERC20 {
    using SafeMath for uint256;
    using Address for address;

    mapping (address => uint256) private _balances;

    mapping (address => mapping (address => uint256)) private _allowances;

    uint256 private _totalSupply;

    string private _name;
    string private _symbol;
    uint8 private _decimals;

    /**
     * @dev Sets the values for {name} and {symbol}, initializes {decimals} with
     * a default value of 18.
     *
     * To select a different value for {decimals}, use {_setupDecimals}.
     *
     * All three of these values are immutable: they can only be set once during
     * construction.
     */
    constructor (string memory name, string memory symbol) public {
        _name = name;
        _symbol = symbol;
        _decimals = 18;
    }

    /**
     * @dev Returns the name of the token.
     */
    function name() public view returns (string memory) {
        return _name;
    }

    /**
     * @dev Returns the symbol of the token, usually a shorter version of the
     * name.
     */
    function symbol() public view returns (string memory) {
        return _symbol;
    }

    /**
     * @dev Returns the number of decimals used to get its user representation.
     * For example, if `decimals` equals `2`, a balance of `505` tokens should
     * be displayed to a user as `5,05` (`505 / 10 ** 2`).
     *
     * Tokens usually opt for a value of 18, imitating the relationship between
     * Ether and Wei. This is the value {ERC20} uses, unless {_setupDecimals} is
     * called.
     *
     * NOTE: This information is only used for _display_ purposes: it in
     * no way affects any of the arithmetic of the contract, including
     * {IERC20-balanceOf} and {IERC20-transfer}.
     */
    function decimals() public view returns (uint8) {
        return _decimals;
    }

    /**
     * @dev See {IERC20-totalSupply}.
     */
    function totalSupply() public view override returns (uint256) {
        return _totalSupply;
    }

    /**
     * @dev See {IERC20-balanceOf}.
     */
    function balanceOf(address account) public view override returns (uint256) {
        return _balances[account];
    }

    /**
     * @dev See {IERC20-transfer}.
     *
     * Requirements:
     *
     * - `recipient` cannot be the zero address.
     * - the caller must have a balance of at least `amount`.
     */
    function transfer(address recipient, uint256 amount) public virtual override returns (bool) {
        _transfer(_msgSender(), recipient, amount);
        return true;
    }

    /**
     * @dev See {IERC20-allowance}.
     */
    function allowance(address owner, address spender) public view virtual override returns (uint256) {
        return _allowances[owner][spender];
    }

    /**
     * @dev See {IERC20-approve}.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function approve(address spender, uint256 amount) public virtual override returns (bool) {
        _approve(_msgSender(), spender, amount);
        return true;
    }

    /**
     * @dev See {IERC20-transferFrom}.
     *
     * Emits an {Approval} event indicating the updated allowance. This is not
     * required by the EIP. See the note at the beginning of {ERC20};
     *
     * Requirements:
     * - `sender` and `recipient` cannot be the zero address.
     * - `sender` must have a balance of at least `amount`.
     * - the caller must have allowance for ``sender``'s tokens of at least
     * `amount`.
     */
    function transferFrom(address sender, address recipient, uint256 amount) public virtual override returns (bool) {
        _transfer(sender, recipient, amount);
        _approve(sender, _msgSender(), _allowances[sender][_msgSender()].sub(amount, "ERC20: transfer amount exceeds allowance"));
        return true;
    }

    /**
     * @dev Atomically increases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     */
    function increaseAllowance(address spender, uint256 addedValue) public virtual returns (bool) {
        _approve(_msgSender(), spender, _allowances[_msgSender()][spender].add(addedValue));
        return true;
    }

    /**
     * @dev Atomically decreases the allowance granted to `spender` by the caller.
     *
     * This is an alternative to {approve} that can be used as a mitigation for
     * problems described in {IERC20-approve}.
     *
     * Emits an {Approval} event indicating the updated allowance.
     *
     * Requirements:
     *
     * - `spender` cannot be the zero address.
     * - `spender` must have allowance for the caller of at least
     * `subtractedValue`.
     */
    function decreaseAllowance(address spender, uint256 subtractedValue) public virtual returns (bool) {
        _approve(_msgSender(), spender, _allowances[_msgSender()][spender].sub(subtractedValue, "ERC20: decreased allowance below zero"));
        return true;
    }

    /**
     * @dev Moves tokens `amount` from `sender` to `recipient`.
     *
     * This is internal function is equivalent to {transfer}, and can be used to
     * e.g. implement automatic token fees, slashing mechanisms, etc.
     *
     * Emits a {Transfer} event.
     *
     * Requirements:
     *
     * - `sender` cannot be the zero address.
     * - `recipient` cannot be the zero address.
     * - `sender` must have a balance of at least `amount`.
     */
    function _transfer(address sender, address recipient, uint256 amount) internal virtual {
        require(sender != address(0), "ERC20: transfer from the zero address");
        require(recipient != address(0), "ERC20: transfer to the zero address");

        _beforeTokenTransfer(sender, recipient, amount);

        _balances[sender] = _balances[sender].sub(amount, "ERC20: transfer amount exceeds balance");
        _balances[recipient] = _balances[recipient].add(amount);
        emit Transfer(sender, recipient, amount);
    }

    /** @dev Creates `amount` tokens and assigns them to `account`, increasing
     * the total supply.
     *
     * Emits a {Transfer} event with `from` set to the zero address.
     *
     * Requirements
     *
     * - `to` cannot be the zero address.
     */
    function _mint(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: mint to the zero address");

        _beforeTokenTransfer(address(0), account, amount);

        _totalSupply = _totalSupply.add(amount);
        _balances[account] = _balances[account].add(amount);
        emit Transfer(address(0), account, amount);
    }

    /**
     * @dev Destroys `amount` tokens from `account`, reducing the
     * total supply.
     *
     * Emits a {Transfer} event with `to` set to the zero address.
     *
     * Requirements
     *
     * - `account` cannot be the zero address.
     * - `account` must have at least `amount` tokens.
     */
    function _burn(address account, uint256 amount) internal virtual {
        require(account != address(0), "ERC20: burn from the zero address");

        _beforeTokenTransfer(account, address(0), amount);

        _balances[account] = _balances[account].sub(amount, "ERC20: burn amount exceeds balance");
        _totalSupply = _totalSupply.sub(amount);
        emit Transfer(account, address(0), amount);
    }

    /**
     * @dev Sets `amount` as the allowance of `spender` over the `owner`s tokens.
     *
     * This is internal function is equivalent to `approve`, and can be used to
     * e.g. set automatic allowances for certain subsystems, etc.
     *
     * Emits an {Approval} event.
     *
     * Requirements:
     *
     * - `owner` cannot be the zero address.
     * - `spender` cannot be the zero address.
     */
    function _approve(address owner, address spender, uint256 amount) internal virtual {
        require(owner != address(0), "ERC20: approve from the zero address");
        require(spender != address(0), "ERC20: approve to the zero address");

        _allowances[owner][spender] = amount;
        emit Approval(owner, spender, amount);
    }

    /**
     * @dev Sets {decimals} to a value other than the default one of 18.
     *
     * WARNING: This function should only be called from the constructor. Most
     * applications that interact with token contracts will not expect
     * {decimals} to ever change, and may work incorrectly if it does.
     */
    function _setupDecimals(uint8 decimals_) internal {
        _decimals = decimals_;
    }

    /**
     * @dev Hook that is called before any transfer of tokens. This includes
     * minting and burning.
     *
     * Calling conditions:
     *
     * - when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
     * will be to transferred to `to`.
     * - when `from` is zero, `amount` tokens will be minted for `to`.
     * - when `to` is zero, `amount` of ``from``'s tokens will be burned.
     * - `from` and `to` are never both zero.
     *
     * To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks].
     */
    function _beforeTokenTransfer(address from, address to, uint256 amount) internal virtual { }
}

/**
 * @dev Elliptic Curve Digital Signature Algorithm (ECDSA) operations.
 *
 * These functions can be used to verify that a message was signed by the holder
 * of the private keys of a given address.
 */
library ECDSA {
    /**
     * @dev Returns the address that signed a hashed message (`hash`) with
     * `signature`. This address can then be used for verification purposes.
     *
     * The `ecrecover` EVM opcode allows for malleable (non-unique) signatures:
     * this function rejects them by requiring the `s` value to be in the lower
     * half order, and the `v` value to be either 27 or 28.
     *
     * IMPORTANT: `hash` _must_ be the result of a hash operation for the
     * verification to be secure: it is possible to craft signatures that
     * recover to arbitrary addresses for non-hashed data. A safe way to ensure
     * this is by receiving a hash of the original message (which may otherwise
     * be too long), and then calling {toEthSignedMessageHash} on it.
     */
    function recover(bytes32 hash, bytes memory signature) internal pure returns (address) {
        // Check the signature length
        if (signature.length != 65) {
            revert("ECDSA: invalid signature length");
        }

        // Divide the signature in r, s and v variables
        bytes32 r;
        bytes32 s;
        uint8 v;

        // ecrecover takes the signature parameters, and the only way to get them
        // currently is to use assembly.
        // solhint-disable-next-line no-inline-assembly
        assembly {
            r := mload(add(signature, 0x20))
            s := mload(add(signature, 0x40))
            v := byte(0, mload(add(signature, 0x60)))
        }

        // EIP-2 still allows signature malleability for ecrecover(). Remove this possibility and make the signature
        // unique. Appendix F in the Ethereum Yellow paper (https://ethereum.github.io/yellowpaper/paper.pdf), defines
        // the valid range for s in (281): 0 < s < secp256k1n ÷ 2 + 1, and for v in (282): v ∈ {27, 28}. Most
        // signatures from current libraries generate a unique signature with an s-value in the lower half order.
        //
        // If your library generates malleable signatures, such as s-values in the upper range, calculate a new s-value
        // with 0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364141 - s1 and flip v from 27 to 28 or
        // vice versa. If your library also generates signatures with 0/1 for v instead 27/28, add 27 to v to accept
        // these malleable signatures as well.
        if (uint256(s) > 0x7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5D576E7357A4501DDFE92F46681B20A0) {
            revert("ECDSA: invalid signature 's' value");
        }

        if (v != 27 && v != 28) {
            revert("ECDSA: invalid signature 'v' value");
        }

        // If the signature is valid (and not malleable), return the signer address
        address signer = ecrecover(hash, v, r, s);
        require(signer != address(0), "ECDSA: invalid signature");

        return signer;
    }

    /**
     * @dev Returns an Ethereum Signed Message, created from a `hash`. This
     * replicates the behavior of the
     * https://github.com/ethereum/wiki/wiki/JSON-RPC#eth_sign[`eth_sign`]
     * JSON-RPC method.
     *
     * See {recover}.
     */
    function toEthSignedMessageHash(bytes32 hash) internal pure returns (bytes32) {
        // 32 is the length in bytes of hash,
        // enforced by the type signature above
        return keccak256(abi.encodePacked("\x19Ethereum Signed Message:\n32", hash));
    }
}

/**
 * @dev Standard math utilities missing in the Solidity language.
 */
library Math {
    /**
     * @dev Returns the largest of two numbers.
     */
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a >= b ? a : b;
    }

    /**
     * @dev Returns the smallest of two numbers.
     */
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? a : b;
    }

    /**
     * @dev Returns the average of two numbers. The result is rounded towards
     * zero.
     */
    function average(uint256 a, uint256 b) internal pure returns (uint256) {
        // (a + b) / 2 can overflow, so we distribute
        return (a / 2) + (b / 2) + ((a % 2 + b % 2) / 2);
    }
}


/**
@title Chequebook contract without waivers
@author The Swarm Authors
@notice The chequebook contract allows the issuer of the chequebook to send cheques to an unlimited amount of counterparties.
Furthermore, solvency can be guaranteed via hardDeposits
@dev as an issuer, no cheques should be send if the cumulative worth of a cheques send is above the cumulative worth of all deposits
as a beneficiary, we should always take into account the possibility that a cheque bounces (when no hardDeposits are assigned)
*/
contract ERC20SimpleSwap {
  using SafeMath for uint;

  event ChequeCashed(
    address indexed beneficiary,
    address indexed recipient,
    address indexed caller,
    uint totalPayout,
    uint cumulativePayout,
    uint callerPayout
  );
  event ChequeBounced();
  event HardDepositAmountChanged(address indexed beneficiary, uint amount);
  event HardDepositDecreasePrepared(address indexed beneficiary, uint decreaseAmount);
  event HardDepositTimeoutChanged(address indexed beneficiary, uint timeout);
  event Withdraw(uint amount);

  uint public defaultHardDepositTimeout;
  /* structure to keep track of the hard deposits (on-chain guarantee of solvency) per beneficiary*/
  struct HardDeposit {
    uint amount; /* hard deposit amount allocated */
    uint decreaseAmount; /* decreaseAmount substranced from amount when decrease is requested */
    uint timeout; /* issuer has to wait timeout seconds to decrease hardDeposit, 0 implies applying defaultHardDepositTimeout */
    uint canBeDecreasedAt; /* point in time after which harddeposit can be decreased*/
  }

  struct EIP712Domain {
    string name;
    string version;
    uint256 chainId;
  }

  bytes32 public constant EIP712DOMAIN_TYPEHASH = keccak256(
    "EIP712Domain(string name,string version,uint256 chainId)"
  );
  bytes32 public constant CHEQUE_TYPEHASH = keccak256(
    "Cheque(address chequebook,address beneficiary,uint256 cumulativePayout)"
  );
  bytes32 public constant CASHOUT_TYPEHASH = keccak256(
    "Cashout(address chequebook,address sender,uint256 requestPayout,address recipient,uint256 callerPayout)"
  );
  bytes32 public constant CUSTOMDECREASETIMEOUT_TYPEHASH = keccak256(
    "CustomDecreaseTimeout(address chequebook,address beneficiary,uint256 decreaseTimeout)"
  );

  // the EIP712 domain this contract uses
  function domain() internal pure returns (EIP712Domain memory) {
    uint256 chainId;
    assembly {
      chainId := chainid()
    }
    return EIP712Domain({
      name: "Chequebook",
      version: "1.0",
      chainId: chainId
    });
  }

  // compute the EIP712 domain separator. this cannot be constant because it depends on chainId
  function domainSeparator(EIP712Domain memory eip712Domain) internal pure returns (bytes32) {
    return keccak256(abi.encode(
        EIP712DOMAIN_TYPEHASH,
        keccak256(bytes(eip712Domain.name)),
        keccak256(bytes(eip712Domain.version)),
        eip712Domain.chainId
    ));
  }

  // recover a signature with the EIP712 signing scheme
  function recoverEIP712(bytes32 hash, bytes memory sig) internal pure returns (address) {
    bytes32 digest = keccak256(abi.encodePacked(
        "\x19\x01",
        domainSeparator(domain()),
        hash
    ));
    return ECDSA.recover(digest, sig);
  }

  /* The token against which this chequebook writes cheques */
  ERC20 public token;
  /* associates every beneficiary with how much has been paid out to them */
  mapping (address => uint) public paidOut;
  /* total amount paid out */
  uint public totalPaidOut;
  /* associates every beneficiary with their HardDeposit */
  mapping (address => HardDeposit) public hardDeposits;
  /* sum of all hard deposits */
  uint public totalHardDeposit;
  /* issuer of the contract, set at construction */
  address public issuer;
  /* indicates wether a cheque bounced in the past */
  bool public bounced;

  /**
  @notice sets the issuer, defaultHardDepositTimeout and receives an initial deposit
  @param _issuer the issuer of cheques from this chequebook (needed as an argument for "Setting up a chequebook as a payment").
  _issuer must be an Externally Owned Account, or it must support calling the function cashCheque
  @param _defaultHardDepositTimeout duration in seconds which by default will be used to reduce hardDeposit allocations
  */
  constructor(address _issuer, address _token, uint _defaultHardDepositTimeout) public {
    issuer = _issuer;
    token = ERC20(_token);
    defaultHardDepositTimeout = _defaultHardDepositTimeout;
  }

  /// @return the balance of the chequebook
  function balance() public view returns(uint) {
    return token.balanceOf(address(this));
  }
  /// @return the part of the balance that is not covered by hard deposits
  function liquidBalance() public view returns(uint) {
    return balance().sub(totalHardDeposit);
  }

  /// @return the part of the balance available for a specific beneficiary
  function liquidBalanceFor(address beneficiary) public view returns(uint) {
    return liquidBalance().add(hardDeposits[beneficiary].amount);
  }
  /**
  @dev internal function responsible for checking the issuerSignature, updating hardDeposit balances and doing transfers.
  Called by cashCheque and cashChequeBeneficary
  @param beneficiary the beneficiary to which cheques were assigned. Beneficiary must be an Externally Owned Account
  @param recipient receives the differences between cumulativePayment and what was already paid-out to the beneficiary minus callerPayout
  @param cumulativePayout cumulative amount of cheques assigned to beneficiary
  @param issuerSig if issuer is not the sender, issuer must have given explicit approval on the cumulativePayout to the beneficiary
  */
  function _cashChequeInternal(
    address beneficiary,
    address recipient,
    uint cumulativePayout,
    uint callerPayout,
    bytes memory issuerSig
  ) internal {
    /* The issuer must have given explicit approval to the cumulativePayout, either by being the caller or by signature*/
    if (msg.sender != issuer) {
      require(issuer == recoverEIP712(chequeHash(address(this), beneficiary, cumulativePayout), issuerSig),
      "SimpleSwap: invalid issuer signature");
    }
    /* the requestPayout is the amount requested for payment processing */
    uint requestPayout = cumulativePayout.sub(paidOut[beneficiary]);
    /* calculates acutal payout */
    uint totalPayout = Math.min(requestPayout, liquidBalanceFor(beneficiary));
    /* calculates hard-deposit usage */
    uint hardDepositUsage = Math.min(totalPayout, hardDeposits[beneficiary].amount);
    require(totalPayout >= callerPayout, "SimpleSwap: cannot pay caller");
    /* if there are some of the hard deposit used, update hardDeposits*/
    if (hardDepositUsage != 0) {
      hardDeposits[beneficiary].amount = hardDeposits[beneficiary].amount.sub(hardDepositUsage);

      totalHardDeposit = totalHardDeposit.sub(hardDepositUsage);
    }
    /* increase the stored paidOut amount to avoid double payout */
    paidOut[beneficiary] = paidOut[beneficiary].add(totalPayout);
    totalPaidOut = totalPaidOut.add(totalPayout);
    /* do the actual payments */

    require(token.transfer(recipient, totalPayout.sub(callerPayout)), "SimpleSwap: SimpleSwap: transfer failed");
    /* do a transfer to the caller if specified*/
    if (callerPayout != 0) {
      require(token.transfer(msg.sender, callerPayout), "SimpleSwap: SimpleSwap: transfer failed");
    }
    emit ChequeCashed(beneficiary, recipient, msg.sender, totalPayout, cumulativePayout, callerPayout);
    /* let the world know that the issuer has over-promised on outstanding cheques */
    if (requestPayout != totalPayout) {
      bounced = true;
      emit ChequeBounced();
    }
  }
  /**
  @notice cash a cheque of the beneficiary by a non-beneficiary and reward the sender for doing so with callerPayout
  @dev a beneficiary must be able to generate signatures (be an Externally Owned Account) to make use of this feature
  @param beneficiary the beneficiary to which cheques were assigned. Beneficiary must be an Externally Owned Account
  @param recipient receives the differences between cumulativePayment and what was already paid-out to the beneficiary minus callerPayout
  @param cumulativePayout cumulative amount of cheques assigned to beneficiary
  @param beneficiarySig beneficiary must have given explicit approval for cashing out the cumulativePayout by the sender and sending the callerPayout
  @param issuerSig if issuer is not the sender, issuer must have given explicit approval on the cumulativePayout to the beneficiary
  @param callerPayout when beneficiary does not have ether yet, he can incentivize other people to cash cheques with help of callerPayout
  @param issuerSig if issuer is not the sender, issuer must have given explicit approval on the cumulativePayout to the beneficiary
  */
  function cashCheque(
    address beneficiary,
    address recipient,
    uint cumulativePayout,
    bytes memory beneficiarySig,
    uint256 callerPayout,
    bytes memory issuerSig
  ) public {
    require(
      beneficiary == recoverEIP712(
        cashOutHash(
          address(this),
          msg.sender,
          cumulativePayout,
          recipient,
          callerPayout
        ), beneficiarySig
      ), "SimpleSwap: invalid beneficiary signature");
    _cashChequeInternal(beneficiary, recipient, cumulativePayout, callerPayout, issuerSig);
  }

  /**
  @notice cash a cheque as beneficiary
  @param recipient receives the differences between cumulativePayment and what was already paid-out to the beneficiary minus callerPayout
  @param cumulativePayout amount requested to pay out
  @param issuerSig issuer must have given explicit approval on the cumulativePayout to the beneficiary
  */
  function cashChequeBeneficiary(address recipient, uint cumulativePayout, bytes memory issuerSig) public {
    _cashChequeInternal(msg.sender, recipient, cumulativePayout, 0, issuerSig);
  }

  /**
  @notice prepare to decrease the hard deposit
  @dev decreasing hardDeposits must be done in two steps to allow beneficiaries to cash any uncashed cheques (and make use of the assgined hard-deposits)
  @param beneficiary beneficiary whose hard deposit should be decreased
  @param decreaseAmount amount that the deposit is supposed to be decreased by
  */
  function prepareDecreaseHardDeposit(address beneficiary, uint decreaseAmount) public {
    require(msg.sender == issuer, "SimpleSwap: not issuer");
    HardDeposit storage hardDeposit = hardDeposits[beneficiary];
    /* cannot decrease it by more than the deposit */
    require(decreaseAmount <= hardDeposit.amount, "SimpleSwap: hard deposit not sufficient");
    // if hardDeposit.timeout was never set, apply defaultHardDepositTimeout
    uint timeout = hardDeposit.timeout == 0 ? defaultHardDepositTimeout : hardDeposit.timeout;
    hardDeposit.canBeDecreasedAt = now + timeout;
    hardDeposit.decreaseAmount = decreaseAmount;
    emit HardDepositDecreasePrepared(beneficiary, decreaseAmount);
  }

  /**
  @notice decrease the hard deposit after waiting the necesary amount of time since prepareDecreaseHardDeposit was called
  @param beneficiary beneficiary whose hard deposit should be decreased
  */
  function decreaseHardDeposit(address beneficiary) public {
    HardDeposit storage hardDeposit = hardDeposits[beneficiary];
    require(now >= hardDeposit.canBeDecreasedAt && hardDeposit.canBeDecreasedAt != 0, "SimpleSwap: deposit not yet timed out");
    /* this throws if decreaseAmount > amount */
    //TODO: if there is a cash-out in between prepareDecreaseHardDeposit and decreaseHardDeposit, decreaseHardDeposit will throw and reducing hard-deposits is impossible.
    hardDeposit.amount = hardDeposit.amount.sub(hardDeposit.decreaseAmount);
    /* reset the canBeDecreasedAt to avoid a double decrease */
    hardDeposit.canBeDecreasedAt = 0;
    /* keep totalDeposit in sync */
    totalHardDeposit = totalHardDeposit.sub(hardDeposit.decreaseAmount);
    emit HardDepositAmountChanged(beneficiary, hardDeposit.amount);
  }

  /**
  @notice increase the hard deposit
  @param beneficiary beneficiary whose hard deposit should be decreased
  @param amount the new hard deposit
  */
  function increaseHardDeposit(address beneficiary, uint amount) public {
    require(msg.sender == issuer, "SimpleSwap: not issuer");
    /* ensure hard deposits don't exceed the global balance */
    require(totalHardDeposit.add(amount) <= balance(), "SimpleSwap: hard deposit cannot be more than balance");

    HardDeposit storage hardDeposit = hardDeposits[beneficiary];
    hardDeposit.amount = hardDeposit.amount.add(amount);
    // we don't explicitely set hardDepositTimout, as zero means using defaultHardDepositTimeout
    totalHardDeposit = totalHardDeposit.add(amount);
    /* disable any pending decrease */
    hardDeposit.canBeDecreasedAt = 0;
    emit HardDepositAmountChanged(beneficiary, hardDeposit.amount);
  }

  /**
  @notice allows for setting a custom hardDepositDecreaseTimeout per beneficiary
  @dev this is required when solvency must be guaranteed for a period longer than the defaultHardDepositDecreaseTimeout
  @param beneficiary beneficiary whose hard deposit decreaseTimeout must be changed
  @param hardDepositTimeout new hardDeposit.timeout for beneficiary
  @param beneficiarySig beneficiary must give explicit approval by giving his signature on the new decreaseTimeout
  */
  function setCustomHardDepositTimeout(
    address beneficiary,
    uint hardDepositTimeout,
    bytes memory beneficiarySig
  ) public {
    require(msg.sender == issuer, "SimpleSwap: not issuer");
    require(
      beneficiary == recoverEIP712(customDecreaseTimeoutHash(address(this), beneficiary, hardDepositTimeout), beneficiarySig),
      "SimpleSwap: invalid beneficiary signature"
    );
    hardDeposits[beneficiary].timeout = hardDepositTimeout;
    emit HardDepositTimeoutChanged(beneficiary, hardDepositTimeout);
  }

  /// @notice withdraw ether
  /// @param amount amount to withdraw
  // solhint-disable-next-line no-simple-event-func-name
  function withdraw(uint amount) public {
    /* only issuer can do this */
    require(msg.sender == issuer, "SimpleSwap: not issuer");
    /* ensure we don't take anything from the hard deposit */
    require(amount <= liquidBalance(), "SimpleSwap: liquidBalance not sufficient");
    require(token.transfer(issuer, amount), "SimpleSwap: SimpleSwap: transfer failed");
  }

  function chequeHash(address chequebook, address beneficiary, uint cumulativePayout)
  internal pure returns (bytes32) {
    return keccak256(abi.encode(
      CHEQUE_TYPEHASH,
      chequebook,
      beneficiary,
      cumulativePayout
    ));
  }  

  function cashOutHash(address chequebook, address sender, uint requestPayout, address recipient, uint callerPayout)
  internal pure returns (bytes32) {
    return keccak256(abi.encode(
      CASHOUT_TYPEHASH,
      chequebook,
      sender,
      requestPayout,
      recipient,
      callerPayout
    ));
  }

  function customDecreaseTimeoutHash(address chequebook, address beneficiary, uint decreaseTimeout)
  internal pure returns (bytes32) {
    return keccak256(abi.encode(
      CUSTOMDECREASETIMEOUT_TYPEHASH,
      chequebook,
      beneficiary,
      decreaseTimeout
    ));
  }
}




/**
@title Factory contract for SimpleSwap
@author The Swarm Authors
@notice This contract deploys SimpleSwap contracts
*/
contract SimpleSwapFactory {

  /* event fired on every new SimpleSwap deployment */
  event SimpleSwapDeployed(address contractAddress);

  /* mapping to keep track of which contracts were deployed by this factory */
  mapping (address => bool) public deployedContracts;

  /* address of the ERC20-token, to be used by the to-be-deployed chequebooks */
  address public ERC20Address;

  constructor(address _ERC20Address) public {
    ERC20Address = _ERC20Address;
  }
  /**
  @notice deployes a new SimpleSwap contract
  @param issuer the issuer of cheques for the new chequebook
  @param defaultHardDepositTimeoutDuration duration in seconds which by default will be used to reduce hardDeposit allocations
  */
  function deploySimpleSwap(address issuer, uint defaultHardDepositTimeoutDuration)
  public returns (address) {
    address contractAddress = address(new ERC20SimpleSwap(issuer, ERC20Address, defaultHardDepositTimeoutDuration));
    deployedContracts[contractAddress] = true;
    emit SimpleSwapDeployed(contractAddress);
    return contractAddress;
  }
}