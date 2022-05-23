contract main {




// =====================  Runtime code  =====================


address owner;
uint256 totalShares;
uint256 totalReleased;
mapping of uint256 shares;
mapping of uint256 released;
array of address payee;
mapping of uint256 totalReleased;
mapping of uint256 released;
address sub_08b995caAddress;
address managerAddress;
address tokenAddress;
address teamAddress;
address poolAddress;
uint256 teamFee;
uint256 poolFee;

function poolFee() {
    return poolFee
}

function sub_08b995ca(?) {
    return sub_08b995caAddress
}

function pool() {
    return poolAddress
}

function totalShares() {
    return totalShares
}

function released(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return released[address(arg1)][address(arg2)]
}

function manager() {
    return managerAddress
}

function team() {
    return teamAddress
}

function payee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= payee.length:
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 50
    return payee[arg1]
}

function owner() {
    return owner
}

function released(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return released[address(arg1)]
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[address(arg1)]
}

function totalReleased(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalReleased[address(arg1)]
}

function teamFee() {
    return teamFee
}

function totalReleased() {
    return totalReleased
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with code.data[15969 len 4], 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function updateTeamFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with code.data[15969 len 4], 'Ownable: caller is not the owner'
    teamFee = arg1
}

function updateLiquiditFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with code.data[15969 len 4], 'Ownable: caller is not the owner'
    poolFee = arg1
}

function updateTeamAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with code.data[15969 len 4], 'Ownable: caller is not the owner'
    teamAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with code.data[15969 len 4], 'Ownable: caller is not the owner'
    if not arg1:
        revert with code.data[15969 len 32], 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_75aa4ad9(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with code.data[15969 len 4], 'Ownable: caller is not the owner'
    if 0 >= ('cd', 4).length:
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 50
    teamFee = mem[128]
    if 1 >= ('cd', 4).length:
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 50
    poolFee = mem[160]
}

function updatePoolAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with code.data[15969 len 4], 'Ownable: caller is not the owner'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args poolAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(poolAddress)
    call poolAddress.pay(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    create contract with 0 wei
                    code: code.data[14205 len 1732], arg1
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    poolAddress = address(create.new_address)
}

function claim(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with code.data[15969 len 32], 'HELPER: creation from the zero address'
    if teamAddress == msg.sender:
        revert with code.data[15969 len 32], 'HELPER: team cannot cashout rewards'
    require ext_code.size(managerAddress)
    call managerAddress.claim(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with code.data[15969 len 4], 'HELPER: You don't have enough reward to cash out'
    require ext_code.size(poolAddress)
    call poolAddress.pay(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function release(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not shares[address(arg1)]:
        revert with code.data[15969 len 32], 'PaymentSplitter: account has no shares'
    if eth.balance(this.address) > !totalReleased:
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 17
    if eth.balance(this.address) + totalReleased and shares[address(arg1)] > -1 / eth.balance(this.address) + totalReleased:
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 17
    if not totalShares:
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 18
    if (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares < released[address(arg1)]:
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 17
    if not ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]:
        revert with code.data[15969 len 32], 'PaymentSplitter: account is not due payment'
    if released[address(arg1)] > !(((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]):
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 17
    released[address(arg1)] = (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares
    if totalReleased > !(((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]):
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 17
    totalReleased = totalReleased + ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]
    if ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)] > eth.balance(this.address):
        revert with code.data[15969 len 4], 'Address: insufficient balance'
    call arg1 with:
       value ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)] wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with code.data[15969 len 32], 'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with code.data[15969 len 4], 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
    emit PaymentReleased(address(arg1), ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]);
}

function createNodeWithTokens(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if arg1.length <= 0:
        revert with 0, 'HELPER: name size is invalid'
    if arg1.length >= 33:
        revert with 0, 'HELPER: name size is invalid'
    if not msg.sender:
        revert with 0, 'HELPER:  Creation from the zero address'
    if teamAddress == msg.sender:
        revert with 0, 'HELPER: Team cannot create node'
    require ext_code.size(managerAddress)
    call managerAddress.price() with:
         gas gas_remaining wei
    mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _27 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    require Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] == Mask(8 * -ceil32(arg1.length) + arg1.length + 8, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    if Mask(8 * -ceil32(arg1.length) + arg1.length + 8, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] > 18:
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 17
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < uint64(10^18 * uint64(_27)):
        revert with code.data[15969 len 4], 'HELPER: Balance too low for creation.'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), uint64(10^18 * uint64(_27))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and teamFee > -1 / ext_call.return_data[0]:
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 17
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args teamAddress, ext_call.return_data[0] * teamFee / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0] and poolFee > -1 / ext_call.return_data[0]:
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 17
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args poolAddress, ext_call.return_data[0] * poolFee / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(managerAddress)
    call managerAddress.createNode(address arg1, string arg2) with:
         gas gas_remaining wei
        args msg.sender, Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claimAll(uint256[] arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if not msg.sender:
        revert with code.data[15969 len 32], 'HELPER: creation from the zero address'
    if teamAddress == msg.sender:
        revert with code.data[15969 len 32], 'HELPER: team cannot cashout rewards'
    idx = 0
    s = 0
    while idx < arg1.length:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[((32 * idx) + arg1 + 36)]
        require ext_code.size(managerAddress)
        call managerAddress.claim(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, cd[((32 * idx) + arg1 + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _29 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if s > !mem[_29]:
            revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 17
        if idx == -1:
            revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 17
        idx = idx + 1
        s = s + mem[_29]
        continue 
    if s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length <= 0:
        revert with code.data[15969 len 4], 'HELPER: You don't have enough reward to cash out'
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length
    require ext_code.size(poolAddress)
    call poolAddress.pay(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _26 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_26] == bool(mem[_26])
}

function release(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not shares[address(arg2)]:
        revert with code.data[15969 len 32], 'PaymentSplitter: account has no shares'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !totalReleased[address(arg1)]:
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 17
    if ext_call.return_data[0] + totalReleased[address(arg1)] and shares[address(arg2)] > -1 / ext_call.return_data[0] + totalReleased[address(arg1)]:
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 17
    if not totalShares:
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 18
    if (ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares < released[address(arg1)][address(arg2)]:
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 17
    if not ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]:
        revert with code.data[15969 len 4], 'PaymentSplitter: account is not due payment'
    if released[address(arg1)][address(arg2)] > !(((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]):
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 17
    released[address(arg1)][address(arg2)] = (ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares
    if totalReleased[address(arg1)] > !(((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]):
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 17
    totalReleased[address(arg1)] = totalReleased[address(arg1)] + ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]
    mem[ceil32(return_data.size) + 132] = arg2
    mem[ceil32(return_data.size) + 164] = ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if not ext_code.size(arg1):
        revert with code.data[15969 len 4], 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with code.data[15969 len 4], 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with code.data[15969 len 4], 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with code.data[15969 len 4], 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with code.data[15969 len 4], 'SafeERC20: ERC20 operation did not succeed'
    emit ERC20PaymentReleased(address(arg2), ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], arg1);
}

function sub_b2ecfc18(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 65
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[4] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + cd[s] + 36)] > test266151307():
            revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 65
        _91 = mem[64]
        if mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32 < mem[64] or mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32 > test266151307():
            revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 65
        mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32
        mem[_91] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
        mem[_91 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
        mem[_91 + cd[(cd[4] + cd[s] + 36)] + 32] = 0
        mem[t] = _91
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if mem[96] != cd[36]:
        revert with code.data[15969 len 4], 'HELPER: You need to provide exactly matching names'
    if not msg.sender:
        revert with code.data[15969 len 4], 'HELPER:  creation from the zero address'
    if teamAddress == msg.sender:
        revert with code.data[15969 len 4], 'HELPER: futur and rewardsPool cannot create node'
    require ext_code.size(managerAddress)
    call managerAddress.price() with:
         gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _100 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _102 = mem[_100]
    require mem[_100] == mem[_100 + 24 len 8]
    if mem[_100 + 24 len 8] > 18:
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 17
    if uint64(10^18 * mem[_100 + 24 len 8]) and cd[36] > -1 / uint64(10^18 * mem[_100 + 24 len 8]):
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 17
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _109 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_109] < uint64(10^18 * uint64(_102)) * cd[36]:
        revert with code.data[15969 len 4], 'HELPER: Balance too low for creation.'
    if uint64(10^18 * uint64(_102)) and cd[36] > -1 / uint64(10^18 * uint64(_102)):
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 17
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = this.address
    mem[mem[64] + 68] = uint64(10^18 * uint64(_102)) * cd[36]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), uint64(10^18 * uint64(_102)) * cd[36]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _119 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_119] == bool(mem[_119])
    mem[mem[64] + 4] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _123 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _124 = mem[_123]
    if mem[_123] and teamFee > -1 / mem[_123]:
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 17
    mem[mem[64] + 4] = teamAddress
    mem[mem[64] + 36] = _124 * teamFee / 100
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args teamAddress, _124 * teamFee / 100
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _129 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_129] == bool(mem[_129])
    if _124 and poolFee > -1 / _124:
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 17
    mem[mem[64] + 4] = poolAddress
    mem[mem[64] + 36] = _124 * poolFee / 100
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args poolAddress, _124 * poolFee / 100
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _135 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_135] == bool(mem[_135])
    idx = 0
    while idx < cd[36]:
        if idx >= mem[96]:
            revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 50
        _157 = mem[(32 * idx) + 128]
        if mem[mem[(32 * idx) + 128]] <= 0:
            revert with code.data[15969 len 4], 'HELPER: name size is invalid'
        if mem[mem[(32 * idx) + 128]] >= 33:
            revert with code.data[15969 len 4], 'HELPER: name size is invalid'
        mem[mem[64]] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = 64
        _170 = mem[_157]
        mem[mem[64] + 68] = mem[_157]
        s = 0
        while s < _170:
            mem[s + mem[64] + 100] = mem[s + _157 + 32]
            s = s + 32
            continue 
        if ceil32(_170) > _170:
            mem[_170 + mem[64] + 100] = 0
        require ext_code.size(managerAddress)
        call managerAddress.createNode(address arg1, string arg2) with:
             gas gas_remaining wei
            args msg.sender, 64, mem[mem[64] + 68 len ceil32(_170) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 17
        idx = idx + 1
        continue 
}

function sub_b96d611c(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length <= 0:
        revert with 0, 'HELPER: name size is invalid'
    if arg1.length >= 33:
        revert with 0, 'HELPER: name size is invalid'
    if not msg.sender:
        revert with 0, 'HELPER:  Creation from the zero address'
    if teamAddress == msg.sender:
        revert with 0, 'HELPER: Team cannot create node'
    require ext_code.size(managerAddress)
    call managerAddress.price() with:
         gas gas_remaining wei
    mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _27 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    require Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] == Mask(8 * -ceil32(arg1.length) + arg1.length + 8, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    if Mask(8 * -ceil32(arg1.length) + arg1.length + 8, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] > 18:
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 17
    if uint64(10^18 * Mask(8 * -ceil32(arg1.length) + arg1.length + 8, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) and arg2 > -1 / uint64(10^18 * Mask(8 * -ceil32(arg1.length) + arg1.length + 8, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]):
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 17
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 132] = msg.sender
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < uint64(10^18 * uint64(_27)) * arg2:
        revert with code.data[15969 len 4], 'HELPER: Balance too low for creation.'
    if uint64(10^18 * uint64(_27)) and arg2 > -1 / uint64(10^18 * uint64(_27)):
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 17
    mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 132] = msg.sender
    mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 164] = this.address
    mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 196] = uint64(10^18 * uint64(_27)) * arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), uint64(10^18 * uint64(_27)) * arg2
    mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(arg1.length) + (4 * ceil32(return_data.size)) + 132] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(arg1.length) + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and teamFee > -1 / ext_call.return_data[0]:
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 17
    mem[ceil32(arg1.length) + (6 * ceil32(return_data.size)) + 132] = teamAddress
    mem[ceil32(arg1.length) + (6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] * teamFee / 100
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args teamAddress, ext_call.return_data[0] * teamFee / 100
    mem[ceil32(arg1.length) + (6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0] and poolFee > -1 / ext_call.return_data[0]:
        revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 17
    mem[ceil32(arg1.length) + (7 * ceil32(return_data.size)) + 132] = poolAddress
    mem[ceil32(arg1.length) + (7 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] * poolFee / 100
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args poolAddress, ext_call.return_data[0] * poolFee / 100
    mem[ceil32(arg1.length) + (7 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(arg1.length) + (8 * ceil32(return_data.size)) + 128
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    while idx < arg2:
        mem[ceil32(arg1.length) + (8 * ceil32(return_data.size)) + 128] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg1.length) + (8 * ceil32(return_data.size)) + 132] = msg.sender
        mem[ceil32(arg1.length) + (8 * ceil32(return_data.size)) + 164] = 64
        mem[ceil32(arg1.length) + (8 * ceil32(return_data.size)) + 196] = arg1.length
        s = 0
        while s < arg1.length:
            mem[s + ceil32(arg1.length) + (8 * ceil32(return_data.size)) + 228] = mem[s + 128]
            s = s + 32
            continue 
        if ceil32(arg1.length) > arg1.length:
            mem[arg1.length + ceil32(arg1.length) + (8 * ceil32(return_data.size)) + 228] = 0
        require ext_code.size(managerAddress)
        call managerAddress.createNode(address arg1, string arg2) with:
             gas gas_remaining wei
            args msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + (8 * ceil32(return_data.size)) + 228 len ceil32(arg1.length)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 17
        idx = idx + 1
        continue 
}

function sub_f689d8fc(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == uint64(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = uint64(cd[((32 * idx) + cd[4] + 36)])
        require ext_code.size(sub_08b995caAddress)
        call sub_08b995caAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), uint64(cd[((32 * idx) + cd[4] + 36)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= ('cd', 4).length:
            revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 50
        require cd[((32 * idx) + cd[4] + 36)] == uint64(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64]] = 0xcdd9f4ed00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = uint64(cd[((32 * idx) + cd[4] + 36)])
        require ext_code.size(sub_08b995caAddress)
        staticcall sub_08b995caAddress.0xcdd9f4ed with:
                gas gas_remaining wei
               args (cd[((32 * idx) + cd[4] + 36)] << 192)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _56 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _57 = mem[_56]
        require mem[_56] <= test266151307()
        require _56 + return_data.size > _56 + mem[_56] + 31
        _58 = mem[_56 + mem[_56]]
        if mem[_56 + mem[_56]] > test266151307():
            revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 65
        if ceil32(mem[_56 + mem[_56]]) + 32 < 0 or _56 + ceil32(return_data.size) + ceil32(mem[_56 + mem[_56]]) + 32 > test266151307():
            revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 65
        mem[64] = _56 + ceil32(return_data.size) + ceil32(mem[_56 + mem[_56]]) + 32
        mem[_56 + ceil32(return_data.size)] = _58
        require _57 + _58 + 32 <= return_data.size
        s = 0
        while s < _58:
            mem[s + _56 + ceil32(return_data.size) + 32] = mem[s + _56 + _57 + 32]
            s = s + 32
            continue 
        if ceil32(_58) <= _58:
            if idx >= ('cd', 4).length:
                revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 50
            require cd[((32 * idx) + cd[4] + 36)] == uint64(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = uint64(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(sub_08b995caAddress)
            staticcall sub_08b995caAddress.0x697689f5 with:
                    gas gas_remaining wei
                   args (cd[((32 * idx) + cd[4] + 36)] << 192)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _116 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _118 = mem[_116]
            require mem[_116] == mem[_116 + 24 len 8]
            if idx >= ('cd', 4).length:
                revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 50
            require cd[((32 * idx) + cd[4] + 36)] == uint64(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = uint64(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(sub_08b995caAddress)
            staticcall sub_08b995caAddress.0x10910f3c with:
                    gas gas_remaining wei
                   args (cd[((32 * idx) + cd[4] + 36)] << 192)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _128 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _130 = mem[_128]
            require mem[_128] == mem[_128 + 24 len 8]
            mem[mem[64]] = 0xb7182a00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = _58
            s = 0
            while s < _58:
                mem[s + mem[64] + 164] = mem[s + _56 + ceil32(return_data.size) + 32]
                s = s + 32
                continue 
            if ceil32(_58) > _58:
                mem[_58 + mem[64] + 164] = 0
            mem[mem[64] + 68] = uint64(_118)
            mem[mem[64] + 100] = uint64(_130)
            require ext_code.size(managerAddress)
            call managerAddress.0xb7182a with:
                 gas gas_remaining wei
                args msg.sender, Array(len=_58, data=mem[mem[64] + 164 len ceil32(_58)]), _118 << 192, uint64(_130)
        else:
            mem[_58 + _56 + ceil32(return_data.size) + 32] = 0
            if idx >= ('cd', 4).length:
                revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 50
            require cd[((32 * idx) + cd[4] + 36)] == uint64(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = uint64(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(sub_08b995caAddress)
            staticcall sub_08b995caAddress.0x697689f5 with:
                    gas gas_remaining wei
                   args (cd[((32 * idx) + cd[4] + 36)] << 192)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _117 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _119 = mem[_117]
            require mem[_117] == mem[_117 + 24 len 8]
            if idx >= ('cd', 4).length:
                revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 50
            require cd[((32 * idx) + cd[4] + 36)] == uint64(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = uint64(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(sub_08b995caAddress)
            staticcall sub_08b995caAddress.0x10910f3c with:
                    gas gas_remaining wei
                   args (cd[((32 * idx) + cd[4] + 36)] << 192)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _129 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _131 = mem[_129]
            require mem[_129] == mem[_129 + 24 len 8]
            mem[mem[64]] = 0xb7182a00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = _58
            s = 0
            while s < _58:
                mem[s + mem[64] + 164] = mem[s + _56 + ceil32(return_data.size) + 32]
                s = s + 32
                continue 
            if ceil32(_58) > _58:
                mem[_58 + mem[64] + 164] = 0
            mem[mem[64] + 68] = uint64(_119)
            mem[mem[64] + 100] = uint64(_131)
            require ext_code.size(managerAddress)
            call managerAddress.0xb7182a with:
                 gas gas_remaining wei
                args msg.sender, Array(len=_58, data=mem[mem[64] + 164 len ceil32(_58)]), _119 << 192, uint64(_131)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with Mask(32, 224, code.data[15937 len 32]) >> 224, 17
        idx = idx + 1
        continue 
}



}
