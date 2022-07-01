contract main {




// =====================  Runtime code  =====================


#
#  - claimTokens()
#
const usdcAddress = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664

const tokensForSale = 1000 * 10^18

const sub_47a94d5c(?) = 1000 * 10^18

const sub_527509f3(?) = 0x60ae616a2155ee3d9a68541ba4544862310933d4

const totalTokens = 2000 * 10^18

const sub_ad79739f(?) = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10

const sub_e110930f(?) = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7


address owner;
uint256 stor1;
uint8 stor2;
array of address path;
uint8 stor4;
uint256 totalTokensSold;
address pairAddress;
address burnPoolAddress;
address newTokenAddress;
address usdcTokenAddress;
address sub_9fb8158cAddress;
address sub_f5a4f558Address;
uint8 saleStatus; offset 160
uint8 sub_0896af73; offset 168
address stor12;
mapping of struct userInfo;

function sub_0896af73(?) {
    if sub_0896af73 >= 2:
        revert with 'NH{q', 33
    return sub_0896af73
}

function usdcToken() {
    return usdcTokenAddress
}

function userInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, bool(userInfo[arg1].field_256)
}

function tokensDeposited() {
    return bool(stor4)
}

function paused() {
    return bool(stor2)
}

function totalTokensSold() {
    return totalTokensSold
}

function owner() {
    return owner
}

function sub_9fb8158c(?) {
    return sub_9fb8158cAddress
}

function pairAddress() {
    return pairAddress
}

function path(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < path.length
    return path[arg1]
}

function burnPoolAddress() {
    return burnPoolAddress
}

function newToken() {
    return newTokenAddress
}

function sub_f5a4f558(?) {
    return sub_f5a4f558Address
}

function saleStatus() {
    if saleStatus >= 2:
        revert with 'NH{q', 33
    return saleStatus
}

function _fallback() payable {
    revert
}

function sub_1e448874(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return eth.balance(arg1)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pauseSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor2:
        revert with 0, 'Pausable: paused'
    stor2 = 1
    emit Paused(msg.sender);
}

function unpauseSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor2:
        revert with 0, 'Pausable: not paused'
    stor2 = 0
    emit Unpaused(msg.sender);
}

function endSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if saleStatus > 1:
        revert with 'NH{q', 33
    if saleStatus == 1:
        revert with 0, 'Sale is already over'
    saleStatus = 1
    emit SaleEnded()
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_192875e5(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(newTokenAddress)
    staticcall newTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function burnUnsoldTokens() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if stor2:
        revert with 0, 'Pausable: paused'
    if sub_0896af73 > 1:
        revert with 'NH{q', 33
    if sub_0896af73 != 1:
        revert with 0, 'Admin tasks are not done'
    if totalTokensSold and 2 > -1 / totalTokensSold:
        revert with 'NH{q', 17
    if 2000 * 10^18 < 2 * totalTokensSold:
        revert with 'NH{q', 17
    require ext_code.size(newTokenAddress)
    call newTokenAddress.0x9dc29fac with:
         gas gas_remaining wei
        args address(this.address), -(2 * totalTokensSold) + 2000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit UnsoldTokensBurnt((-(2 * totalTokensSold) + 2000 * 10^18));
    stor1 = 1
    return 1
}

function tokenSale(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if stor2:
        revert with 0, 'Pausable: paused'
    if bool(stor4) != 1:
        revert with 0, 'Token deposit period is not over'
    if saleStatus > 1:
        revert with 'NH{q', 33
    if saleStatus:
        revert with 0, 'Sale is already over'
    if arg1 <= 0:
        revert with 0, 'Amount must be more than 0.'
    if arg1 > -totalTokensSold - 1:
        revert with 'NH{q', 17
    if arg1 + totalTokensSold > 1000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Purchase amount exceeds tokens for sale'
    if msg.value < arg1:
        revert with 0, 'Value sent is insufficient'
    if totalTokensSold > -arg1 - 1:
        revert with 'NH{q', 17
    totalTokensSold += arg1
    if userInfo[address(msg.sender)].field_0 > -arg1 - 1:
        revert with 'NH{q', 17
    userInfo[address(msg.sender)].field_0 += arg1
    emit TokenSold(msg.sender, arg1);
    stor1 = 1
    return 1
}

function sub_86ecbad6(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor4:
        revert with 0, 'Token deposit period is over'
    mem[100] = msg.sender
    require ext_code.size(newTokenAddress)
    staticcall newTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < 2000 * 10^18:
        revert with 0, 'Insufficient balance'
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(stor12)
    staticcall stor12.0x3af32abf with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'Contract hasnt been whitelisted'
    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 164] = this.address
    mem[(2 * ceil32(return_data.size)) + 196] = 2000 * 10^18
    mem[(2 * ceil32(return_data.size)) + 96] = 100
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(2 * ceil32(return_data.size)) + 228] = 32
    mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(newTokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), 2000 * 10^18, 0
    mem[(2 * ceil32(return_data.size)) + 392] = 0
    call newTokenAddress with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), 2000 * 10^18, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), 2000 * 10^18, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
            if not mem[(2 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    stor4 = 1
    return 1
}

function distributeFunds(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if saleStatus > 1:
        revert with 'NH{q', 33
    if saleStatus != 1:
        revert with 0, 'Sale is still ongoing'
    if sub_0896af73 > 1:
        revert with 'NH{q', 33
    if sub_0896af73:
        revert with 0, 'Admin tasks are done'
    mem[100] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    require ext_code.size(stor12)
    staticcall stor12.0x3af32abf with:
            gas gas_remaining wei
           args 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'Contract hasnt been whitelisted'
    if eth.balance(this.address) / 100 and 20 > -1 / eth.balance(this.address) / 100:
        revert with 'NH{q', 17
    if eth.balance(this.address) < 20 * eth.balance(this.address) / 100:
        revert with 0, 'Insufficient amount for transfer'
    require ext_code.size(sub_f5a4f558Address)
    call sub_f5a4f558Address.0xd0e30db0 with:
       value 20 * eth.balance(this.address) / 100 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 100] = this.address
    mem[ceil32(return_data.size) + 132] = 20 * eth.balance(this.address) / 100
    require ext_code.size(sub_f5a4f558Address)
    call sub_f5a4f558Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(this.address), 20 * eth.balance(this.address) / 100
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 'NH{q', 1
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(sub_9fb8158cAddress)
    staticcall sub_9fb8158cAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 100] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[(4 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(sub_9fb8158cAddress)
    call sub_9fb8158cAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 and ext_call.return_data[0] > -1 / arg1:
        revert with 'NH{q', 17
    if block.timestamp > -101:
        revert with 'NH{q', 17
    mem[(6 * ceil32(return_data.size)) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(6 * ceil32(return_data.size)) + 100] = ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 132] = arg1 * ext_call.return_data[0] / 10^18 / 10^12
    mem[(6 * ceil32(return_data.size)) + 164] = 160
    mem[(6 * ceil32(return_data.size)) + 260] = path.length
    mem[0] = 3
    idx = 0
    s = 0
    t = (6 * ceil32(return_data.size)) + 292
    while idx < path.length:
        mem[t] = path[s]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    mem[(6 * ceil32(return_data.size)) + 196] = this.address
    mem[(6 * ceil32(return_data.size)) + 228] = block.timestamp + 100
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], arg1 * ext_call.return_data[0] / 10^18 / 10^12, Array(len=path.length, data=mem[(6 * ceil32(return_data.size)) + 292 len 32 * path.length]), address(this.address), block.timestamp + 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(6 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (7 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _71 = mem[(6 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28]
    require mem[(6 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] <= test266151307()
    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 127 < (6 * ceil32(return_data.size)) + return_data.size + 96
    _72 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96] > test266151307():
        revert with 'NH{q', 65
    if (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97 > test266151307() or floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (7 * ceil32(return_data.size)) + floor32(mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]) + 97
    mem[(7 * ceil32(return_data.size)) + 96] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 96 len 4], ext_call.return_data[0 len 28] + 96]
    require _71 + (32 * _72) + 32 <= return_data.size
    idx = 0
    s = (6 * ceil32(return_data.size)) + _71 + 128
    t = (7 * ceil32(return_data.size)) + 128
    while idx < _72:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(usdcTokenAddress)
    staticcall usdcTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _107 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _108 = mem[_107]
    require mem[_107] == mem[_107]
    mem[mem[64] + 4] = burnPoolAddress
    mem[mem[64] + 36] = _108
    require ext_code.size(usdcTokenAddress)
    call usdcTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args burnPoolAddress, _108
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _111 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_111] == bool(mem[_111])
    mem[mem[64] + 4] = newTokenAddress
    mem[mem[64] + 36] = sub_9fb8158cAddress
    require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
    call 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args newTokenAddress, sub_9fb8158cAddress
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _115 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_115] == mem[_115 + 12 len 20]
    pairAddress = mem[_115 + 12 len 20]
    mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[mem[64] + 36] = totalTokensSold
    require ext_code.size(newTokenAddress)
    call newTokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, totalTokensSold
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _119 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_119] == bool(mem[_119])
    if eth.balance(this.address) < eth.balance(this.address):
        revert with 0, 'Insufficient amount for transfer'
    require ext_code.size(sub_f5a4f558Address)
    call sub_f5a4f558Address.0xd0e30db0 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = eth.balance(this.address)
    require ext_code.size(sub_f5a4f558Address)
    call sub_f5a4f558Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(this.address), eth.balance(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _127 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_127] == bool(mem[_127])
    if not mem[_127]:
        revert with 'NH{q', 1
    mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[mem[64] + 36] = totalTokensSold
    require ext_code.size(newTokenAddress)
    call newTokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, totalTokensSold
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _131 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_131] == bool(mem[_131])
    mem[mem[64] + 4] = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    mem[mem[64] + 36] = eth.balance(this.address)
    require ext_code.size(sub_9fb8158cAddress)
    call sub_9fb8158cAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x60ae616a2155ee3d9a68541ba4544862310933d4, eth.balance(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _135 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_135] == bool(mem[_135])
    if block.timestamp > -1001:
        revert with 'NH{q', 17
    mem[mem[64] + 68] = totalTokensSold
    mem[mem[64] + 100] = eth.balance(this.address)
    mem[mem[64] + 132] = 0
    mem[mem[64] + 164] = 0
    mem[mem[64] + 196] = this.address
    mem[mem[64] + 228] = block.timestamp + 1000
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    call 0x60ae616a2155ee3d9a68541ba4544862310933d4.addLiquidity(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint256 arg8) with:
         gas gas_remaining wei
        args newTokenAddress, sub_9fb8158cAddress, totalTokensSold, eth.balance(this.address), 0, 0, address(this.address), block.timestamp + 1000
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _139 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    require mem[_139] == mem[_139]
    require mem[_139 + 32] == mem[_139 + 32]
    require mem[_139 + 64] == mem[_139 + 64]
    sub_0896af73 = 1
    emit 0x667972ea 
    return 1
}



}
