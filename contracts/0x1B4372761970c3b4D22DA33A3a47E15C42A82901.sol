contract main {




// =====================  Runtime code  =====================


#
#  - freezeTo(address arg1, uint256 arg2, uint64 arg3)
#
const name = 'TEST'

const decimals = 18

const symbol = 'TEST'

const TOKEN_NAME = 'TEST'

const TOKEN_SYMBOL = 'TEST'

const TOKEN_DECIMAL_MULTIPLIER = 10^18

const TOKEN_DECIMALS = 18

const TOKEN_DECIMALS_UINT8 = 18


mapping of uint256 actualBalanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
mapping of uint64 stor3;
mapping of uint256 stor4;
mapping of uint256 freezingBalanceOf;
address owner;
address sub_04fc2a66Address;

function sub_04fc2a66(?) {
    return sub_04fc2a66Address
}

function actualBalanceOf(address arg1) {
    return actualBalanceOf[address(arg1)]
}

function totalSupply() {
    return totalSupply
}

function owner() {
    return owner
}

function freezingBalanceOf(address arg1) {
    return freezingBalanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_1d737778(?) {
    require msg.sender == owner
    sub_04fc2a66Address = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function balanceOf(address arg1) {
    return (actualBalanceOf[address(arg1)] + freezingBalanceOf[address(arg1)])
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require arg1 <= actualBalanceOf[address(msg.sender)]
    require arg1 <= actualBalanceOf[address(msg.sender)]
    actualBalanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function freezingCount(address arg1) {
    mem[0] = 'WISH' or address(arg1) << 64
    mem[32] = 3
    idx = stor[sha3(mem[0 len 64])]
    s = 0
    while uint64(idx):
        mem[0] = 'WISH' or address(arg1) << 64 or uint64(idx)
        mem[32] = 3
        idx = stor3['WISH' or address(arg1) << 64 or uint64(idx)]
        s = s + 1
        continue 
    return s
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= actualBalanceOf[address(msg.sender)]
    require arg2 <= actualBalanceOf[address(msg.sender)]
    actualBalanceOf[address(msg.sender)] -= arg2
    require actualBalanceOf[address(arg1)] + arg2 >= actualBalanceOf[address(arg1)]
    actualBalanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function getFreezing(address arg1, uint256 arg2) {
    idx = 0
    s = 0
    while idx < arg2 + 1:
        mem[0] = 'WISH' or address(arg1) << 64 or uint64(s)
        mem[32] = 3
        if stor3['WISH' or address(arg1) << 64 or uint64(s)]:
            idx = idx + 1
            s = stor3['WISH' or address(arg1) << 64 or uint64(s)]
            continue 
        return stor3['WISH' or address(arg1) << 64 or uint64(s)], 0
    return arg2 + 1 << 198, stor4['WISH' or address(arg1) << 64 or 64 * arg2 + 1 % 288230376151711744]
}

function sweep(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args sub_04fc2a66Address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= actualBalanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= actualBalanceOf[address(arg1)]
    actualBalanceOf[address(arg1)] -= arg3
    require actualBalanceOf[address(arg2)] + arg3 >= actualBalanceOf[address(arg2)]
    actualBalanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function releaseOnce() {
    require stor3['WISH' or msg.sender << 64]
    require uint64(block.timestamp) > stor3['WISH' or msg.sender << 64]
    stor4['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]] = 0
    require actualBalanceOf[address(msg.sender)] + stor4['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]] >= actualBalanceOf[address(msg.sender)]
    actualBalanceOf[address(msg.sender)] += stor4['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]]
    require stor4['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]] <= freezingBalanceOf[address(msg.sender)]
    freezingBalanceOf[address(msg.sender)] -= stor4['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]]
    if not stor3['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]]:
        stor3['WISH' or msg.sender << 64] = 0
    else:
        stor3['WISH' or msg.sender << 64] = stor3['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]]
        stor3['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]] = 0
    emit Released(stor4['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]], msg.sender);
}

function releaseAll() {
    idx = 0
    s = 0
    while idx < 1:
        mem[0] = 'WISH' or msg.sender << 64 or uint64(s)
        mem[32] = 3
        if stor3['WISH' or msg.sender << 64 or uint64(s)]:
            idx = idx + 1
            s = stor3['WISH' or msg.sender << 64 or uint64(s)]
            continue 
        else:
            return 0
    if not var40002:
        return var40003
    idx = not not var40002
    s = var40001
    t = var40002
    t = var40003
    while idx:
        require stor3['WISH' or msg.sender << 64]
        require uint64(block.timestamp) > stor3['WISH' or msg.sender << 64]
        stor4['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]] = 0
        require actualBalanceOf[address(msg.sender)] + stor4['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]] >= actualBalanceOf[address(msg.sender)]
        actualBalanceOf[address(msg.sender)] += stor4['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]]
        require stor4['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]] <= freezingBalanceOf[address(msg.sender)]
        freezingBalanceOf[address(msg.sender)] -= stor4['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]]
        if not stor3['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]]:
            stor3['WISH' or msg.sender << 64] = 0
        else:
            stor3['WISH' or msg.sender << 64] = stor3['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]]
            stor3['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]] = 0
        mem[96] = stor4['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]]
        emit Released(stor4['WISH' or msg.sender << 64 or stor3['WISH' or msg.sender << 64]], msg.sender);
        idx = 0
        u = 0
        while idx < 1:
            mem[0] = 'WISH' or msg.sender << 64 or uint64(u)
            mem[32] = 3
            if stor3['WISH' or msg.sender << 64 or uint64(u)]:
                idx = idx + 1
                u = stor3['WISH' or msg.sender << 64 or uint64(u)]
                continue 
            return (t + s)
        mem[0] = 'WISH' or msg.sender << 64 or 64
        mem[32] = 4
        idx = not not 64
        s = stor4['WISH' or msg.sender << 64 or 64]
        t = 64
        t = t + s
        continue 
    return t
}



}
