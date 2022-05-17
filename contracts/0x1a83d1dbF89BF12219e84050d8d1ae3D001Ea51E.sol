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
address managerAddress;
address routerAddress;
address tokenAddress;
address teamAddress;
address poolAddress;
uint256 teamFee;
uint256 poolFee;
uint256 liquidityFee;
uint8 stor16;
uint8 stor16; offset 8
mapping of uint256 stor17;

function poolFee() {
    return poolFee
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
        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 50
    return payee[arg1]
}

function owner() {
    return owner
}

function liquidityFee() {
    return liquidityFee
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

function router() {
    return routerAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateTeamFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    teamFee = arg1
}

function updateLiquiditFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    poolFee = arg1
}

function updateRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    routerAddress = arg1
}

function updateTeamAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    teamAddress = arg1
}

function changeSwapLiquify(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor16.field_0) = uint8(arg1)
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

function sub_09ff9327(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(managerAddress)
    call managerAddress.0x527d19a0 with:
         gas gas_remaining wei
        args uint64(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_719c3139(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(managerAddress)
    call managerAddress.0x42acbebd with:
         gas gas_remaining wei
        args uint64(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f0754ef6(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint64(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(managerAddress)
    call managerAddress.0xc6de84d3 with:
         gas gas_remaining wei
        args uint64(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setTokenUri(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(managerAddress)
    call managerAddress.0x371ffa64 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1a4b7102(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint64(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(managerAddress)
    call managerAddress.0xacb3b906 with:
         gas gas_remaining wei
        args arg1 << 192, Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function migrate(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor17[msg.sender] > arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You cannot receive more than you are allowed to'
    if stor17[msg.sender] < arg1:
        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
    stor17[msg.sender] -= arg1
    require ext_code.size(managerAddress)
    call managerAddress.0x4eb84791 with:
         gas gas_remaining wei
        args msg.sender, arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updatePoolAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
                    code: code.data[17776 len 1731], arg1
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    poolAddress = address(create.new_address)
}

function sub_75aa4ad9(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 65
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
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= ('cd', 4).length:
        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 50
    teamFee = mem[128]
    if 1 >= ('cd', 4).length:
        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 50
    poolFee = mem[160]
    if 2 >= ('cd', 4).length:
        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 50
    liquidityFee = mem[192]
}

function sub_cc9ffbdd(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 50
        if idx >= ('cd', 4).length:
            revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 17
        stor17[address(cd[((32 * idx) + cd[4] + 36)])] = cd[((32 * idx) + cd[36] + 36)]
        if idx == -1:
            revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
        idx = idx + 1
        continue 
}

function claim(uint64 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MANIA CSHT:  creation from the zero address'
    if teamAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'MANIA CSHT: futur and rewardsPool cannot cashout rewards'
    require ext_code.size(managerAddress)
    call managerAddress.0x6dd387ed with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'MANIA CSHT: You don't have enough reward to cash out'
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account has no shares'
    if eth.balance(this.address) > !totalReleased:
        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
    if eth.balance(this.address) + totalReleased and shares[address(arg1)] > -1 / eth.balance(this.address) + totalReleased:
        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
    if not totalShares:
        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 18
    if (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares < released[address(arg1)]:
        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
    if not ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account is not due payment'
    if released[address(arg1)] > !(((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]):
        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
    released[address(arg1)] = (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares
    if totalReleased > !(((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]):
        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
    totalReleased = totalReleased + ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]
    if ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)] > eth.balance(this.address):
        revert with 0, 'Address: insufficient balance'
    call arg1 with:
       value ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)] wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
    emit PaymentReleased(address(arg1), ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]);
}

function release(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not shares[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account has no shares'
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
        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
    if ext_call.return_data[0] + totalReleased[address(arg1)] and shares[address(arg2)] > -1 / ext_call.return_data[0] + totalReleased[address(arg1)]:
        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
    if not totalShares:
        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 18
    if (ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares < released[address(arg1)][address(arg2)]:
        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
    if not ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]:
        revert with 0, 'PaymentSplitter: account is not due payment'
    if released[address(arg1)][address(arg2)] > !(((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]):
        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
    released[address(arg1)][address(arg2)] = (ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares
    if totalReleased[address(arg1)] > !(((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]):
        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
    totalReleased[address(arg1)] = totalReleased[address(arg1)] + ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]
    mem[ceil32(return_data.size) + 132] = arg2
    mem[ceil32(return_data.size) + 164] = ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if 0 > eth.balance(this.address):
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
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
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit ERC20PaymentReleased(address(arg2), ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], arg1);
}

function sub_f5c70973(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MANIA CSHT:  creation from the zero address'
    if teamAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'MANIA CSHT: futur and rewardsPool cannot cashout rewards'
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == uint64(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = uint64(cd[((32 * idx) + cd[4] + 36)])
        require ext_code.size(managerAddress)
        call managerAddress.0x6dd387ed with:
             gas gas_remaining wei
            args msg.sender, uint64(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _21 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if s > !mem[_21]:
            revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
        if idx == -1:
            revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
        idx = idx + 1
        s = s + mem[_21]
        continue 
    if s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length <= 0:
        revert with 0, 'MANIA CSHT: You don't have enough reward to cash out'
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length
    require ext_code.size(poolAddress)
    call poolAddress.pay(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _17 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_17] == bool(mem[_17])
}

function createNodeWithTokens(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length <= 0:
        revert with 0, 'NODE CREATION: 0 < NAME SIZE < 33'
    if arg1.length >= 33:
        revert with 0, 'NODE CREATION: 0 < NAME SIZE < 33'
    if not msg.sender:
        revert with 0, 'NODE CREATION:  Creation from the zero address'
    if teamAddress == msg.sender:
        revert with 0, 'NODE CREATION: Team cannot create node'
    require ext_code.size(managerAddress)
    staticcall managerAddress.price() with:
            gas gas_remaining wei
    mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _19 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    require Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] == Mask(8 * -ceil32(arg1.length) + arg1.length + 8, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    if Mask(8 * -ceil32(arg1.length) + arg1.length + 8, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] > 18:
        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 132] = msg.sender
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < uint64(10^18 * uint64(_19)):
        revert with 0, 'NODE CREATION: Balance too low for creation.'
    mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 132] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not uint8(stor16.field_0):
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), uint64(10^18 * uint64(_19))
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(managerAddress)
        call managerAddress.createNode(address arg1, string arg2) with:
             gas gas_remaining wei
            args msg.sender, Array(len=arg1.length, data=arg1[all])
    else:
        if uint8(stor16.field_8):
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), uint64(10^18 * uint64(_19))
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(managerAddress)
            call managerAddress.createNode(address arg1, string arg2) with:
                 gas gas_remaining wei
                args msg.sender, Array(len=arg1.length, data=arg1[all])
        else:
            if msg.sender == owner:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), uint64(10^18 * uint64(_19))
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(managerAddress)
                call managerAddress.createNode(address arg1, string arg2) with:
                     gas gas_remaining wei
                    args msg.sender, Array(len=arg1.length, data=arg1[all])
            else:
                uint8(stor16.field_8) = 1
                if ext_call.return_data[0] and teamFee > -1 / ext_call.return_data[0]:
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
                mem[ceil32(arg1.length) + (4 * ceil32(return_data.size)) + 132] = teamAddress
                mem[ceil32(arg1.length) + (4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] * teamFee / 100
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args teamAddress, ext_call.return_data[0] * teamFee / 100
                mem[ceil32(arg1.length) + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0] and poolFee > -1 / ext_call.return_data[0]:
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
                mem[ceil32(arg1.length) + (6 * ceil32(return_data.size)) + 132] = poolAddress
                mem[ceil32(arg1.length) + (6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] * poolFee / 100
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args poolAddress, ext_call.return_data[0] * poolFee / 100
                mem[ceil32(arg1.length) + (6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0] and liquidityFee > -1 / ext_call.return_data[0]:
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
                if ext_call.return_data[0] * liquidityFee / 100 < ext_call.return_data[0] * liquidityFee / 100 / 2:
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
                mem[ceil32(arg1.length) + (7 * ceil32(return_data.size)) + 128] = 2
                mem[ceil32(arg1.length) + (7 * ceil32(return_data.size)) + 160] = tokenAddress
                require ext_code.size(routerAddress)
                staticcall routerAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[ceil32(arg1.length) + (7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(arg1.length) + (7 * ceil32(return_data.size)) + 192] = ext_call.return_data[12 len 20]
                mem[ceil32(arg1.length) + (8 * ceil32(return_data.size)) + 228] = routerAddress
                mem[ceil32(arg1.length) + (8 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] * liquidityFee / 100 / 2
                require ext_code.size(tokenAddress)
                call tokenAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg1.length) + (8 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 64]
                mem[ceil32(arg1.length) + (8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg1.length) + (10 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[ceil32(arg1.length) + (10 * ceil32(return_data.size)) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg1.length) + (10 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] * liquidityFee / 100 / 2
                mem[ceil32(arg1.length) + (10 * ceil32(return_data.size)) + 260] = 0
                mem[ceil32(arg1.length) + (10 * ceil32(return_data.size)) + 292] = 160
                mem[ceil32(arg1.length) + (10 * ceil32(return_data.size)) + 388] = 2
                idx = 0
                s = ceil32(arg1.length) + (10 * ceil32(return_data.size)) + 420
                t = ceil32(arg1.length) + (7 * ceil32(return_data.size)) + 160
                while idx < mem[ceil32(arg1.length) + (7 * ceil32(return_data.size)) + 128]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(arg1.length) + (10 * ceil32(return_data.size)) + 324] = this.address
                mem[ceil32(arg1.length) + (10 * ceil32(return_data.size)) + 356] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(arg1.length) + (10 * ceil32(return_data.size)) + -mem[64] + 480]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _143 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _150 = mem[_143]
                require mem[_143] <= test266151307()
                require _143 + return_data.size > _143 + mem[_143] + 31
                _151 = mem[_143 + mem[_143]]
                if mem[_143 + mem[_143]] > test266151307():
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 65
                if (32 * mem[_143 + mem[_143]]) + 32 < 0 or _143 + ceil32(return_data.size) + (32 * mem[_143 + mem[_143]]) + 32 > test266151307():
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 65
                mem[64] = _143 + ceil32(return_data.size) + (32 * mem[_143 + mem[_143]]) + 32
                mem[_143 + ceil32(return_data.size)] = _151
                require return_data.size >= _150 + (32 * _151) + 32
                mem[_143 + ceil32(return_data.size) + 32 len 32 * _151] = mem[_143 + _150 + 32 len 32 * _151]
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
                mem[mem[64] + 4] = routerAddress
                mem[mem[64] + 36] = (ext_call.return_data[0] * liquidityFee / 100) - (ext_call.return_data[0] * liquidityFee / 100 / 2)
                require ext_code.size(tokenAddress)
                call tokenAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args routerAddress, (ext_call.return_data[0] * liquidityFee / 100) - (ext_call.return_data[0] * liquidityFee / 100 / 2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _218 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_218] == bool(mem[_218])
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = 0
                mem[mem[64] + 132] = owner
                mem[mem[64] + 164] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args tokenAddress, (ext_call.return_data[0] * liquidityFee / 100) - (ext_call.return_data[0] * liquidityFee / 100 / 2), 0, 0, owner, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = (ext_call.return_data[0] * liquidityFee / 100) - (ext_call.return_data[0] * liquidityFee / 100 / 2)
                emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] * liquidityFee / 100), 0, (ext_call.return_data[0] * liquidityFee / 100) - (ext_call.return_data[0] * liquidityFee / 100 / 2));
                mem[mem[64] + 4] = this.address
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _230 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _231 = mem[_230]
                _232 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_232 + 32 len 64] = call.data[calldata.size len 64]
                if not mem[_232]:
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 50
                mem[_232 + 32] = tokenAddress
                require ext_code.size(routerAddress)
                staticcall routerAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[_232 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _232 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 1 >= mem[_232]:
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 50
                mem[_232 + 64] = ext_call.return_data[12 len 20]
                mem[_232 + ceil32(return_data.size) + 100] = routerAddress
                mem[_232 + ceil32(return_data.size) + 132] = _231
                require ext_code.size(tokenAddress)
                call tokenAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args routerAddress, _231
                mem[_232 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _232 + (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[_232 + (2 * ceil32(return_data.size)) + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_232 + (2 * ceil32(return_data.size)) + 100] = _231
                mem[_232 + (2 * ceil32(return_data.size)) + 132] = 0
                mem[_232 + (2 * ceil32(return_data.size)) + 164] = 160
                mem[_232 + (2 * ceil32(return_data.size)) + 260] = mem[_232]
                idx = 0
                s = _232 + (2 * ceil32(return_data.size)) + 292
                t = _232 + 32
                while idx < mem[_232]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_232 + (2 * ceil32(return_data.size)) + 196] = this.address
                mem[_232 + (2 * ceil32(return_data.size)) + 228] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _231, 0, 160, address(this.address), block.timestamp, mem[_232 + (2 * ceil32(return_data.size)) + 260 len (32 * mem[_232]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_232 + (2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _232 + (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _272 = mem[_232 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _231) >> 32
                require mem[_232 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _231) >> 32 <= test266151307()
                require _232 + (2 * ceil32(return_data.size)) + return_data.size + 96 > _232 + (2 * ceil32(return_data.size)) + mem[_232 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _231) >> 32 + 127
                _273 = mem[_232 + (2 * ceil32(return_data.size)) + mem[_232 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _231) >> 32 + 96]
                if mem[_232 + (2 * ceil32(return_data.size)) + mem[_232 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _231) >> 32 + 96] > test266151307():
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 65
                if (32 * mem[_232 + (2 * ceil32(return_data.size)) + mem[_232 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _231) >> 32 + 96]) + 32 < 0 or _232 + (4 * ceil32(return_data.size)) + (32 * mem[_232 + (2 * ceil32(return_data.size)) + mem[_232 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _231) >> 32 + 96]) + 128 > test266151307():
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 65
                mem[64] = _232 + (4 * ceil32(return_data.size)) + (32 * mem[_232 + (2 * ceil32(return_data.size)) + mem[_232 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _231) >> 32 + 96]) + 128
                mem[_232 + (4 * ceil32(return_data.size)) + 96] = _273
                require return_data.size >= _272 + (32 * _273) + 32
                mem[_232 + (4 * ceil32(return_data.size)) + 128 len 32 * _273] = mem[_232 + (2 * ceil32(return_data.size)) + _272 + 128 len 32 * _273]
                uint8(stor16.field_8) = 0
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = uint64(10^18 * uint64(_19))
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), uint64(10^18 * uint64(_19))
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _292 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_292] == bool(mem[_292])
                mem[mem[64]] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 64
                mem[mem[64] + 68] = mem[96]
                mem[mem[64] + 100 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if ceil32(mem[96]) <= mem[96]:
                    require ext_code.size(managerAddress)
                    call managerAddress.createNode(address arg1, string arg2) with:
                         gas gas_remaining wei
                        args msg.sender, Array(len=mem[96], data=mem[mem[64] + 100 len ceil32(mem[96])])
                else:
                    mem[mem[96] + mem[64] + 100] = 0
                    require ext_code.size(managerAddress)
                    call managerAddress.createNode(address arg1, string arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 64, mem[mem[64] + 68 len ceil32(mem[96]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b96d611c(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 65
    if ceil32(arg1.length) + 128 < 96 or ceil32(arg1.length) + 128 > test266151307():
        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length <= 0:
        revert with 0, 'NODE CREATION: 0 < NAME SIZE < 33'
    if arg1.length >= 33:
        revert with 0, 'NODE CREATION: 0 < NAME SIZE < 33'
    if not msg.sender:
        revert with 0, 'NODE CREATION:  Creation from the zero address'
    if teamAddress == msg.sender:
        revert with 0, 'NODE CREATION: Team cannot create node'
    require ext_code.size(managerAddress)
    staticcall managerAddress.price() with:
            gas gas_remaining wei
    mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _19 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    require Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] == Mask(8 * -ceil32(arg1.length) + arg1.length + 8, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    if Mask(8 * -ceil32(arg1.length) + arg1.length + 8, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] > 18:
        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
    if uint64(10^18 * Mask(8 * -ceil32(arg1.length) + arg1.length + 8, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) and arg2 > -1 / uint64(10^18 * Mask(8 * -ceil32(arg1.length) + arg1.length + 8, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]):
        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 132] = msg.sender
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(arg1.length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < uint64(10^18 * uint64(_19)) * arg2:
        revert with 0, 'NODE CREATION: Balance too low for creation.'
    mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 132] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(arg1.length) + (2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not uint8(stor16.field_0):
        mem[ceil32(arg1.length) + (4 * ceil32(return_data.size)) + 132] = msg.sender
        mem[ceil32(arg1.length) + (4 * ceil32(return_data.size)) + 164] = this.address
        mem[ceil32(arg1.length) + (4 * ceil32(return_data.size)) + 196] = uint64(10^18 * uint64(_19))
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), uint64(10^18 * uint64(_19))
        mem[ceil32(arg1.length) + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(arg1.length) + (6 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        idx = 0
        while idx < arg2:
            mem[ceil32(arg1.length) + (6 * ceil32(return_data.size)) + 128] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg1.length) + (6 * ceil32(return_data.size)) + 132] = msg.sender
            mem[ceil32(arg1.length) + (6 * ceil32(return_data.size)) + 164] = 64
            mem[ceil32(arg1.length) + (6 * ceil32(return_data.size)) + 196] = arg1.length
            s = 0
            while s < arg1.length:
                mem[s + mem[64] + 100] = mem[s + 128]
                s = s + 32
                continue 
            if ceil32(arg1.length) > arg1.length:
                mem[arg1.length + ceil32(arg1.length) + (6 * ceil32(return_data.size)) + 228] = 0
            require ext_code.size(managerAddress)
            call managerAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (2 * ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + -mem[64] + 224]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
            idx = idx + 1
            continue 
    else:
        if uint8(stor16.field_8):
            mem[ceil32(arg1.length) + (4 * ceil32(return_data.size)) + 132] = msg.sender
            mem[ceil32(arg1.length) + (4 * ceil32(return_data.size)) + 164] = this.address
            mem[ceil32(arg1.length) + (4 * ceil32(return_data.size)) + 196] = uint64(10^18 * uint64(_19))
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), uint64(10^18 * uint64(_19))
            mem[ceil32(arg1.length) + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(arg1.length) + (6 * ceil32(return_data.size)) + 128
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            idx = 0
            while idx < arg2:
                mem[mem[64]] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 64
                _144 = mem[96]
                mem[mem[64] + 68] = mem[96]
                s = 0
                while s < mem[96]:
                    mem[s + mem[64] + 100] = mem[s + 128]
                    s = s + 32
                    continue 
                if ceil32(_144) > _144:
                    mem[_144 + mem[64] + 100] = 0
                require ext_code.size(managerAddress)
                call managerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(_144) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
                idx = idx + 1
                continue 
        else:
            if msg.sender == owner:
                mem[ceil32(arg1.length) + (4 * ceil32(return_data.size)) + 132] = msg.sender
                mem[ceil32(arg1.length) + (4 * ceil32(return_data.size)) + 164] = this.address
                mem[ceil32(arg1.length) + (4 * ceil32(return_data.size)) + 196] = uint64(10^18 * uint64(_19))
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), uint64(10^18 * uint64(_19))
                mem[ceil32(arg1.length) + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg1.length) + (6 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                idx = 0
                while idx < arg2:
                    mem[ceil32(arg1.length) + (6 * ceil32(return_data.size)) + 128] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg1.length) + (6 * ceil32(return_data.size)) + 132] = msg.sender
                    mem[ceil32(arg1.length) + (6 * ceil32(return_data.size)) + 164] = 64
                    mem[ceil32(arg1.length) + (6 * ceil32(return_data.size)) + 196] = arg1.length
                    s = 0
                    while s < mem[96]:
                        mem[s + mem[64] + 100] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(arg1.length) > arg1.length:
                        mem[arg1.length + mem[64] + 100] = 0
                    require ext_code.size(managerAddress)
                    call managerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(arg1.length) + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
                    idx = idx + 1
                    continue 
            else:
                uint8(stor16.field_8) = 1
                if ext_call.return_data[0] and teamFee > -1 / ext_call.return_data[0]:
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
                mem[ceil32(arg1.length) + (4 * ceil32(return_data.size)) + 132] = teamAddress
                mem[ceil32(arg1.length) + (4 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] * teamFee / 100
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args teamAddress, ext_call.return_data[0] * teamFee / 100
                mem[ceil32(arg1.length) + (4 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0] and poolFee > -1 / ext_call.return_data[0]:
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
                mem[ceil32(arg1.length) + (6 * ceil32(return_data.size)) + 132] = poolAddress
                mem[ceil32(arg1.length) + (6 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] * poolFee / 100
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args poolAddress, ext_call.return_data[0] * poolFee / 100
                mem[ceil32(arg1.length) + (6 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0] and liquidityFee > -1 / ext_call.return_data[0]:
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
                if ext_call.return_data[0] * liquidityFee / 100 < ext_call.return_data[0] * liquidityFee / 100 / 2:
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
                mem[ceil32(arg1.length) + (7 * ceil32(return_data.size)) + 128] = 2
                mem[ceil32(arg1.length) + (7 * ceil32(return_data.size)) + 160] = tokenAddress
                require ext_code.size(routerAddress)
                staticcall routerAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[ceil32(arg1.length) + (7 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[ceil32(arg1.length) + (7 * ceil32(return_data.size)) + 192] = ext_call.return_data[12 len 20]
                mem[ceil32(arg1.length) + (8 * ceil32(return_data.size)) + 228] = routerAddress
                mem[ceil32(arg1.length) + (8 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] * liquidityFee / 100 / 2
                require ext_code.size(tokenAddress)
                call tokenAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[ceil32(arg1.length) + (8 * ceil32(return_data.size)) + 228 len ceil32(return_data.size) + 64]
                mem[ceil32(arg1.length) + (8 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(arg1.length) + (10 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[ceil32(arg1.length) + (10 * ceil32(return_data.size)) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[ceil32(arg1.length) + (10 * ceil32(return_data.size)) + 228] = ext_call.return_data[0] * liquidityFee / 100 / 2
                mem[ceil32(arg1.length) + (10 * ceil32(return_data.size)) + 260] = 0
                mem[ceil32(arg1.length) + (10 * ceil32(return_data.size)) + 292] = 160
                mem[ceil32(arg1.length) + (10 * ceil32(return_data.size)) + 388] = 2
                idx = 0
                s = ceil32(arg1.length) + (10 * ceil32(return_data.size)) + 420
                t = ceil32(arg1.length) + (7 * ceil32(return_data.size)) + 160
                while idx < mem[ceil32(arg1.length) + (7 * ceil32(return_data.size)) + 128]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(arg1.length) + (10 * ceil32(return_data.size)) + 324] = this.address
                mem[ceil32(arg1.length) + (10 * ceil32(return_data.size)) + 356] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(arg1.length) + (10 * ceil32(return_data.size)) + -mem[64] + 480]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _146 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _150 = mem[_146]
                require mem[_146] <= test266151307()
                require _146 + return_data.size > _146 + mem[_146] + 31
                _151 = mem[_146 + mem[_146]]
                if mem[_146 + mem[_146]] > test266151307():
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 65
                if (32 * mem[_146 + mem[_146]]) + 32 < 0 or _146 + ceil32(return_data.size) + (32 * mem[_146 + mem[_146]]) + 32 > test266151307():
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 65
                mem[64] = _146 + ceil32(return_data.size) + (32 * mem[_146 + mem[_146]]) + 32
                mem[_146 + ceil32(return_data.size)] = _151
                require return_data.size >= _150 + (32 * _151) + 32
                mem[_146 + ceil32(return_data.size) + 32 len 32 * _151] = mem[_146 + _150 + 32 len 32 * _151]
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
                mem[mem[64] + 4] = routerAddress
                mem[mem[64] + 36] = (ext_call.return_data[0] * liquidityFee / 100) - (ext_call.return_data[0] * liquidityFee / 100 / 2)
                require ext_code.size(tokenAddress)
                call tokenAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args routerAddress, (ext_call.return_data[0] * liquidityFee / 100) - (ext_call.return_data[0] * liquidityFee / 100 / 2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _257 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_257] == bool(mem[_257])
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = 0
                mem[mem[64] + 132] = owner
                mem[mem[64] + 164] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args tokenAddress, (ext_call.return_data[0] * liquidityFee / 100) - (ext_call.return_data[0] * liquidityFee / 100 / 2), 0, 0, owner, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = (ext_call.return_data[0] * liquidityFee / 100) - (ext_call.return_data[0] * liquidityFee / 100 / 2)
                emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] * liquidityFee / 100), 0, (ext_call.return_data[0] * liquidityFee / 100) - (ext_call.return_data[0] * liquidityFee / 100 / 2));
                mem[mem[64] + 4] = this.address
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _269 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _270 = mem[_269]
                _271 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_271 + 32 len 64] = call.data[calldata.size len 64]
                if not mem[_271]:
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 50
                mem[_271 + 32] = tokenAddress
                require ext_code.size(routerAddress)
                staticcall routerAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[_271 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _271 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 1 >= mem[_271]:
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 50
                mem[_271 + 64] = ext_call.return_data[12 len 20]
                mem[_271 + ceil32(return_data.size) + 100] = routerAddress
                mem[_271 + ceil32(return_data.size) + 132] = _270
                require ext_code.size(tokenAddress)
                call tokenAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args routerAddress, _270
                mem[_271 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _271 + (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[_271 + (2 * ceil32(return_data.size)) + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_271 + (2 * ceil32(return_data.size)) + 100] = _270
                mem[_271 + (2 * ceil32(return_data.size)) + 132] = 0
                mem[_271 + (2 * ceil32(return_data.size)) + 164] = 160
                mem[_271 + (2 * ceil32(return_data.size)) + 260] = mem[_271]
                idx = 0
                s = _271 + (2 * ceil32(return_data.size)) + 292
                t = _271 + 32
                while idx < mem[_271]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_271 + (2 * ceil32(return_data.size)) + 196] = this.address
                mem[_271 + (2 * ceil32(return_data.size)) + 228] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _271 + (2 * ceil32(return_data.size)) + (32 * mem[_271]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _310 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _311 = mem[_310]
                require mem[_310] <= test266151307()
                require _310 + return_data.size > _310 + mem[_310] + 31
                _312 = mem[_310 + mem[_310]]
                if mem[_310 + mem[_310]] > test266151307():
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 65
                if (32 * mem[_310 + mem[_310]]) + 32 < 0 or _310 + ceil32(return_data.size) + (32 * mem[_310 + mem[_310]]) + 32 > test266151307():
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 65
                mem[64] = _310 + ceil32(return_data.size) + (32 * mem[_310 + mem[_310]]) + 32
                mem[_310 + ceil32(return_data.size)] = _312
                require return_data.size >= _311 + (32 * _312) + 32
                mem[_310 + ceil32(return_data.size) + 32 len 32 * _312] = mem[_310 + _311 + 32 len 32 * _312]
                uint8(stor16.field_8) = 0
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = uint64(10^18 * uint64(_19))
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), uint64(10^18 * uint64(_19))
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _331 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_331] == bool(mem[_331])
                idx = 0
                while idx < arg2:
                    _338 = mem[64]
                    mem[mem[64]] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 64
                    _339 = mem[96]
                    mem[mem[64] + 68] = mem[96]
                    s = 0
                    while s < _339:
                        mem[s + mem[64] + 100] = mem[s + 128]
                        s = s + 32
                        continue 
                    if ceil32(_339) > _339:
                        mem[_339 + _338 + 100] = 0
                    require ext_code.size(managerAddress)
                    call managerAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_339) + _338 + -mem[64] + 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
                    idx = idx + 1
                    continue 
}

function sub_b2ecfc18(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 65
    if (32 * ('cd', 4).length) + 128 < 96 or (32 * ('cd', 4).length) + 128 > test266151307():
        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 65
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[4] + cd[s] + 67 < calldata.size
        if cd[(cd[4] + cd[s] + 36)] > test266151307():
            revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 65
        _173 = mem[64]
        if mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32 < mem[64] or mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32 > test266151307():
            revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 65
        mem[64] = mem[64] + ceil32(cd[(cd[4] + cd[s] + 36)]) + 32
        mem[_173] = cd[(cd[4] + cd[s] + 36)]
        require cd[4] + cd[s] + cd[(cd[4] + cd[s] + 36)] + 68 <= calldata.size
        mem[_173 + 32 len cd[(cd[4] + cd[s] + 36)]] = call.data[cd[4] + cd[s] + 68 len cd[(cd[4] + cd[s] + 36)]]
        mem[_173 + cd[(cd[4] + cd[s] + 36)] + 32] = 0
        mem[t] = _173
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if mem[96] != cd[36]:
        revert with 0, 'You need to provide exactly matching names'
    if not msg.sender:
        revert with 0, 'NODE CREATION:  creation from the zero address'
    if teamAddress == msg.sender:
        revert with 0, 'NODE CREATION: futur and rewardsPool cannot create node'
    require ext_code.size(managerAddress)
    staticcall managerAddress.price() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _184 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _186 = mem[_184]
    require mem[_184] == mem[_184 + 24 len 8]
    if mem[_184 + 24 len 8] > 18:
        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
    if uint64(10^18 * mem[_184 + 24 len 8]) and cd[36] > -1 / uint64(10^18 * mem[_184 + 24 len 8]):
        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
    mem[mem[64] + 4] = msg.sender
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _193 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_193] < uint64(10^18 * uint64(_186)) * cd[36]:
        revert with 0, 'NODE CREATION: Balance too low for creation.'
    mem[mem[64] + 4] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _199 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _200 = mem[_199]
    if not uint8(stor16.field_0):
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = uint64(10^18 * uint64(_186))
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), uint64(10^18 * uint64(_186))
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _205 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_205] == bool(mem[_205])
        idx = 0
        while idx < cd[36]:
            if idx >= mem[96]:
                revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 50
            _346 = mem[(32 * idx) + 128]
            if mem[mem[(32 * idx) + 128]] <= 0:
                revert with 0, 'NODE CREATION: NAME SIZE INVALID'
            if mem[mem[(32 * idx) + 128]] >= 33:
                revert with 0, 'NODE CREATION: NAME SIZE INVALID'
            mem[mem[64]] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 64
            _376 = mem[_346]
            mem[mem[64] + 68] = mem[_346]
            s = 0
            while s < _376:
                mem[s + mem[64] + 100] = mem[s + _346 + 32]
                s = s + 32
                continue 
            if ceil32(_376) > _376:
                mem[_376 + mem[64] + 100] = 0
            require ext_code.size(managerAddress)
            call managerAddress.createNode(address arg1, string arg2) with:
                 gas gas_remaining wei
                args msg.sender, 64, mem[mem[64] + 68 len ceil32(_376) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
            idx = idx + 1
            continue 
    else:
        if uint8(stor16.field_8):
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = uint64(10^18 * uint64(_186))
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), uint64(10^18 * uint64(_186))
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _207 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_207] == bool(mem[_207])
            idx = 0
            while idx < cd[36]:
                if idx >= mem[96]:
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 50
                _350 = mem[(32 * idx) + 128]
                if mem[mem[(32 * idx) + 128]] <= 0:
                    revert with 0, 'NODE CREATION: NAME SIZE INVALID'
                if mem[mem[(32 * idx) + 128]] >= 33:
                    revert with 0, 'NODE CREATION: NAME SIZE INVALID'
                _368 = mem[64]
                mem[mem[64]] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = 64
                _378 = mem[_350]
                mem[mem[64] + 68] = mem[_350]
                s = 0
                while s < _378:
                    mem[s + mem[64] + 100] = mem[s + _350 + 32]
                    s = s + 32
                    continue 
                if ceil32(_378) > _378:
                    mem[_378 + _368 + 100] = 0
                require ext_code.size(managerAddress)
                call managerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len ceil32(_378) + _368 + -mem[64] + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
                idx = idx + 1
                continue 
        else:
            if msg.sender == owner:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = uint64(10^18 * uint64(_186))
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), uint64(10^18 * uint64(_186))
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _213 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_213] == bool(mem[_213])
                idx = 0
                while idx < cd[36]:
                    if idx >= mem[96]:
                        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 50
                    _354 = mem[(32 * idx) + 128]
                    if mem[mem[(32 * idx) + 128]] <= 0:
                        revert with 0, 'NODE CREATION: NAME SIZE INVALID'
                    if mem[mem[(32 * idx) + 128]] >= 33:
                        revert with 0, 'NODE CREATION: NAME SIZE INVALID'
                    mem[mem[64]] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 64
                    _380 = mem[_354]
                    mem[mem[64] + 68] = mem[_354]
                    s = 0
                    while s < _380:
                        mem[s + mem[64] + 100] = mem[s + _354 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_380) > _380:
                        mem[_380 + mem[64] + 100] = 0
                    require ext_code.size(managerAddress)
                    call managerAddress.createNode(address arg1, string arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 64, mem[mem[64] + 68 len ceil32(_380) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
                    idx = idx + 1
                    continue 
            else:
                uint8(stor16.field_8) = 1
                if mem[_199] and teamFee > -1 / mem[_199]:
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
                mem[mem[64] + 4] = teamAddress
                mem[mem[64] + 36] = _200 * teamFee / 100
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args teamAddress, _200 * teamFee / 100
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _223 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_223] == bool(mem[_223])
                if _200 and poolFee > -1 / _200:
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
                mem[mem[64] + 4] = poolAddress
                mem[mem[64] + 36] = _200 * poolFee / 100
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args poolAddress, _200 * poolFee / 100
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _266 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_266] == bool(mem[_266])
                if _200 and liquidityFee > -1 / _200:
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
                if _200 * liquidityFee / 100 < _200 * liquidityFee / 100 / 2:
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
                _274 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_274 + 32 len 64] = call.data[calldata.size len 64]
                if not mem[_274]:
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 50
                mem[_274 + 32] = tokenAddress
                require ext_code.size(routerAddress)
                staticcall routerAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[_274 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _274 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 1 >= mem[_274]:
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 50
                mem[_274 + 64] = ext_call.return_data[12 len 20]
                mem[_274 + ceil32(return_data.size) + 100] = routerAddress
                mem[_274 + ceil32(return_data.size) + 132] = _200 * liquidityFee / 100 / 2
                require ext_code.size(tokenAddress)
                call tokenAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args routerAddress, _200 * liquidityFee / 100 / 2
                mem[_274 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _274 + (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[_274 + (2 * ceil32(return_data.size)) + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_274 + (2 * ceil32(return_data.size)) + 100] = _200 * liquidityFee / 100 / 2
                mem[_274 + (2 * ceil32(return_data.size)) + 132] = 0
                mem[_274 + (2 * ceil32(return_data.size)) + 164] = 160
                mem[_274 + (2 * ceil32(return_data.size)) + 260] = mem[_274]
                idx = 0
                s = _274 + (2 * ceil32(return_data.size)) + 292
                t = _274 + 32
                while idx < mem[_274]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_274 + (2 * ceil32(return_data.size)) + 196] = this.address
                mem[_274 + (2 * ceil32(return_data.size)) + 228] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _274 + (2 * ceil32(return_data.size)) + (32 * mem[_274]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _365 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _375 = mem[_365]
                require mem[_365] <= test266151307()
                require _365 + return_data.size > _365 + mem[_365] + 31
                _382 = mem[_365 + mem[_365]]
                if mem[_365 + mem[_365]] > test266151307():
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 65
                if (32 * mem[_365 + mem[_365]]) + 32 < 0 or _365 + ceil32(return_data.size) + (32 * mem[_365 + mem[_365]]) + 32 > test266151307():
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 65
                mem[64] = _365 + ceil32(return_data.size) + (32 * mem[_365 + mem[_365]]) + 32
                mem[_365 + ceil32(return_data.size)] = _382
                require return_data.size >= _375 + (32 * _382) + 32
                mem[_365 + ceil32(return_data.size) + 32 len 32 * _382] = mem[_365 + _375 + 32 len 32 * _382]
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
                mem[mem[64] + 4] = routerAddress
                mem[mem[64] + 36] = (_200 * liquidityFee / 100) - (_200 * liquidityFee / 100 / 2)
                require ext_code.size(tokenAddress)
                call tokenAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args routerAddress, (_200 * liquidityFee / 100) - (_200 * liquidityFee / 100 / 2)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _501 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_501] == bool(mem[_501])
                mem[mem[64] + 68] = 0
                mem[mem[64] + 100] = 0
                mem[mem[64] + 132] = owner
                mem[mem[64] + 164] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args tokenAddress, (_200 * liquidityFee / 100) - (_200 * liquidityFee / 100 / 2), 0, 0, owner, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                mem[mem[64] + 32] = 0
                mem[mem[64] + 64] = (_200 * liquidityFee / 100) - (_200 * liquidityFee / 100 / 2)
                emit SwapAndLiquify(Mask(255, 1, _200 * liquidityFee / 100), 0, (_200 * liquidityFee / 100) - (_200 * liquidityFee / 100 / 2));
                mem[mem[64] + 4] = this.address
                require ext_code.size(tokenAddress)
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _513 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _514 = mem[_513]
                _515 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_515 + 32 len 64] = call.data[calldata.size len 64]
                if not mem[_515]:
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 50
                mem[_515 + 32] = tokenAddress
                require ext_code.size(routerAddress)
                staticcall routerAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[_515 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _515 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 1 >= mem[_515]:
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 50
                mem[_515 + 64] = ext_call.return_data[12 len 20]
                mem[_515 + ceil32(return_data.size) + 100] = routerAddress
                mem[_515 + ceil32(return_data.size) + 132] = _514
                require ext_code.size(tokenAddress)
                call tokenAddress.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args routerAddress, _514
                mem[_515 + ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _515 + (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[_515 + (2 * ceil32(return_data.size)) + 96] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[_515 + (2 * ceil32(return_data.size)) + 100] = _514
                mem[_515 + (2 * ceil32(return_data.size)) + 132] = 0
                mem[_515 + (2 * ceil32(return_data.size)) + 164] = 160
                mem[_515 + (2 * ceil32(return_data.size)) + 260] = mem[_515]
                idx = 0
                s = _515 + (2 * ceil32(return_data.size)) + 292
                t = _515 + 32
                while idx < mem[_515]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_515 + (2 * ceil32(return_data.size)) + 196] = this.address
                mem[_515 + (2 * ceil32(return_data.size)) + 228] = block.timestamp
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args _514, 0, 160, address(this.address), block.timestamp, mem[_515 + (2 * ceil32(return_data.size)) + 260 len (32 * mem[_515]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_515 + (2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = _515 + (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                _565 = mem[_515 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _514) >> 32
                require mem[_515 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _514) >> 32 <= test266151307()
                require _515 + (2 * ceil32(return_data.size)) + return_data.size + 96 > _515 + (2 * ceil32(return_data.size)) + mem[_515 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _514) >> 32 + 127
                _566 = mem[_515 + (2 * ceil32(return_data.size)) + mem[_515 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _514) >> 32 + 96]
                if mem[_515 + (2 * ceil32(return_data.size)) + mem[_515 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _514) >> 32 + 96] > test266151307():
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 65
                if (32 * mem[_515 + (2 * ceil32(return_data.size)) + mem[_515 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _514) >> 32 + 96]) + 32 < 0 or _515 + (4 * ceil32(return_data.size)) + (32 * mem[_515 + (2 * ceil32(return_data.size)) + mem[_515 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _514) >> 32 + 96]) + 128 > test266151307():
                    revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 65
                mem[64] = _515 + (4 * ceil32(return_data.size)) + (32 * mem[_515 + (2 * ceil32(return_data.size)) + mem[_515 + (2 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, _514) >> 32 + 96]) + 128
                mem[_515 + (4 * ceil32(return_data.size)) + 96] = _566
                require return_data.size >= _565 + (32 * _566) + 32
                mem[_515 + (4 * ceil32(return_data.size)) + 128 len 32 * _566] = mem[_515 + (2 * ceil32(return_data.size)) + _565 + 128 len 32 * _566]
                uint8(stor16.field_8) = 0
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = this.address
                mem[mem[64] + 68] = uint64(10^18 * uint64(_186))
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), uint64(10^18 * uint64(_186))
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _595 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_595] == bool(mem[_595])
                idx = 0
                while idx < cd[36]:
                    if idx >= mem[96]:
                        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 50
                    _613 = mem[(32 * idx) + 128]
                    if mem[mem[(32 * idx) + 128]] <= 0:
                        revert with 0, 'NODE CREATION: NAME SIZE INVALID'
                    if mem[mem[(32 * idx) + 128]] >= 33:
                        revert with 0, 'NODE CREATION: NAME SIZE INVALID'
                    mem[mem[64]] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = 64
                    _622 = mem[_613]
                    mem[mem[64] + 68] = mem[_613]
                    s = 0
                    while s < _622:
                        mem[s + mem[64] + 100] = mem[s + _613 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_622) > _622:
                        mem[_622 + mem[64] + 100] = 0
                    require ext_code.size(managerAddress)
                    call managerAddress.createNode(address arg1, string arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 64, mem[mem[64] + 68 len ceil32(_622) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx == -1:
                        revert with Mask(32, 224, code.data[19507 len 32]) >> 224, 17
                    idx = idx + 1
                    continue 
}



}
