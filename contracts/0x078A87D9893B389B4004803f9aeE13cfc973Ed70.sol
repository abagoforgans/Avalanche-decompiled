contract main {




// =====================  Runtime code  =====================


#
#  - rescueERC20(address arg1, address arg2, uint256 arg3)
#  - _fallback()
#
const APPROVE_WITH_AUTHORIZATION_TYPEHASH = 0x808c10407a796f3ef2c7ea38c0638ea9d2b8a1c63e3ca9e1f56ce84ae59df73c

const PERMIT_TYPEHASH = 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9

const DECREASE_ALLOWANCE_WITH_AUTHORIZATION_TYPEHASH = 0xb70559e94cbda91958ebec07f9b65b3b490097c8d25c8dacd71105df1015b6d8

const TRANSFER_WITH_AUTHORIZATION_TYPEHASH = 0x7c7c6cdb67a18743f49ec6fa9b35f50d52ed05cbed4cc592e13b44501c1a2267

const INCREASE_ALLOWANCE_WITH_AUTHORIZATION_TYPEHASH = 0x424222bb050a1f7f14017232a5671f2680a2d3420f504bd565cf03035c53198a

const CANCEL_AUTHORIZATION_TYPEHASH = 0x158b0a9edf7a828aad02f63cd515c68ef2f50ba807396f6d12842833a1597429


address owner;
uint8 stor1; offset 160
address pauserAddress;
address blacklisterAddress;
mapping of uint8 stor3;
array of struct stor4;
array of struct stor5;
uint8 decimals;
array of struct stor7;
uint8 stor8; offset 160
address masterMinterAddress;
address communityWalletAddress;
address teamWalletAddress;
address sub_b6fa37bcAddress;
uint256 sub_844284d7;
uint256 teamPercent;
uint256 sub_0301310b;
address routerAddress;
address pairAddress;
uint8 isSwapEnabled; offset 160
uint8 stor17; offset 168
uint128 stor17; offset 160
address USDCAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of uint8 stor21;
mapping of uint256 minterAllowance;
address rescuerAddress;
uint256 DOMAIN_SEPARATOR;
mapping of uint8 authorizationState;
mapping of uint256 nonces;
uint8 stor27;

function sub_0301310b(?) {
    return sub_0301310b
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function isSwapEnabled() {
    return bool(isSwapEnabled)
}

function masterMinter() {
    return masterMinterAddress
}

function DOMAIN_SEPARATOR() {
    return DOMAIN_SEPARATOR
}

function rescuer() {
    return rescuerAddress
}

function teamWallet() {
    return teamWalletAddress
}

function paused() {
    return bool(stor1)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function nonces(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonces[address(arg1)]
}

function sub_844284d7(?) {
    return sub_844284d7
}

function USDC() {
    return USDCAddress
}

function minterAllowance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return minterAllowance[address(arg1)]
}

function owner() {
    return owner
}

function pauser() {
    return pauserAddress
}

function pair() {
    return pairAddress
}

function isMinter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor21[address(arg1)])
}

function sub_b6fa37bc(?) {
    return sub_b6fa37bcAddress
}

function blacklister() {
    return blacklisterAddress
}

function communityWallet() {
    return communityWalletAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function teamPercent() {
    return teamPercent
}

function authorizationState(address arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if authorizationState[address(arg1)][arg2] >= 3:
        revert with 0, 33
    return authorizationState[address(arg1)][arg2]
}

function router() {
    return routerAddress
}

function isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[address(arg1)])
}

function toggleSwap() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor17.field_160) = Mask(96, 0, not isSwapEnabled)
}

function pause() {
    if pauserAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Pausable: caller is not the pauser'
    stor1 = 1
    emit Pause()
}

function setUSDCAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    USDCAddress = arg1
}

function unpause() {
    if pauserAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Pausable: caller is not the pauser'
    stor1 = 0
    emit Unpause()
}

function setFeePercentage(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_844284d7 = arg1
    teamPercent = arg2
    sub_0301310b = arg3
}

function blacklist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if blacklisterAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blacklistable: caller is not the blacklister'
    stor3[address(arg1)] = 1
    emit Blacklisted(arg1);
}

function unBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if blacklisterAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blacklistable: caller is not the blacklister'
    stor3[address(arg1)] = 0
    emit UnBlacklisted(arg1);
}

function setWallets(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    communityWalletAddress = arg1
    teamWalletAddress = arg2
    sub_b6fa37bcAddress = arg3
}

function removeMinter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if masterMinterAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FiatToken: caller is not the masterMinter'
    stor21[address(arg1)] = 0
    minterAllowance[address(arg1)] = 0
    emit MinterRemoved(arg1);
    return 1
}

function updatePauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Pausable: new pauser is the zero address'
    pauserAddress = arg1
    emit PauserChanged(arg1);
}

function updateRescuer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Rescuable: new rescuer is the zero address'
    rescuerAddress = arg1
    emit RescuerChanged(arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updateMasterMinter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FiatToken: new masterMinter is the zero address'
    masterMinterAddress = arg1
    emit MasterMinterChanged(arg1);
}

function updateBlacklister(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blacklistable: new blacklister is the zero address'
    blacklisterAddress = arg1
    emit BlacklisterChanged(arg1);
}

function configureMinter(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor1:
        revert with 0, 'Pausable: paused'
    if masterMinterAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FiatToken: caller is not the masterMinter'
    stor21[address(arg1)] = 1
    minterAllowance[address(arg1)] = arg2
    emit MinterConfigured(arg2, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor1:
        revert with 0, 'Pausable: paused'
    if stor3[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blacklistable: account is blacklisted'
    if stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blacklistable: account is blacklisted'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor1:
        revert with 0, 'Pausable: paused'
    if not stor21[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FiatToken: caller is not a minter'
    if stor3[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blacklistable: account is blacklisted'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FiatToken: burn amount not greater than 0'
    if balanceOf[msg.sender] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FiatToken: burn amount exceeds balance'
    if totalSupply < arg1:
        revert with 0, 17
    totalSupply -= arg1
    if balanceOf[msg.sender] < arg1:
        revert with 0, 17
    balanceOf[msg.sender] -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor1:
        revert with 0, 'Pausable: paused'
    if stor3[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blacklistable: account is blacklisted'
    if stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blacklistable: account is blacklisted'
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0xfe45524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor1:
        revert with 0, 'Pausable: paused'
    if stor3[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blacklistable: account is blacklisted'
    if stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blacklistable: account is blacklisted'
    if allowance[address(msg.sender)][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    routerAddress = arg1
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args USDCAddress, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    pairAddress = ext_call.return_data[12 len 20]
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not routerAddress:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor15] = 10000000000000 * 10^18
    emit Approval(10000000000000 * 10^18, this.address, routerAddress);
}

function cancelAuthorization(address arg1, bytes32 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg3 == arg3
    if stor1:
        revert with 0, 'Pausable: paused'
    if authorizationState[address(arg1)][arg2] > 2:
        revert with 0, 33
    if authorizationState[address(arg1)][arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FiatTokenV2: authorization is used or canceled'
    if arg5 > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECRecover: invalid signature 's' value'
    if arg3 != 27:
        if arg3 != 28:
            revert with 0, 'ECRecover: invalid signature 'v' value'
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0x158b0a9edf7a828aad02f63cd515c68ef2f50ba807396f6d12842833a1597429, address(arg1), arg2)), arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECRecover: invalid signature'
    if address(signer) != arg1:
        revert with 0, 'FiatTokenV2: invalid signature'
    authorizationState[address(arg1)][arg2] = 2
    emit AuthorizationCanceled(arg1, arg2);
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor1:
        revert with 0, 'Pausable: paused'
    if not stor21[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FiatToken: caller is not a minter'
    if stor3[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blacklistable: account is blacklisted'
    if stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blacklistable: account is blacklisted'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FiatToken: mint to the zero address'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FiatToken: mint amount not greater than 0'
    if arg2 > minterAllowance[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FiatToken: mint amount exceeds minterAllowance'
    if totalSupply > !arg2:
        revert with 0, 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] += arg2
    if minterAllowance[msg.sender] < arg2:
        revert with 0, 17
    minterAllowance[msg.sender] -= arg2
    emit Mint(arg2, msg.sender, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg5 == arg5
    if stor1:
        revert with 0, 'Pausable: paused'
    if stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blacklistable: account is blacklisted'
    if stor3[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blacklistable: account is blacklisted'
    if arg4 < block.timestamp:
        revert with 0, 'FiatTokenV2: permit is expired'
    if nonces[address(arg1)] == -1:
        revert with 0, 17
    nonces[address(arg1)]++
    if arg7 > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECRecover: invalid signature 's' value'
    if arg5 != 27:
        if arg5 != 28:
            revert with 0, 'ECRecover: invalid signature 'v' value'
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECRecover: invalid signature'
    if address(signer) != arg1:
        revert with 0, 'FiatTokenV2: invalid signature'
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg2:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
}

function initializeV2(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if stor27:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FiatTokenV2: contract is already initialized'
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if not arg1.length:
            stor4.length = 0
            idx = 0
            while (uint255(stor4.length) * 0.5) + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor4.length = (2 * arg1.length) + 1
            s = 0
            idx = arg1 + 36
            while arg1 + arg1.length + 36 > idx:
                stor4[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while (uint255(stor4.length) * 0.5) + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if not arg1.length:
            stor4.length = 0
            idx = 0
            while stor4.length.field_1 + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor4.length = (2 * arg1.length) + 1
            s = 0
            idx = arg1 + 36
            while arg1 + arg1.length + 36 > idx:
                stor4[s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, arg1.length + 31) >> 5
            while stor4.length.field_1 + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
    DOMAIN_SEPARATOR = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(arg1[all]), sha3(50), chainid, this.address)
    stor27 = 1
}

function approveWithAuthorization(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, bytes32 arg6, uint8 arg7, bytes32 arg8, bytes32 arg9) {
    require calldata.size - 4 >= 288
    require arg1 == arg1
    require arg2 == arg2
    require arg7 == arg7
    if stor1:
        revert with 0, 'Pausable: paused'
    if stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blacklistable: account is blacklisted'
    if stor3[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blacklistable: account is blacklisted'
    if block.timestamp <= arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FiatTokenV2: authorization is not yet valid'
    if block.timestamp >= arg5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FiatTokenV2: authorization is expired'
    if authorizationState[address(arg1)][arg6] > 2:
        revert with 0, 33
    if authorizationState[address(arg1)][arg6]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FiatTokenV2: authorization is used or canceled'
    if arg9 > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECRecover: invalid signature 's' value'
    if arg7 != 27:
        if arg7 != 28:
            revert with 0, 'ECRecover: invalid signature 'v' value'
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0x808c10407a796f3ef2c7ea38c0638ea9d2b8a1c63e3ca9e1f56ce84ae59df73c, address(arg1), address(arg2), arg3, arg4, arg5, arg6)), arg7 << 248, arg8, arg9) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECRecover: invalid signature'
    if address(signer) != arg1:
        revert with 0, 'FiatTokenV2: invalid signature'
    authorizationState[address(arg1)][arg6] = 1
    emit AuthorizationUsed(arg1, arg6);
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg2:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
}

function increaseAllowanceWithAuthorization(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, bytes32 arg6, uint8 arg7, bytes32 arg8, bytes32 arg9) {
    require calldata.size - 4 >= 288
    require arg1 == arg1
    require arg2 == arg2
    require arg7 == arg7
    if stor1:
        revert with 0, 'Pausable: paused'
    if stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blacklistable: account is blacklisted'
    if stor3[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blacklistable: account is blacklisted'
    if block.timestamp <= arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FiatTokenV2: authorization is not yet valid'
    if block.timestamp >= arg5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FiatTokenV2: authorization is expired'
    if authorizationState[address(arg1)][arg6] > 2:
        revert with 0, 33
    if authorizationState[address(arg1)][arg6]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FiatTokenV2: authorization is used or canceled'
    if arg9 > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECRecover: invalid signature 's' value'
    if arg7 != 27:
        if arg7 != 28:
            revert with 0, 'ECRecover: invalid signature 'v' value'
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0x424222bb050a1f7f14017232a5671f2680a2d3420f504bd565cf03035c53198a, address(arg1), address(arg2), arg3, arg4, arg5, arg6)), arg7 << 248, arg8, arg9) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECRecover: invalid signature'
    if address(signer) != arg1:
        revert with 0, 'FiatTokenV2: invalid signature'
    authorizationState[address(arg1)][arg6] = 1
    emit AuthorizationUsed(arg1, arg6);
    if allowance[address(arg1)][address(arg2)] > !arg3:
        revert with 0, 17
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg2:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(arg2)] += arg3
    emit Approval((allowance[address(arg1)][address(arg2)] + arg3), arg1, arg2);
}

function decreaseAllowanceWithAuthorization(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, bytes32 arg6, uint8 arg7, bytes32 arg8, bytes32 arg9) {
    require calldata.size - 4 >= 288
    require arg1 == arg1
    require arg2 == arg2
    require arg7 == arg7
    if stor1:
        revert with 0, 'Pausable: paused'
    if stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blacklistable: account is blacklisted'
    if stor3[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blacklistable: account is blacklisted'
    if block.timestamp <= arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FiatTokenV2: authorization is not yet valid'
    if block.timestamp >= arg5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FiatTokenV2: authorization is expired'
    if authorizationState[address(arg1)][arg6] > 2:
        revert with 0, 33
    if authorizationState[address(arg1)][arg6]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FiatTokenV2: authorization is used or canceled'
    if arg9 > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECRecover: invalid signature 's' value'
    if arg7 != 27:
        if arg7 != 28:
            revert with 0, 'ECRecover: invalid signature 'v' value'
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0xb70559e94cbda91958ebec07f9b65b3b490097c8d25c8dacd71105df1015b6d8, address(arg1), address(arg2), arg3, arg4, arg5, arg6)), arg7 << 248, arg8, arg9) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECRecover: invalid signature'
    if address(signer) != arg1:
        revert with 0, 'FiatTokenV2: invalid signature'
    authorizationState[address(arg1)][arg6] = 1
    emit AuthorizationUsed(arg1, arg6);
    if arg3 > allowance[address(arg1)][address(arg2)]:
        revert with 0, 32, 37, 0xfe45524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, Mask(216, 0, arg8) >> 40, 0
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg2:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(arg2)] -= arg3
    emit Approval((allowance[address(arg1)][address(arg2)] - arg3), arg1, arg2);
}

function name() {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[(uint255(stor4.length) * 0.5) + ceil32(uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[stor4.length.field_1 + ceil32(stor4.length.field_1) + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function symbol() {
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor5.length):
            if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor5.length):
                if 31 < uint255(stor5.length) * 0.5:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor5.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 0, 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(uint255(stor5.length) * 0.5) + 192 len ceil32(uint255(stor5.length) * 0.5)] = mem[128 len ceil32(uint255(stor5.length) * 0.5)]
        if ceil32(uint255(stor5.length) * 0.5) > uint255(stor5.length) * 0.5:
            mem[(uint255(stor5.length) * 0.5) + ceil32(uint255(stor5.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)], mem[(2 * ceil32(uint255(stor5.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor5.length) * 0.5)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 0, 34
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor5.length):
            if 31 < uint255(stor5.length) * 0.5:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while (uint255(stor5.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[stor5.length.field_1 + ceil32(stor5.length.field_1) + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}

function currency() {
    if bool(stor7.length):
        if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor7.length):
            if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor7.length):
                if 31 < uint255(stor7.length) * 0.5:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor7.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length), data=mem[128 len ceil32(uint255(stor7.length) * 0.5)])
                mem[128] = 256 * stor7.length.field_8
        else:
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 0, 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length), data=mem[128 len ceil32(uint255(stor7.length) * 0.5)])
                mem[128] = 256 * stor7.length.field_8
        mem[ceil32(uint255(stor7.length) * 0.5) + 192 len ceil32(uint255(stor7.length) * 0.5)] = mem[128 len ceil32(uint255(stor7.length) * 0.5)]
        if ceil32(uint255(stor7.length) * 0.5) > uint255(stor7.length) * 0.5:
            mem[(uint255(stor7.length) * 0.5) + ceil32(uint255(stor7.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor7.length), data=mem[128 len ceil32(uint255(stor7.length) * 0.5)], mem[(2 * ceil32(uint255(stor7.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor7.length) * 0.5)]), 
    if bool(stor7.length) == stor7.length.field_1 < 32:
        revert with 0, 34
    if bool(stor7.length):
        if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor7.length):
            if 31 < uint255(stor7.length) * 0.5:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while (uint255(stor7.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    else:
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 0, 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
    if ceil32(stor7.length.field_1) > stor7.length.field_1:
        mem[stor7.length.field_1 + ceil32(stor7.length.field_1) + 192] = 0
    return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
}

function initialize(string arg1, string arg2, string arg3, uint8 arg4, address arg5, address arg6, address arg7, address arg8) {
    require calldata.size - 4 >= 256
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 98 < 97 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + 98 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 99 < 98 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 99 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == arg8
    if stor8:
        revert with 0, 'FiatToken: contract is already initialized'
    if not arg5:
        revert with 0, 'FiatToken: new masterMinter is the zero address'
    if not arg6:
        revert with 0, 'FiatToken: new pauser is the zero address'
    if not arg7:
        revert with 0, 'FiatToken: new blacklister is the zero address'
    if not arg8:
        revert with 0, 'FiatToken: new owner is the zero address'
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if arg1.length:
            stor4[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor4.length = 0
            idx = 0
            while (uint255(stor4.length) * 0.5) + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if arg1.length:
            stor4[].field_0 = Array(len=arg1.length, data=arg1[all])
        else:
            stor4.length = 0
            idx = 0
            while stor4.length.field_1 + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            stor5[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor5.length = 0
            idx = 0
            while (uint255(stor5.length) * 0.5) + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if arg2.length:
            stor5[].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            stor5.length = 0
            idx = 0
            while stor5.length.field_1 + 31 / 32 > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
    if bool(stor7.length):
        if bool(stor7.length) == uint255(stor7.length) * 0.5 < 32:
            revert with 0, 34
        if arg3.length:
            stor7[].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor7.length = 0
            idx = 0
            while (uint255(stor7.length) * 0.5) + 31 / 32 > idx:
                stor7[idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 0, 34
        if arg3.length:
            stor7[].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor7.length = 0
            idx = 0
            while stor7.length.field_1 + 31 / 32 > idx:
                stor7[idx].field_0 = 0
                idx = idx + 1
                continue 
    decimals = arg4
    masterMinterAddress = arg5
    pauserAddress = arg6
    blacklisterAddress = arg7
    owner = arg8
    stor8 = 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor1:
        revert with 0, 'Pausable: paused'
    if stor3[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blacklistable: account is blacklisted'
    if stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blacklistable: account is blacklisted'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 17
    balanceOf[address(msg.sender)] -= arg2
    if not isSwapEnabled:
        if arg2 < 0:
            revert with 0, 17
        if balanceOf[address(arg1)] > !arg2:
            revert with 0, 17
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if uint8(stor17.field_168):
            if arg2 < 0:
                revert with 0, 17
            if balanceOf[address(arg1)] > !arg2:
                revert with 0, 17
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if msg.sender == pairAddress:
                if arg2 < 0:
                    revert with 0, 17
                if balanceOf[address(arg1)] > !arg2:
                    revert with 0, 17
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if sub_844284d7 > !teamPercent:
                    revert with 0, 17
                if sub_844284d7 + teamPercent > !sub_0301310b:
                    revert with 0, 17
                if arg2 and sub_844284d7 + teamPercent + sub_0301310b > -1 / arg2:
                    revert with 0, 17
                if balanceOf[this.address] > !((sub_844284d7 * arg2) + (teamPercent * arg2) + (sub_0301310b * arg2) / 10000):
                    revert with 0, 17
                balanceOf[this.address] += (sub_844284d7 * arg2) + (teamPercent * arg2) + (sub_0301310b * arg2) / 10000
                if (sub_844284d7 * arg2) + (teamPercent * arg2) + (sub_0301310b * arg2) / 10000:
                    uint8(stor17.field_168) = 1
                    mem[128] = this.address
                    mem[160] = USDCAddress
                    if sub_844284d7 and (sub_844284d7 * arg2) + (teamPercent * arg2) + (sub_0301310b * arg2) / 10000 > -1 / sub_844284d7:
                        revert with 0, 17
                    mem[192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[196] = sub_844284d7 * (sub_844284d7 * arg2) + (teamPercent * arg2) + (sub_0301310b * arg2) / 10000 / 1000
                    idx = 0
                    s = 388
                    t = 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args sub_844284d7 * (sub_844284d7 * arg2) + (teamPercent * arg2) + (sub_0301310b * arg2) / 10000 / 1000, 0, 160, communityWalletAddress, block.timestamp, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if teamPercent and (sub_844284d7 * arg2) + (teamPercent * arg2) + (sub_0301310b * arg2) / 10000 > -1 / teamPercent:
                        revert with 0, 17
                    mem[192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[196] = teamPercent * (sub_844284d7 * arg2) + (teamPercent * arg2) + (sub_0301310b * arg2) / 10000 / 1000
                    idx = 0
                    s = 388
                    t = 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args teamPercent * (sub_844284d7 * arg2) + (teamPercent * arg2) + (sub_0301310b * arg2) / 10000 / 1000, 0, 160, teamWalletAddress, block.timestamp, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_0301310b and (sub_844284d7 * arg2) + (teamPercent * arg2) + (sub_0301310b * arg2) / 10000 > -1 / sub_0301310b:
                        revert with 0, 17
                    mem[192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[196] = sub_0301310b * (sub_844284d7 * arg2) + (teamPercent * arg2) + (sub_0301310b * arg2) / 10000 / 1000
                    idx = 0
                    s = 388
                    t = 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args sub_0301310b * (sub_844284d7 * arg2) + (teamPercent * arg2) + (sub_0301310b * arg2) / 10000 / 1000, 0, 160, sub_b6fa37bcAddress, block.timestamp, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    uint8(stor17.field_168) = 0
                if arg2 < (sub_844284d7 * arg2) + (teamPercent * arg2) + (sub_0301310b * arg2) / 10000:
                    revert with 0, 17
                if balanceOf[address(arg1)] > !(arg2 - ((sub_844284d7 * arg2) + (teamPercent * arg2) + (sub_0301310b * arg2) / 10000)):
                    revert with 0, 17
                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - ((sub_844284d7 * arg2) + (teamPercent * arg2) + (sub_0301310b * arg2) / 10000)
                emit Transfer((arg2 - ((sub_844284d7 * arg2) + (teamPercent * arg2) + (sub_0301310b * arg2) / 10000)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if stor1:
        revert with 0, 'Pausable: paused'
    if stor3[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blacklistable: account is blacklisted'
    if stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blacklistable: account is blacklisted'
    if stor3[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blacklistable: account is blacklisted'
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 17
    balanceOf[address(arg1)] -= arg3
    if not isSwapEnabled:
        if arg3 < 0:
            revert with 0, 17
        if balanceOf[address(arg2)] > !arg3:
            revert with 0, 17
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        if uint8(stor17.field_168):
            if arg3 < 0:
                revert with 0, 17
            if balanceOf[address(arg2)] > !arg3:
                revert with 0, 17
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if msg.sender == pairAddress:
                if arg3 < 0:
                    revert with 0, 17
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if sub_844284d7 > !teamPercent:
                    revert with 0, 17
                if sub_844284d7 + teamPercent > !sub_0301310b:
                    revert with 0, 17
                if arg3 and sub_844284d7 + teamPercent + sub_0301310b > -1 / arg3:
                    revert with 0, 17
                if balanceOf[this.address] > !((sub_844284d7 * arg3) + (teamPercent * arg3) + (sub_0301310b * arg3) / 10000):
                    revert with 0, 17
                balanceOf[this.address] += (sub_844284d7 * arg3) + (teamPercent * arg3) + (sub_0301310b * arg3) / 10000
                if (sub_844284d7 * arg3) + (teamPercent * arg3) + (sub_0301310b * arg3) / 10000:
                    uint8(stor17.field_168) = 1
                    mem[96] = 2
                    mem[64] = 192
                    mem[128] = this.address
                    mem[160] = USDCAddress
                    if sub_844284d7 and (sub_844284d7 * arg3) + (teamPercent * arg3) + (sub_0301310b * arg3) / 10000 > -1 / sub_844284d7:
                        revert with 0, 17
                    mem[192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[196] = sub_844284d7 * (sub_844284d7 * arg3) + (teamPercent * arg3) + (sub_0301310b * arg3) / 10000 / 1000
                    idx = 0
                    s = 388
                    t = 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args sub_844284d7 * (sub_844284d7 * arg3) + (teamPercent * arg3) + (sub_0301310b * arg3) / 10000 / 1000, 0, 160, communityWalletAddress, block.timestamp, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if teamPercent and (sub_844284d7 * arg3) + (teamPercent * arg3) + (sub_0301310b * arg3) / 10000 > -1 / teamPercent:
                        revert with 0, 17
                    mem[192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[196] = teamPercent * (sub_844284d7 * arg3) + (teamPercent * arg3) + (sub_0301310b * arg3) / 10000 / 1000
                    idx = 0
                    s = 388
                    t = 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[292] = teamWalletAddress
                    mem[324] = block.timestamp
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args teamPercent * (sub_844284d7 * arg3) + (teamPercent * arg3) + (sub_0301310b * arg3) / 10000 / 1000, 0, 160, teamWalletAddress, block.timestamp, 2, mem[388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_0301310b and (sub_844284d7 * arg3) + (teamPercent * arg3) + (sub_0301310b * arg3) / 10000 > -1 / sub_0301310b:
                        revert with 0, 17
                    mem[192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[196] = sub_0301310b * (sub_844284d7 * arg3) + (teamPercent * arg3) + (sub_0301310b * arg3) / 10000 / 1000
                    mem[228] = 0
                    mem[260] = 160
                    mem[356] = 2
                    idx = 0
                    s = mem[64] + 196
                    t = 128
                    while idx < mem[96]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 96], sub_b6fa37bcAddress, block.timestamp, mem[mem[64] + 164 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    uint8(stor17.field_168) = 0
                if arg3 < (sub_844284d7 * arg3) + (teamPercent * arg3) + (sub_0301310b * arg3) / 10000:
                    revert with 0, 17
                if balanceOf[address(arg2)] > !(arg3 - ((sub_844284d7 * arg3) + (teamPercent * arg3) + (sub_0301310b * arg3) / 10000)):
                    revert with 0, 17
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((sub_844284d7 * arg3) + (teamPercent * arg3) + (sub_0301310b * arg3) / 10000)
                emit Transfer((arg3 - ((sub_844284d7 * arg3) + (teamPercent * arg3) + (sub_0301310b * arg3) / 10000)), arg1, arg2);
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0, 17
    allowance[address(arg1)][msg.sender] -= arg3
    return 1
}

function transferWithAuthorization(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, bytes32 arg6, uint8 arg7, bytes32 arg8, bytes32 arg9) {
    require calldata.size - 4 >= 288
    require arg1 == arg1
    require arg2 == arg2
    require arg7 == arg7
    if stor1:
        revert with 0, 'Pausable: paused'
    if stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blacklistable: account is blacklisted'
    if stor3[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Blacklistable: account is blacklisted'
    if block.timestamp <= arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FiatTokenV2: authorization is not yet valid'
    if block.timestamp >= arg5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FiatTokenV2: authorization is expired'
    if authorizationState[address(arg1)][arg6] > 2:
        revert with 0, 33
    if authorizationState[address(arg1)][arg6]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FiatTokenV2: authorization is used or canceled'
    if arg9 > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECRecover: invalid signature 's' value'
    if arg7 != 27:
        if arg7 != 28:
            revert with 0, 'ECRecover: invalid signature 'v' value'
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0x7c7c6cdb67a18743f49ec6fa9b35f50d52ed05cbed4cc592e13b44501c1a2267, address(arg1), address(arg2), arg3, arg4, arg5, arg6)), arg7 << 248, arg8, arg9) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'ECRecover: invalid signature'
    if address(signer) != arg1:
        revert with 0, 'FiatTokenV2: invalid signature'
    authorizationState[address(arg1)][arg6] = 1
    emit AuthorizationUsed(arg1, arg6);
    if not arg1:
        revert with 0, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0, 'ERC20: transfer to the zero address'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'ERC20: transfer amount exceeds balance'
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 17
    balanceOf[address(arg1)] -= arg3
    if not isSwapEnabled:
        if arg3 < 0:
            revert with 0, 17
        if balanceOf[address(arg2)] > !arg3:
            revert with 0, 17
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        if uint8(stor17.field_168):
            if arg3 < 0:
                revert with 0, 17
            if balanceOf[address(arg2)] > !arg3:
                revert with 0, 17
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            if msg.sender == pairAddress:
                if arg3 < 0:
                    revert with 0, 17
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
            else:
                if sub_844284d7 > !teamPercent:
                    revert with 0, 17
                if sub_844284d7 + teamPercent > !sub_0301310b:
                    revert with 0, 17
                if arg3 and sub_844284d7 + teamPercent + sub_0301310b > -1 / arg3:
                    revert with 0, 17
                if balanceOf[this.address] > !((sub_844284d7 * arg3) + (teamPercent * arg3) + (sub_0301310b * arg3) / 10000):
                    revert with 0, 17
                balanceOf[this.address] += (sub_844284d7 * arg3) + (teamPercent * arg3) + (sub_0301310b * arg3) / 10000
                if (sub_844284d7 * arg3) + (teamPercent * arg3) + (sub_0301310b * arg3) / 10000:
                    uint8(stor17.field_168) = 1
                    mem[514] = this.address
                    mem[546] = USDCAddress
                    if sub_844284d7 and (sub_844284d7 * arg3) + (teamPercent * arg3) + (sub_0301310b * arg3) / 10000 > -1 / sub_844284d7:
                        revert with 0, 17
                    mem[578] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[582] = sub_844284d7 * (sub_844284d7 * arg3) + (teamPercent * arg3) + (sub_0301310b * arg3) / 10000 / 1000
                    idx = 0
                    s = 774
                    t = 514
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args sub_844284d7 * (sub_844284d7 * arg3) + (teamPercent * arg3) + (sub_0301310b * arg3) / 10000 / 1000, 0, 160, communityWalletAddress, block.timestamp, 2, mem[774 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if teamPercent and (sub_844284d7 * arg3) + (teamPercent * arg3) + (sub_0301310b * arg3) / 10000 > -1 / teamPercent:
                        revert with 0, 17
                    mem[578] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[582] = teamPercent * (sub_844284d7 * arg3) + (teamPercent * arg3) + (sub_0301310b * arg3) / 10000 / 1000
                    idx = 0
                    s = 774
                    t = 514
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args teamPercent * (sub_844284d7 * arg3) + (teamPercent * arg3) + (sub_0301310b * arg3) / 10000 / 1000, 0, 160, teamWalletAddress, block.timestamp, 2, mem[774 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_0301310b and (sub_844284d7 * arg3) + (teamPercent * arg3) + (sub_0301310b * arg3) / 10000 > -1 / sub_0301310b:
                        revert with 0, 17
                    mem[578] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
                    mem[582] = sub_0301310b * (sub_844284d7 * arg3) + (teamPercent * arg3) + (sub_0301310b * arg3) / 10000 / 1000
                    idx = 0
                    s = 774
                    t = 514
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args sub_0301310b * (sub_844284d7 * arg3) + (teamPercent * arg3) + (sub_0301310b * arg3) / 10000 / 1000, 0, 160, sub_b6fa37bcAddress, block.timestamp, 2, mem[774 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    uint8(stor17.field_168) = 0
                if arg3 < (sub_844284d7 * arg3) + (teamPercent * arg3) + (sub_0301310b * arg3) / 10000:
                    revert with 0, 17
                if balanceOf[address(arg2)] > !(arg3 - ((sub_844284d7 * arg3) + (teamPercent * arg3) + (sub_0301310b * arg3) / 10000)):
                    revert with 0, 17
                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - ((sub_844284d7 * arg3) + (teamPercent * arg3) + (sub_0301310b * arg3) / 10000)
                emit Transfer((arg3 - ((sub_844284d7 * arg3) + (teamPercent * arg3) + (sub_0301310b * arg3) / 10000)), arg1, arg2);
}



}
