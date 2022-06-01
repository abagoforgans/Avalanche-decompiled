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
        revert with 'NH{q', 50
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

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
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

function updateTeamAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    teamAddress = arg1
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

function sub_75aa4ad9(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 'NH{q', 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = 128
    idx = cd[4] + 36
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= ('cd', 4).length:
        revert with 'NH{q', 50
    teamFee = mem[128]
    if 1 >= ('cd', 4).length:
        revert with 'NH{q', 50
    poolFee = mem[160]
}

function updatePoolAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args poolAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call poolAddress.pay(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    create contract with 0 wei
                    code: code.data[13844 len 1567], arg1
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    poolAddress = address(create.new_address)
}

function claim(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'HELPER: creation from the zero address'
    if teamAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'HELPER: team cannot cashout rewards'
    call managerAddress.claim(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'HELPER: You don't have enough reward to cash out'
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
        revert with 'NH{q', 17
    if eth.balance(this.address) + totalReleased and shares[address(arg1)] > -1 / eth.balance(this.address) + totalReleased:
        revert with 'NH{q', 17
    if not totalShares:
        revert with 'NH{q', 18
    if (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares < released[address(arg1)]:
        revert with 'NH{q', 17
    if not ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account is not due payment'
    if released[address(arg1)] > !(((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]):
        revert with 'NH{q', 17
    released[address(arg1)] = (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares
    if totalReleased > !(((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]):
        revert with 'NH{q', 17
    totalReleased = totalReleased + ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]
    if eth.balance(this.address) < ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]:
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

function createNodeWithTokens(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
    if arg1.length <= 0:
        revert with 0, 'HELPER: name size is invalid'
    if arg1.length >= 33:
        revert with 0, 'HELPER: name size is invalid'
    if not msg.sender:
        revert with 0, 'HELPER:  Creation from the zero address'
    if teamAddress == msg.sender:
        revert with 0, 'HELPER: Team cannot create node'
    call managerAddress.price() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[24 len 8]
    if ext_call.return_data[24 len 8] > 18:
        revert with 'NH{q', 17
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < uint64(10^18 * uint64(ext_call.return_data[0])):
        revert with 0, 'HELPER: Balance too low for creation.'
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, uint64(10^18 * uint64(ext_call.return_data[0]))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and teamFee > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args teamAddress, ext_call.return_data[0] * teamFee / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0] and poolFee > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args poolAddress, ext_call.return_data[0] * poolFee / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(managerAddress)
    call managerAddress.0x12b8603f with:
         gas gas_remaining wei
        args msg.sender, Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function release(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not shares[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account has no shares'
    mem[100] = this.address
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !totalReleased[address(arg1)]:
        revert with 'NH{q', 17
    if ext_call.return_data[0] + totalReleased[address(arg1)] and shares[address(arg2)] > -1 / ext_call.return_data[0] + totalReleased[address(arg1)]:
        revert with 'NH{q', 17
    if not totalShares:
        revert with 'NH{q', 18
    if (ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares < released[address(arg1)][address(arg2)]:
        revert with 'NH{q', 17
    if not ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]:
        revert with 0, 'PaymentSplitter: account is not due payment'
    if released[address(arg1)][address(arg2)] > !(((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]):
        revert with 'NH{q', 17
    released[address(arg1)][address(arg2)] = (ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares
    if totalReleased[address(arg1)] > !(((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]):
        revert with 'NH{q', 17
    totalReleased[address(arg1)] = totalReleased[address(arg1)] + ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]
    mem[ceil32(return_data.size) + 132] = arg2
    mem[ceil32(return_data.size) + 164] = ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
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
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
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

function claimAll(uint256[] arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'HELPER: creation from the zero address'
    if teamAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'HELPER: team cannot cashout rewards'
    idx = 0
    s = 0
    while idx < arg1.length:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = cd[((32 * idx) + arg1 + 36)]
        call managerAddress.claim(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, cd[((32 * idx) + arg1 + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _18 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if s > !mem[_18]:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[_18]
        continue 
    if s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length <= 0:
        revert with 0, 'HELPER: You don't have enough reward to cash out'
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length
    call poolAddress.pay(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _16 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_16] == bool(mem[_16])
}

function sub_b96d611c(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 'NH{q', 65
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
    call managerAddress.price() with:
         gas gas_remaining wei
    mem[ceil32(ceil32(arg1.length)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[24 len 8]
    if ext_call.return_data[24 len 8] > 18:
        revert with 'NH{q', 17
    if uint64(10^18 * ext_call.return_data[24 len 8]) and arg2 > -1 / uint64(10^18 * ext_call.return_data[24 len 8]):
        revert with 'NH{q', 17
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 101] = msg.sender
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < uint64(10^18 * uint64(ext_call.return_data[0])) * arg2:
        revert with 0, 'HELPER: Balance too low for creation.'
    if uint64(10^18 * uint64(ext_call.return_data[0])) and arg2 > -1 / uint64(10^18 * uint64(ext_call.return_data[0])):
        revert with 'NH{q', 17
    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 101] = msg.sender
    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 133] = this.address
    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 165] = uint64(10^18 * uint64(ext_call.return_data[0])) * arg2
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), uint64(10^18 * uint64(ext_call.return_data[0])) * arg2
    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 101] = this.address
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and teamFee > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 101] = teamAddress
    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 133] = ext_call.return_data[0] * teamFee / 100
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args teamAddress, ext_call.return_data[0] * teamFee / 100
    mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0] and poolFee > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 101] = poolAddress
    mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 133] = ext_call.return_data[0] * poolFee / 100
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args poolAddress, ext_call.return_data[0] * poolFee / 100
    mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 97
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    idx = 0
    while idx < arg2:
        _43 = mem[64]
        mem[mem[64]] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = 64
        _44 = mem[96]
        mem[mem[64] + 68] = mem[96]
        s = 0
        while s < _44:
            mem[s + mem[64] + 100] = mem[s + 128]
            s = s + 32
            continue 
        if ceil32(_44) > _44:
            mem[_44 + _43 + 100] = 0
        require ext_code.size(managerAddress)
        call managerAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len ceil32(_44) + _43 + -mem[64] + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_b2ecfc18(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        require cd[idx] <= test266151307()
        require cd[4] + cd[idx] + 67 < calldata.size
        if cd[(cd[4] + cd[idx] + 36)] > test266151307():
            revert with 'NH{q', 65
        _59 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1
        mem[_59] = cd[(cd[4] + cd[idx] + 36)]
        require cd[4] + cd[idx] + cd[(cd[4] + cd[idx] + 36)] + 68 <= calldata.size
        mem[_59 + 32 len cd[(cd[4] + cd[idx] + 36)]] = call.data[cd[4] + cd[idx] + 68 len cd[(cd[4] + cd[idx] + 36)]]
        mem[_59 + cd[(cd[4] + cd[idx] + 36)] + 32] = 0
        mem[s] = _59
        idx = idx + 32
        s = s + 32
        continue 
    if mem[96] != cd[36]:
        revert with 0, 'HELPER: You need to provide exactly matching names'
    if not msg.sender:
        revert with 0, 'HELPER:  creation from the zero address'
    if teamAddress == msg.sender:
        revert with 0, 'HELPER: futur and rewardsPool cannot create node'
    call managerAddress.price() with:
         gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _57 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _60 = mem[_57]
    require mem[_57] == mem[_57 + 24 len 8]
    if mem[_57 + 24 len 8] > 18:
        revert with 'NH{q', 17
    if uint64(10^18 * mem[_57 + 24 len 8]) and cd[36] > -1 / uint64(10^18 * mem[_57 + 24 len 8]):
        revert with 'NH{q', 17
    mem[mem[64] + 4] = msg.sender
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _63 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_63] < uint64(10^18 * uint64(_60)) * cd[36]:
        revert with 0, 'HELPER: Balance too low for creation.'
    if uint64(10^18 * uint64(_60)) and cd[36] > -1 / uint64(10^18 * uint64(_60)):
        revert with 'NH{q', 17
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = this.address
    mem[mem[64] + 68] = uint64(10^18 * uint64(_60)) * cd[36]
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), uint64(10^18 * uint64(_60)) * cd[36]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _69 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_69] == bool(mem[_69])
    mem[mem[64] + 4] = this.address
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _73 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _74 = mem[_73]
    if mem[_73] and teamFee > -1 / mem[_73]:
        revert with 'NH{q', 17
    mem[mem[64] + 4] = teamAddress
    mem[mem[64] + 36] = _74 * teamFee / 100
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args teamAddress, _74 * teamFee / 100
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _77 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_77] == bool(mem[_77])
    if _74 and poolFee > -1 / _74:
        revert with 'NH{q', 17
    mem[mem[64] + 4] = poolAddress
    mem[mem[64] + 36] = _74 * poolFee / 100
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args poolAddress, _74 * poolFee / 100
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _81 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_81] == bool(mem[_81])
    idx = 0
    while idx < cd[36]:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _97 = mem[(32 * idx) + 128]
        if mem[mem[(32 * idx) + 128]] <= 0:
            revert with 0, 'HELPER: name size is invalid'
        if mem[mem[(32 * idx) + 128]] >= 33:
            revert with 0, 'HELPER: name size is invalid'
        mem[mem[64]] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = 64
        _105 = mem[_97]
        mem[mem[64] + 68] = mem[_97]
        s = 0
        while s < _105:
            mem[s + mem[64] + 100] = mem[s + _97 + 32]
            s = s + 32
            continue 
        if ceil32(_105) > _105:
            mem[_105 + mem[64] + 100] = 0
        require ext_code.size(managerAddress)
        call managerAddress.0x12b8603f with:
             gas gas_remaining wei
            args msg.sender, 64, mem[mem[64] + 68 len ceil32(_105) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
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
            revert with 'NH{q', 50
        require cd[((32 * idx) + cd[4] + 36)] == uint64(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64]] = 0xcdd9f4ed00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = uint64(cd[((32 * idx) + cd[4] + 36)])
        staticcall sub_08b995caAddress.0xcdd9f4ed with:
                gas gas_remaining wei
               args (cd[((32 * idx) + cd[4] + 36)] << 192)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _40 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _41 = mem[_40]
        require mem[_40] <= test266151307()
        require _40 + return_data.size > _40 + mem[_40] + 31
        _42 = mem[_40 + mem[_40]]
        if mem[_40 + mem[_40]] > test266151307():
            revert with 'NH{q', 65
        if ceil32(ceil32(mem[_40 + mem[_40]])) + 1 < 0 or _40 + ceil32(return_data.size) + ceil32(ceil32(mem[_40 + mem[_40]])) + 1 > test266151307():
            revert with 'NH{q', 65
        mem[64] = _40 + ceil32(return_data.size) + ceil32(ceil32(mem[_40 + mem[_40]])) + 1
        mem[_40 + ceil32(return_data.size)] = _42
        require _41 + _42 + 32 <= return_data.size
        s = 0
        while s < _42:
            mem[s + _40 + ceil32(return_data.size) + 32] = mem[s + _40 + _41 + 32]
            s = s + 32
            continue 
        if ceil32(_42) <= _42:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + 36)] == uint64(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = uint64(cd[((32 * idx) + cd[4] + 36)])
            staticcall sub_08b995caAddress.0x697689f5 with:
                    gas gas_remaining wei
                   args (cd[((32 * idx) + cd[4] + 36)] << 192)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _76 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _78 = mem[_76]
            require mem[_76] == mem[_76 + 24 len 8]
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + 36)] == uint64(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = uint64(cd[((32 * idx) + cd[4] + 36)])
            staticcall sub_08b995caAddress.0x10910f3c with:
                    gas gas_remaining wei
                   args (cd[((32 * idx) + cd[4] + 36)] << 192)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _84 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _86 = mem[_84]
            require mem[_84] == mem[_84 + 24 len 8]
            _88 = mem[64]
            mem[mem[64]] = 0xb7182a00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = _42
            s = 0
            while s < _42:
                mem[s + mem[64] + 164] = mem[s + _40 + ceil32(return_data.size) + 32]
                s = s + 32
                continue 
            if ceil32(_42) > _42:
                mem[_42 + _88 + 164] = 0
            mem[_88 + 68] = uint64(_78)
            mem[_88 + 100] = uint64(_86)
            require ext_code.size(managerAddress)
            call managerAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len ceil32(_42) + _88 + -mem[64] + 160]
        else:
            mem[_42 + _40 + ceil32(return_data.size) + 32] = 0
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + 36)] == uint64(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = uint64(cd[((32 * idx) + cd[4] + 36)])
            staticcall sub_08b995caAddress.0x697689f5 with:
                    gas gas_remaining wei
                   args (cd[((32 * idx) + cd[4] + 36)] << 192)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _77 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _79 = mem[_77]
            require mem[_77] == mem[_77 + 24 len 8]
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + 36)] == uint64(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = uint64(cd[((32 * idx) + cd[4] + 36)])
            staticcall sub_08b995caAddress.0x10910f3c with:
                    gas gas_remaining wei
                   args (cd[((32 * idx) + cd[4] + 36)] << 192)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _85 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _87 = mem[_85]
            require mem[_85] == mem[_85 + 24 len 8]
            _89 = mem[64]
            mem[mem[64]] = 0xb7182a00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = _42
            s = 0
            while s < _42:
                mem[s + mem[64] + 164] = mem[s + _40 + ceil32(return_data.size) + 32]
                s = s + 32
                continue 
            if ceil32(_42) > _42:
                mem[_42 + _89 + 164] = 0
            mem[_89 + 68] = uint64(_79)
            mem[_89 + 100] = uint64(_87)
            require ext_code.size(managerAddress)
            call managerAddress.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len ceil32(_42) + _89 + -mem[64] + 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function _fallback() payable {
    mem[64] = 128
    if calldata.size < 4:
        require not calldata.size
        emit PaymentReceived(msg.sender, msg.value);
    else:
        if unknown_0x8b83209b(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x3a98ef39(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x16f0115b(?????) > uint32(call.func_hash) >> 224:
                    if poolFee() == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return poolFee
                    if unknown_0x08b995ca(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_08b995caAddress
                    require unknown_0x14eb76ac(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    teamAddress = address(cd[4])
                else:
                    if unknown_0x16f0115b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return poolAddress
                    if unknown_0x19165587(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if not shares[address(cd[4])]:
                            revert with 0, 'PaymentSplitter: account has no shares'
                        if eth.balance(this.address) > !totalReleased:
                            revert with 'NH{q', 17
                        if eth.balance(this.address) + totalReleased and shares[address(cd[4])] > -1 / eth.balance(this.address) + totalReleased:
                            revert with 'NH{q', 17
                        if not totalShares:
                            revert with 'NH{q', 18
                        if (eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares < released[address(cd[4])]:
                            revert with 'NH{q', 17
                        if not ((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])]:
                            revert with 0, 'PaymentSplitter: account is not due payment'
                        if released[address(cd[4])] > !(((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])]):
                            revert with 'NH{q', 17
                        released[address(cd[4])] = (eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares
                        if totalReleased > !(((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])]):
                            revert with 'NH{q', 17
                        totalReleased = totalReleased + ((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])]
                        if eth.balance(this.address) < ((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])]:
                            revert with 0, 'Address: insufficient balance'
                        call address(cd[4]) with:
                           value ((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])] wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                        emit PaymentReleased(address(cd[4]), ((eth.balance(this.address) * shares[address(cd[4])]) + (totalReleased * shares[address(cd[4])]) / totalShares) - released[address(cd[4])]);
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0x28c77820(?????):
                            require unknown_0x379607f5(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if not msg.sender:
                                revert with 0, 'HELPER: creation from the zero address'
                            if teamAddress == msg.sender:
                                revert with 0, 'HELPER: team cannot cashout rewards'
                            call managerAddress.claim(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, cd[4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'HELPER: You don't have enough reward to cash out'
                            call poolAddress.pay(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] <= test266151307()
                            require cd[4] + 35 < calldata.size
                            require ('cd', 4).length <= test266151307()
                            require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                            if not msg.sender:
                                revert with 0, 'HELPER: creation from the zero address'
                            if teamAddress == msg.sender:
                                revert with 0, 'HELPER: team cannot cashout rewards'
                            idx = 0
                            s = 0
                            while idx < ('cd', 4).length:
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = cd[((32 * idx) + cd[4] + 36)]
                                call managerAddress.claim(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _387 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if s > !mem[_387]:
                                    revert with 'NH{q', 17
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = s + mem[_387]
                                continue 
                            if s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length <= 0:
                                revert with 0, 'HELPER: You don't have enough reward to cash out'
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length
                            call poolAddress.pay(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, s * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length * ('cd', 4).length
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _385 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_385] == bool(mem[_385])
            else:
                if unknown_0x48b75044(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x3a98ef39(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return totalShares
                    if unknown_0x406072a9(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        return released[address(cd[4])][address(cd[36])]
                    if uint32(call.func_hash) >> 224 != unknown_0x42bc9fca(?????):
                        require unknown_0x481c6a75(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return managerAddress
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    poolFee = cd[4]
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x48b75044(?????):
                        if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            owner = 0
                            emit OwnershipTransferred(owner, 0);
                        else:
                            if uint32(call.func_hash) >> 224 != unknown_0x75aa4ad9(?????):
                                require unknown_0x85f2aef2(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                return teamAddress
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] <= test266151307()
                            require calldata.size > cd[4] + 35
                            if ('cd', 4).length > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                                revert with 'NH{q', 65
                            require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                            s = 160
                            idx = cd[4] + 36
                            while idx < cd[4] + (32 * ('cd', 4).length) + 36:
                                mem[s] = cd[idx]
                                s = s + 32
                                idx = idx + 32
                                continue 
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if 0 >= ('cd', 4).length:
                                revert with 'NH{q', 50
                            teamFee = mem[160]
                            if 1 >= ('cd', 4).length:
                                revert with 'NH{q', 50
                            poolFee = mem[192]
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        if not shares[address(cd[36])]:
                            revert with 0, 'PaymentSplitter: account has no shares'
                        mem[132] = this.address
                        staticcall address(cd[4]).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > !totalReleased[address(cd[4])]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] + totalReleased[address(cd[4])] and shares[address(cd[36])] > -1 / ext_call.return_data[0] + totalReleased[address(cd[4])]:
                            revert with 'NH{q', 17
                        if not totalShares:
                            revert with 'NH{q', 18
                        if (ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares < released[address(cd[4])][address(cd[36])]:
                            revert with 'NH{q', 17
                        if not ((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])]:
                            revert with 0, 'PaymentSplitter: account is not due payment'
                        if released[address(cd[4])][address(cd[36])] > !(((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])]):
                            revert with 'NH{q', 17
                        released[address(cd[4])][address(cd[36])] = (ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares
                        if totalReleased[address(cd[4])] > !(((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])]):
                            revert with 'NH{q', 17
                        totalReleased[address(cd[4])] = totalReleased[address(cd[4])] + ((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])]
                        mem[ceil32(return_data.size) + 164] = address(cd[36])
                        mem[ceil32(return_data.size) + 196] = ((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])]
                        mem[ceil32(return_data.size) + 128] = 68
                        mem[ceil32(return_data.size) + 164 len 28] = address(cd[36]) << 64
                        mem[ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 228] = 32
                        mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(cd[4])):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), address(cd[36]) << 64, 0, ((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])], 0
                        mem[ceil32(return_data.size) + 360] = 0
                        call address(cd[4]) with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(cd[36]) << 64, 0, ((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(cd[36]) << 64, 0, ((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])], 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                                if not mem[ceil32(return_data.size) + 324]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        emit ERC20PaymentReleased(address(cd[36]), ((ext_call.return_data[0] * shares[address(cd[36])]) + (totalReleased[address(cd[4])] * shares[address(cd[36])]) / totalShares) - released[address(cd[4])][address(cd[36])], address(cd[4]));
        else:
            if unknown_0xce7c2ac2(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xe33b7de3(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xe33b7de3(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return totalReleased
                    if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(cd[4]):
                            revert with 0, 'Ownable: new owner is the zero address'
                        owner = address(cd[4])
                        emit OwnershipTransferred(owner, address(cd[4]));
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0xf689d8fc(?????):
                            require unknown_0xfc0c546a(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return tokenAddress
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
                                revert with 'NH{q', 50
                            require cd[((32 * idx) + cd[4] + 36)] == uint64(cd[((32 * idx) + cd[4] + 36)])
                            mem[mem[64]] = 0xcdd9f4ed00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint64(cd[((32 * idx) + cd[4] + 36)])
                            staticcall sub_08b995caAddress.0xcdd9f4ed with:
                                    gas gas_remaining wei
                                   args (cd[((32 * idx) + cd[4] + 36)] << 192)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _470 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _482 = mem[_470]
                            require mem[_470] <= test266151307()
                            require _470 + return_data.size > _470 + mem[_470] + 31
                            _492 = mem[_470 + mem[_470]]
                            if mem[_470 + mem[_470]] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(ceil32(mem[_470 + mem[_470]])) + 1 < 0 or _470 + ceil32(return_data.size) + ceil32(ceil32(mem[_470 + mem[_470]])) + 1 > test266151307():
                                revert with 'NH{q', 65
                            mem[64] = _470 + ceil32(return_data.size) + ceil32(ceil32(mem[_470 + mem[_470]])) + 1
                            mem[_470 + ceil32(return_data.size)] = _492
                            require _482 + _492 + 32 <= return_data.size
                            s = 0
                            while s < _492:
                                mem[s + _470 + ceil32(return_data.size) + 32] = mem[s + _470 + _482 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_492) <= _492:
                                if idx >= ('cd', 4).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[4] + 36)] == uint64(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 4] = uint64(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_08b995caAddress.0x697689f5 with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 192)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _583 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _585 = mem[_583]
                                require mem[_583] == mem[_583 + 24 len 8]
                                if idx >= ('cd', 4).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[4] + 36)] == uint64(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 4] = uint64(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_08b995caAddress.0x10910f3c with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 192)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _593 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _595 = mem[_593]
                                require mem[_593] == mem[_593 + 24 len 8]
                                mem[mem[64]] = 0xb7182a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = _492
                                s = 0
                                while s < _492:
                                    mem[s + mem[64] + 164] = mem[s + _470 + ceil32(return_data.size) + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_492) > _492:
                                    mem[_492 + mem[64] + 164] = 0
                                mem[mem[64] + 68] = uint64(_585)
                                mem[mem[64] + 100] = uint64(_595)
                                require ext_code.size(managerAddress)
                                call managerAddress.0xb7182a with:
                                     gas gas_remaining wei
                                    args msg.sender, Array(len=_492, data=mem[mem[64] + 164 len ceil32(_492)]), _585 << 192, uint64(_595)
                            else:
                                mem[_492 + _470 + ceil32(return_data.size) + 32] = 0
                                if idx >= ('cd', 4).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[4] + 36)] == uint64(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 4] = uint64(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_08b995caAddress.0x697689f5 with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 192)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _584 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _586 = mem[_584]
                                require mem[_584] == mem[_584 + 24 len 8]
                                if idx >= ('cd', 4).length:
                                    revert with 'NH{q', 50
                                require cd[((32 * idx) + cd[4] + 36)] == uint64(cd[((32 * idx) + cd[4] + 36)])
                                mem[mem[64] + 4] = uint64(cd[((32 * idx) + cd[4] + 36)])
                                staticcall sub_08b995caAddress.0x10910f3c with:
                                        gas gas_remaining wei
                                       args (cd[((32 * idx) + cd[4] + 36)] << 192)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _594 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _596 = mem[_594]
                                require mem[_594] == mem[_594 + 24 len 8]
                                mem[mem[64]] = 0xb7182a00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 128
                                mem[mem[64] + 132] = _492
                                s = 0
                                while s < _492:
                                    mem[s + mem[64] + 164] = mem[s + _470 + ceil32(return_data.size) + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_492) > _492:
                                    mem[_492 + mem[64] + 164] = 0
                                mem[mem[64] + 68] = uint64(_586)
                                mem[mem[64] + 100] = uint64(_596)
                                require ext_code.size(managerAddress)
                                call managerAddress.0xb7182a with:
                                     gas gas_remaining wei
                                    args msg.sender, Array(len=_492, data=mem[mem[64] + 164 len ceil32(_492)]), _586 << 192, uint64(_596)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            continue 
                else:
                    if unknown_0xce7c2ac2(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return shares[address(cd[4])]
                    if uint32(call.func_hash) >> 224 != unknown_0xd00f9db1(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0xd79779b2(?????):
                            require unknown_0xd7c94efd(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return teamFee
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return totalReleased[address(cd[4])]
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args poolAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    call poolAddress.pay(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args owner, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    create contract with 0 wei
                                    code: code.data[13844 len 1567], address(cd[4])
                    if not create.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    poolAddress = address(create.new_address)
            else:
                if unknown_0x9852595c(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x8b83209b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if cd[4] >= payee.length:
                            revert with 'NH{q', 50
                        return payee[cd[4]]
                    if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return owner
                    require unknown_0x8f0ba4ca(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] <= test266151307()
                    require cd[4] + 35 < calldata.size
                    if ('cd', 4).length > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(ceil32(('cd', 4).length)) + 129 < 128 or ceil32(ceil32(('cd', 4).length)) + 129 > test266151307():
                        revert with 'NH{q', 65
                    require cd[4] + ('cd', 4).length + 36 <= calldata.size
                    if ('cd', 4).length <= 0:
                        revert with 0, 'HELPER: name size is invalid'
                    if ('cd', 4).length >= 33:
                        revert with 0, 'HELPER: name size is invalid'
                    if not msg.sender:
                        revert with 0, 'HELPER:  Creation from the zero address'
                    if teamAddress == msg.sender:
                        revert with 0, 'HELPER: Team cannot create node'
                    call managerAddress.price() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[24 len 8]
                    if ext_call.return_data[24 len 8] > 18:
                        revert with 'NH{q', 17
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < uint64(10^18 * uint64(ext_call.return_data[0])):
                        revert with 0, 'HELPER: Balance too low for creation.'
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, uint64(10^18 * uint64(ext_call.return_data[0]))
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] and teamFee > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args teamAddress, ext_call.return_data[0] * teamFee / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if ext_call.return_data[0] and poolFee > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args poolAddress, ext_call.return_data[0] * poolFee / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(managerAddress)
                    call managerAddress.0x12b8603f with:
                         gas gas_remaining wei
                        args msg.sender, Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if unknown_0x9852595c(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return released[address(cd[4])]
                    if unknown_0xacedf07c(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        teamFee = cd[4]
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0xb2ecfc18(?????):
                            require unknown_0xb96d611c(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[4] <= test266151307()
                            require cd[4] + 35 < calldata.size
                            if ('cd', 4).length > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(ceil32(('cd', 4).length)) + 129 < 128 or ceil32(ceil32(('cd', 4).length)) + 129 > test266151307():
                                revert with 'NH{q', 65
                            mem[128] = ('cd', 4).length
                            require cd[4] + ('cd', 4).length + 36 <= calldata.size
                            mem[160 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
                            mem[('cd', 4).length + 160] = 0
                            if ('cd', 4).length <= 0:
                                revert with 0, 'HELPER: name size is invalid'
                            if ('cd', 4).length >= 33:
                                revert with 0, 'HELPER: name size is invalid'
                            if not msg.sender:
                                revert with 0, 'HELPER:  Creation from the zero address'
                            if teamAddress == msg.sender:
                                revert with 0, 'HELPER: Team cannot create node'
                            call managerAddress.price() with:
                                 gas gas_remaining wei
                            mem[ceil32(ceil32(('cd', 4).length)) + 129] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[24 len 8]
                            if ext_call.return_data[24 len 8] > 18:
                                revert with 'NH{q', 17
                            if uint64(10^18 * ext_call.return_data[24 len 8]) and cd[36] > -1 / uint64(10^18 * ext_call.return_data[24 len 8]):
                                revert with 'NH{q', 17
                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 133] = msg.sender
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[ceil32(ceil32(('cd', 4).length)) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < uint64(10^18 * uint64(ext_call.return_data[0])) * cd[36]:
                                revert with 0, 'HELPER: Balance too low for creation.'
                            if uint64(10^18 * uint64(ext_call.return_data[0])) and cd[36] > -1 / uint64(10^18 * uint64(ext_call.return_data[0])):
                                revert with 'NH{q', 17
                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 133] = msg.sender
                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 165] = this.address
                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 197] = uint64(10^18 * uint64(ext_call.return_data[0])) * cd[36]
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), uint64(10^18 * uint64(ext_call.return_data[0])) * cd[36]
                            mem[ceil32(ceil32(('cd', 4).length)) + (2 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 133] = this.address
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(ceil32(('cd', 4).length)) + (4 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] and teamFee > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 133] = teamAddress
                            mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 165] = ext_call.return_data[0] * teamFee / 100
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args teamAddress, ext_call.return_data[0] * teamFee / 100
                            mem[ceil32(ceil32(('cd', 4).length)) + (6 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if ext_call.return_data[0] and poolFee > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            mem[ceil32(ceil32(('cd', 4).length)) + (7 * ceil32(return_data.size)) + 133] = poolAddress
                            mem[ceil32(ceil32(('cd', 4).length)) + (7 * ceil32(return_data.size)) + 165] = ext_call.return_data[0] * poolFee / 100
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args poolAddress, ext_call.return_data[0] * poolFee / 100
                            mem[ceil32(ceil32(('cd', 4).length)) + (7 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(ceil32(('cd', 4).length)) + (8 * ceil32(return_data.size)) + 129
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            idx = 0
                            while idx < cd[36]:
                                _379 = mem[64]
                                mem[mem[64]] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 64
                                _389 = mem[128]
                                mem[mem[64] + 68] = mem[128]
                                s = 0
                                while s < _389:
                                    mem[s + mem[64] + 100] = mem[s + 160]
                                    s = s + 32
                                    continue 
                                if ceil32(_389) > _389:
                                    mem[_389 + _379 + 100] = 0
                                require ext_code.size(managerAddress)
                                call managerAddress.mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len ceil32(_389) + _379 + -mem[64] + 96]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[4] <= test266151307()
                            require cd[4] + 35 < calldata.size
                            if ('cd', 4).length > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                                revert with 'NH{q', 65
                            mem[64] = ceil32(32 * ('cd', 4).length) + 129
                            mem[128] = ('cd', 4).length
                            require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
                            idx = cd[4] + 36
                            s = 160
                            while idx < cd[4] + (32 * ('cd', 4).length) + 36:
                                require cd[idx] <= test266151307()
                                require cd[4] + cd[idx] + 67 < calldata.size
                                if cd[(cd[4] + cd[idx] + 36)] > test266151307():
                                    revert with 'NH{q', 65
                                _418 = mem[64]
                                if mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1 > test266151307():
                                    revert with 'NH{q', 65
                                mem[64] = mem[64] + ceil32(ceil32(cd[(cd[4] + cd[idx] + 36)])) + 1
                                mem[_418] = cd[(cd[4] + cd[idx] + 36)]
                                require cd[4] + cd[idx] + cd[(cd[4] + cd[idx] + 36)] + 68 <= calldata.size
                                mem[_418 + 32 len cd[(cd[4] + cd[idx] + 36)]] = call.data[cd[4] + cd[idx] + 68 len cd[(cd[4] + cd[idx] + 36)]]
                                mem[_418 + cd[(cd[4] + cd[idx] + 36)] + 32] = 0
                                mem[s] = _418
                                idx = idx + 32
                                s = s + 32
                                continue 
                            if mem[128] != cd[36]:
                                revert with 0, 'HELPER: You need to provide exactly matching names'
                            if not msg.sender:
                                revert with 0, 'HELPER:  creation from the zero address'
                            if teamAddress == msg.sender:
                                revert with 0, 'HELPER: futur and rewardsPool cannot create node'
                            call managerAddress.price() with:
                                 gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _412 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _429 = mem[_412]
                            require mem[_412] == mem[_412 + 24 len 8]
                            if mem[_412 + 24 len 8] > 18:
                                revert with 'NH{q', 17
                            if uint64(10^18 * mem[_412 + 24 len 8]) and cd[36] > -1 / uint64(10^18 * mem[_412 + 24 len 8]):
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = msg.sender
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _481 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_481] < uint64(10^18 * uint64(_429)) * cd[36]:
                                revert with 0, 'HELPER: Balance too low for creation.'
                            if uint64(10^18 * uint64(_429)) and cd[36] > -1 / uint64(10^18 * uint64(_429)):
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = this.address
                            mem[mem[64] + 68] = uint64(10^18 * uint64(_429)) * cd[36]
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), uint64(10^18 * uint64(_429)) * cd[36]
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _498 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_498] == bool(mem[_498])
                            mem[mem[64] + 4] = this.address
                            staticcall tokenAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _503 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _504 = mem[_503]
                            if mem[_503] and teamFee > -1 / mem[_503]:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = teamAddress
                            mem[mem[64] + 36] = _504 * teamFee / 100
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args teamAddress, _504 * teamFee / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _513 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_513] == bool(mem[_513])
                            if _504 and poolFee > -1 / _504:
                                revert with 'NH{q', 17
                            mem[mem[64] + 4] = poolAddress
                            mem[mem[64] + 36] = _504 * poolFee / 100
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args poolAddress, _504 * poolFee / 100
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _519 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_519] == bool(mem[_519])
                            idx = 0
                            while idx < cd[36]:
                                if idx >= mem[128]:
                                    revert with 'NH{q', 50
                                _559 = mem[(32 * idx) + 160]
                                if mem[mem[(32 * idx) + 160]] <= 0:
                                    revert with 0, 'HELPER: name size is invalid'
                                if mem[mem[(32 * idx) + 160]] >= 33:
                                    revert with 0, 'HELPER: name size is invalid'
                                mem[mem[64]] = 0x12b8603f00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = 64
                                _577 = mem[_559]
                                mem[mem[64] + 68] = mem[_559]
                                s = 0
                                while s < _577:
                                    mem[s + mem[64] + 100] = mem[s + _559 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_577) > _577:
                                    mem[_577 + mem[64] + 100] = 0
                                require ext_code.size(managerAddress)
                                call managerAddress.0x12b8603f with:
                                     gas gas_remaining wei
                                    args msg.sender, 64, mem[mem[64] + 68 len ceil32(_577) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                continue 
}



}
