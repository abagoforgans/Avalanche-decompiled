contract main {




// =====================  Runtime code  =====================


#
#  - recoverERC20(address arg1, uint256 arg2)
#  - queryNoSplit(uint256 arg1, address arg2, address arg3)
#
const BNB = 0

const WBNB = 0x5545153ccfca01fbd7dd11c0b23ba694d9509a6f

const NAME = 'Coin98Router', 0

const FEE_DENOMINATOR = 10000


address owner;
uint256 MIN_FEE;
address FEE_CLAIMERAddress;
array of address tRUSTED_TOKENS;
array of address aDAPTERS;
mapping of address stor5;

function FEE_CLAIMER() {
    return FEE_CLAIMERAddress
}

function TRUSTED_TOKENS(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < tRUSTED_TOKENS.length
    return address(tRUSTED_TOKENS[arg1])
}

function MIN_FEE() {
    return MIN_FEE
}

function trustedTokensCount() {
    return tRUSTED_TOKENS.length
}

function adaptersCount() {
    return aDAPTERS.length
}

function owner() {
    return owner
}

function ADAPTERS(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < aDAPTERS.length
    return aDAPTERS[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMinFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    emit 0x4bb8a618: MIN_FEE, arg1
    MIN_FEE = arg1
}

function setFeeClaimer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    emit 0xb2c853ac: FEE_CLAIMERAddress, arg1
    FEE_CLAIMERAddress = arg1
}

function sub_02f05996(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    if not stor5[address(arg1)]:
        aDAPTERS.length++
        aDAPTERS[aDAPTERS.length] = address(arg1)
    stor5[address(arg1)] = address(arg2)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: New owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function recoverBNB(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'Coin98Router: Nothing to recover'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Recovered(address arg1, uint256 arg2):
                   arg1,
    emit 0x0: arg1
}

function setTrustedTokens(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = floor32(arg1.length) + 97
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = arg1 + 36
    s = 128
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: Caller is not the owner'
    mem[floor32(arg1.length) + 97] = 32
    mem[floor32(arg1.length) + 129] = arg1.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < arg1.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x658ff168: mem[mem[64] len floor32(arg1.length) + (32 * arg1.length) + -mem[64] + 161]
    tRUSTED_TOKENS.length = arg1.length
    if not arg1.length:
        idx = 0
        while tRUSTED_TOKENS.length > idx:
            uint256(tRUSTED_TOKENS[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            address(tRUSTED_TOKENS[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while tRUSTED_TOKENS.length > idx:
            uint256(tRUSTED_TOKENS[idx]) = 0
            idx = idx + 1
            continue 
}



}
