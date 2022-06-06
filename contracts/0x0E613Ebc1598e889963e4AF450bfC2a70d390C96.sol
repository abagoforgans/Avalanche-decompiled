contract main {




// =====================  Runtime code  =====================


#
#  - compoundAll()
#
address owner;
uint256 totalShares;
uint256 totalReleased;
mapping of uint256 shares;
mapping of uint256 released;
array of address payee;
mapping of uint256 totalReleased;
mapping of uint256 released;
address tokenAddress;
address joePairAddress;
address sub_527509f3Address;
address teamPoolAddress;
address rewardsPoolAddress;
address deadWalletAddress;
uint256 swapTokensAmount;
uint256 totalClaimed;
uint8 stor16;
address stor16;
address stor16; offset 8
address stor17;
address stor18;
uint256 stor19;
uint8 stor20;
mapping of uint8 stor21;
mapping of uint8 stor22;
mapping of uint256 stor23;
mapping of uint256 stor1651864174;
mapping of uint256 stor469853431653;
mapping of uint256 stor125856827007344;
mapping of uint256 stor27973170995623284;
mapping of uint256 stor7165065861843480164;
mapping of uint256 stor8387217003176226668;
mapping of uint256 stor8589274640650428211244320124780;

function rewardsPool() {
    return rewardsPoolAddress
}

function teamPool() {
    return teamPoolAddress
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

function sub_527509f3(?) {
    return sub_527509f3Address
}

function swapTokensAmount() {
    return swapTokensAmount
}

function joePair() {
    return joePairAddress
}

function deadWallet() {
    return deadWalletAddress
}

function payee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= payee.length:
        revert with 0, 50
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

function tokenAddress() {
    return tokenAddress
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor22[arg1])
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[address(arg1)]
}

function totalClaimed() {
    return totalClaimed
}

function totalReleased(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalReleased[address(arg1)]
}

function totalReleased() {
    return totalReleased
}

function sub_fabc4035(?) {
    return bool(uint8(stor16.field_0))
}

function isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor21[arg1])
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function updateRwSwapFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor19 = arg1
}

function updateSwapTokensAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapTokensAmount = arg1
}

function sub_1319e7e1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor17 = address(arg1)
}

function sub_6eacab12(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    teamPoolAddress = address(arg1)
}

function sub_6653a340(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardsPoolAddress = address(arg1)
}

function sub_f4e27dc8(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor16.field_0) = uint8(bool(arg1))
}

function blacklistAddress(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor21[address(arg1)] = uint8(arg2)
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

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if joePairAddress == arg1:
        revert with 0, 'TKN:2'
    if arg2 == bool(stor22[address(arg1)]):
        revert with 0, 'TKN:3'
    stor22[address(arg1)] = uint8(arg2)
    emit SetAutomatedMarketMakerPair(arg1, arg2);
}

function getFee(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    return stor23[Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256]
}

function sub_458cdaee(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor23[Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256] = arg2
}

function sub_2e497c11(?) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if stor21[msg.sender]:
        revert with 0, 'BLACKLISTED'
    require ext_code.size(stor17)
    call stor17.0x20ffd7fd with:
         gas gas_remaining wei
        args msg.sender, Array(len=arg2.length, data=arg2[all]), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_682ca7e6(?) {
    require calldata.size - 4 >= 64
    if stor21[msg.sender]:
        revert with 0, 'BLACKLISTED'
    require ext_code.size(stor18)
    staticcall stor18.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'NC:5'
    require ext_code.size(stor18)
    call stor18.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor17)
    call stor17.0xdde946e3 with:
         gas gas_remaining wei
        args msg.sender, arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7871db37(?) {
    require calldata.size - 4 >= 64
    if stor21[msg.sender]:
        revert with 0, 'BLACKLISTED'
    if stor23[('name', 'stor6D65', 469853431653)]:
        require ext_code.size(stor18)
        staticcall stor18.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < stor23[('name', 'stor6D65', 469853431653)]:
            revert with 0, 'E:1'
        require ext_code.size(stor18)
        call stor18.0xa9059cbb with:
             gas gas_remaining wei
            args deadWalletAddress, stor23[('name', 'stor6D65', 469853431653)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor17)
    call stor17.0x82af6714 with:
         gas gas_remaining wei
        args msg.sender, arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e159b3ae(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if address(stor16.field_8) == address(arg1):
        revert with 0, 'TKN:1'
    emit 0xb172ff8d: address(arg1), address(stor16.field_8)
    require ext_code.size(address(stor16.field_8))
    staticcall address(stor16.field_8).factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).WAVAX() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args tokenAddress, address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    joePairAddress = ext_call.return_data[12 len 20]
    sub_527509f3Address = address(arg1)
}

function release(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not shares[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account has no shares'
    if eth.balance(this.address) > !totalReleased:
        revert with 0, 17
    if eth.balance(this.address) + totalReleased and shares[address(arg1)] > -1 / eth.balance(this.address) + totalReleased:
        revert with 0, 17
    if not totalShares:
        revert with 0, 18
    if (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares < released[address(arg1)]:
        revert with 0, 17
    if not ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account is not due payment'
    if released[address(arg1)] > !(((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]):
        revert with 0, 17
    released[address(arg1)] = (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares
    if totalReleased > !(((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]):
        revert with 0, 17
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
        revert with 0, 17
    if ext_call.return_data[0] + totalReleased[address(arg1)] and shares[address(arg2)] > -1 / ext_call.return_data[0] + totalReleased[address(arg1)]:
        revert with 0, 17
    if not totalShares:
        revert with 0, 18
    if (ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares < released[address(arg1)][address(arg2)]:
        revert with 0, 17
    if not ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]:
        revert with 0, 'PaymentSplitter: account is not due payment'
    if released[address(arg1)][address(arg2)] > !(((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]):
        revert with 0, 17
    released[address(arg1)][address(arg2)] = (ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares
    if totalReleased[address(arg1)] > !(((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]):
        revert with 0, 17
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

function sub_5c69cb5d(?) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0, 'COMP:1'
    if stor21[address(msg.sender)]:
        revert with 0, 'BLACKLISTED'
    if teamPoolAddress == msg.sender:
        revert with 0, 'COMP:2'
    if rewardsPoolAddress == msg.sender:
        revert with 0, 'COMP:2'
    mem[100] = msg.sender
    mem[132] = arg1
    require ext_code.size(stor17)
    staticcall stor17.getNodeReward(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'COMP:3'
    mem[ceil32(return_data.size) + 96] = 8
    mem[ceil32(return_data.size) + 128] = 0x636f6d706f756e64000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 192] = 0x636f6d706f756e64000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 160] = 8
    if stor23[('name', 'stor636F', 7165065861843480164)] <= 0:
        if ext_call.return_data[0] < 0:
            revert with 0, 17
        if stor23[('name', 'stor6275', 1651864174)] <= 0:
            if ext_call.return_data[0] < 0:
                revert with 0, 17
            mem[ceil32(return_data.size) + 304] = rewardsPoolAddress
            mem[ceil32(return_data.size) + 336] = this.address
            mem[ceil32(return_data.size) + 368] = ext_call.return_data[0]
            require ext_code.size(stor18)
            call stor18.0x23b872dd with:
                 gas gas_remaining wei
                args rewardsPoolAddress, address(this.address), ext_call.return_data[0]
            mem[ceil32(return_data.size) + 300] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 304] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 336] = arg1
            mem[(2 * ceil32(return_data.size)) + 368] = ext_call.return_data[0]
            require ext_code.size(stor17)
            call stor17.0xcbd14993 with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 304 len ceil32(return_data.size) + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 300] = ext_call.return_data[0]
            emit Compound(mem[(2 * ceil32(return_data.size)) + 300 len ceil32(return_data.size) + 32], msg.sender, arg1);
        else:
            if ext_call.return_data[0] and stor23[('name', 'stor6275', 1651864174)] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            mem[ceil32(return_data.size) + 404] = rewardsPoolAddress
            mem[ceil32(return_data.size) + 436] = deadWalletAddress
            mem[ceil32(return_data.size) + 468] = ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100
            require ext_code.size(stor18)
            call stor18.0x23b872dd with:
                 gas gas_remaining wei
                args rewardsPoolAddress, deadWalletAddress, ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100
            mem[ceil32(return_data.size) + 400] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if ext_call.return_data[0] < ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 404] = rewardsPoolAddress
            mem[(2 * ceil32(return_data.size)) + 436] = this.address
            mem[(2 * ceil32(return_data.size)) + 468] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100)
            require ext_code.size(stor18)
            call stor18.0x23b872dd with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 404 len ceil32(return_data.size) + 96]
            mem[(2 * ceil32(return_data.size)) + 400] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 404] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 436] = arg1
            mem[(4 * ceil32(return_data.size)) + 468] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100)
            require ext_code.size(stor17)
            call stor17.0xcbd14993 with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 404 len (5 * ceil32(return_data.size)) + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 400] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100)
            emit Compound(mem[(4 * ceil32(return_data.size)) + 400 len (5 * ceil32(return_data.size)) + 32], msg.sender, arg1);
    else:
        mem[ceil32(return_data.size) + 200] = 8
        mem[ceil32(return_data.size) + 232] = 0x636f6d706f756e64000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 296] = 0x636f6d706f756e64000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 264] = 8
        mem[0] = sha3(7165065861843480164)
        mem[32] = 23
        if ext_call.return_data[0] and stor23[('name', 'stor636F', 7165065861843480164)] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        mem[ceil32(return_data.size) + 308] = address(stor16.field_8)
        mem[ceil32(return_data.size) + 340] = ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100
        require ext_code.size(stor18)
        call stor18.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(stor16.field_0), ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100
        mem[ceil32(return_data.size) + 304] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 304] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 308] = 32
            mem[(2 * ceil32(return_data.size)) + 340] = 14
            mem[(2 * ceil32(return_data.size)) + 372] = 0x417070726f7665206661696c6564000000000000000000000000000000000000
            revert with memory
              from (2 * ceil32(return_data.size)) + 304
               len ceil32(return_data.size) + 100
        if not ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100:
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            call rewardsPoolAddress with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] < ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100:
                revert with 0, 17
            if stor23[('name', 'stor6275', 1651864174)] <= 0:
                if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100) < 0:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 408] = rewardsPoolAddress
                mem[(2 * ceil32(return_data.size)) + 440] = this.address
                mem[(2 * ceil32(return_data.size)) + 472] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100)
                require ext_code.size(stor18)
                call stor18.0x23b872dd with:
                     gas gas_remaining wei
                    args rewardsPoolAddress, address(this.address), ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100)
                mem[(2 * ceil32(return_data.size)) + 404] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 408] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 440] = arg1
                mem[(4 * ceil32(return_data.size)) + 472] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100)
                require ext_code.size(stor17)
                call stor17.0xcbd14993 with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 408 len (5 * ceil32(return_data.size)) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 404] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100)
                emit Compound(mem[(4 * ceil32(return_data.size)) + 404 len (5 * ceil32(return_data.size)) + 32], msg.sender, arg1);
            else:
                if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100) and stor23[('name', 'stor6275', 1651864174)] > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100):
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 508] = rewardsPoolAddress
                mem[(2 * ceil32(return_data.size)) + 540] = deadWalletAddress
                mem[(2 * ceil32(return_data.size)) + 572] = (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100
                require ext_code.size(stor18)
                call stor18.0x23b872dd with:
                     gas gas_remaining wei
                    args rewardsPoolAddress, deadWalletAddress, (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100
                mem[(2 * ceil32(return_data.size)) + 504] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100) < (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100:
                    revert with 0, 17
                mem[(4 * ceil32(return_data.size)) + 508] = rewardsPoolAddress
                mem[(4 * ceil32(return_data.size)) + 540] = this.address
                mem[(4 * ceil32(return_data.size)) + 572] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)
                require ext_code.size(stor18)
                call stor18.0x23b872dd with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 508 len (5 * ceil32(return_data.size)) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 508] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 540] = arg1
                mem[(4 * ceil32(return_data.size)) + 572] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)
                require ext_code.size(stor17)
                call stor17.0xcbd14993 with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 508 len (7 * ceil32(return_data.size)) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 504] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)
                emit Compound(mem[(4 * ceil32(return_data.size)) + 504 len (7 * ceil32(return_data.size)) + 32], msg.sender, arg1);
        else:
            mem[(2 * ceil32(return_data.size)) + 304] = 2
            mem[(2 * ceil32(return_data.size)) + 336] = tokenAddress
            require ext_code.size(address(stor16.field_8))
            staticcall address(stor16.field_8).WAVAX() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 400] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 400
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 368] = ext_call.return_data[12 len 20]
            mem[(4 * ceil32(return_data.size)) + 400] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 404] = ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100
            mem[(4 * ceil32(return_data.size)) + 436] = 0
            mem[(4 * ceil32(return_data.size)) + 468] = 160
            mem[(4 * ceil32(return_data.size)) + 564] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 596
            t = (2 * ceil32(return_data.size)) + 336
            while idx < mem[(2 * ceil32(return_data.size)) + 304]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 500] = this.address
            mem[(4 * ceil32(return_data.size)) + 532] = block.timestamp
            require ext_code.size(address(stor16.field_8))
            call address(stor16.field_8).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 656]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            call rewardsPoolAddress with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] < ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100:
                revert with 0, 17
            _3524 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3524] = 4
            mem[_3524 + 32] = 0x6275726e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 32] = 0x6275726e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 36] = 0
            _4361 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[0] = sha3(mem[_4361 + 32 len mem[_4361]])
            if stor23[mem[0]] <= 0:
                if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100) < 0:
                    revert with 0, 17
                require ext_code.size(stor18)
                call stor18.0x23b872dd with:
                     gas gas_remaining wei
                    args rewardsPoolAddress, address(this.address), ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor17)
                call stor17.0xcbd14993 with:
                     gas gas_remaining wei
                    args msg.sender, arg1, ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Compound((ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100)), msg.sender, arg1);
            else:
                if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100) and stor23[('name', 'stor6275', 1651864174)] > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100):
                    revert with 0, 17
                require ext_code.size(stor18)
                call stor18.0x23b872dd with:
                     gas gas_remaining wei
                    args rewardsPoolAddress, deadWalletAddress, (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100) < (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100:
                    revert with 0, 17
                require ext_code.size(stor18)
                call stor18.0x23b872dd with:
                     gas gas_remaining wei
                    args rewardsPoolAddress, address(this.address), ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor17)
                call stor17.0xcbd14993 with:
                     gas gas_remaining wei
                    args msg.sender, arg1, ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Compound((ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)), msg.sender, arg1);
}

function cashoutAll() {
    if not msg.sender:
        revert with 0, 'CASHOUT:5'
    if stor21[address(msg.sender)]:
        revert with 0, 'BLACKLISTED'
    if teamPoolAddress == msg.sender:
        revert with 0, 'CASHOUT:7'
    if rewardsPoolAddress == msg.sender:
        revert with 0, 'CASHOUT:7'
    mem[100] = msg.sender
    require ext_code.size(stor17)
    staticcall stor17.getAllNodesRewards(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'CASHOUT:8'
    mem[ceil32(return_data.size) + 96] = 7
    mem[ceil32(return_data.size) + 128] = 0x636173686f757400000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 192] = 0x636173686f757400000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 160] = 7
    if stor23[('name', 'stor6361', 27973170995623284)] <= 0:
        if ext_call.return_data[0] < 0:
            revert with 0, 17
        if stor23[('name', 'stor6275', 1651864174)] <= 0:
            if ext_call.return_data[0] < 0:
                revert with 0, 17
            mem[ceil32(return_data.size) + 303] = rewardsPoolAddress
            mem[ceil32(return_data.size) + 335] = msg.sender
            mem[ceil32(return_data.size) + 367] = ext_call.return_data[0]
            require ext_code.size(stor18)
            call stor18.0x23b872dd with:
                 gas gas_remaining wei
                args rewardsPoolAddress, msg.sender, ext_call.return_data[0]
            mem[ceil32(return_data.size) + 299] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 303] = msg.sender
            require ext_code.size(stor17)
            call stor17.cashoutAllNodesRewards(address arg1) with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 303 len ceil32(return_data.size) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if totalClaimed > !ext_call.return_data[0]:
                revert with 0, 17
            totalClaimed += ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 299] = ext_call.return_data[0]
            emit Cashout(mem[(2 * ceil32(return_data.size)) + 299 len ceil32(return_data.size) + 32], msg.sender, 0);
        else:
            if ext_call.return_data[0] and stor23[('name', 'stor6275', 1651864174)] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            mem[ceil32(return_data.size) + 403] = rewardsPoolAddress
            mem[ceil32(return_data.size) + 435] = deadWalletAddress
            mem[ceil32(return_data.size) + 467] = ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100
            require ext_code.size(stor18)
            call stor18.0x23b872dd with:
                 gas gas_remaining wei
                args rewardsPoolAddress, deadWalletAddress, ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100
            mem[ceil32(return_data.size) + 399] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if ext_call.return_data[0] < ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 403] = rewardsPoolAddress
            mem[(2 * ceil32(return_data.size)) + 435] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 467] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100)
            require ext_code.size(stor18)
            call stor18.0x23b872dd with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 403 len ceil32(return_data.size) + 96]
            mem[(2 * ceil32(return_data.size)) + 399] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 403] = msg.sender
            require ext_code.size(stor17)
            call stor17.cashoutAllNodesRewards(address arg1) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 403 len (5 * ceil32(return_data.size)) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if totalClaimed > !(ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100)):
                revert with 0, 17
            totalClaimed = totalClaimed + ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100)
            mem[(4 * ceil32(return_data.size)) + 399] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100)
            emit Cashout(mem[(4 * ceil32(return_data.size)) + 399 len (5 * ceil32(return_data.size)) + 32], msg.sender, 0);
    else:
        mem[ceil32(return_data.size) + 199] = 7
        mem[ceil32(return_data.size) + 231] = 0x636173686f757400000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 295] = 0x636173686f757400000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 263] = 7
        mem[0] = sha3(27973170995623284)
        mem[32] = 23
        if ext_call.return_data[0] and stor23[('name', 'stor6361', 27973170995623284)] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        mem[ceil32(return_data.size) + 306] = address(stor16.field_8)
        mem[ceil32(return_data.size) + 338] = ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100
        require ext_code.size(stor18)
        call stor18.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(stor16.field_0), ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100
        mem[ceil32(return_data.size) + 302] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 302] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 306] = 32
            mem[(2 * ceil32(return_data.size)) + 338] = 14
            mem[(2 * ceil32(return_data.size)) + 370] = 0x417070726f7665206661696c6564000000000000000000000000000000000000
            revert with memory
              from (2 * ceil32(return_data.size)) + 302
               len ceil32(return_data.size) + 100
        if not ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100:
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            call rewardsPoolAddress with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] < ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100:
                revert with 0, 17
            if stor23[('name', 'stor6275', 1651864174)] <= 0:
                if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) < 0:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 406] = rewardsPoolAddress
                mem[(2 * ceil32(return_data.size)) + 438] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 470] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)
                require ext_code.size(stor18)
                call stor18.0x23b872dd with:
                     gas gas_remaining wei
                    args rewardsPoolAddress, msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)
                mem[(2 * ceil32(return_data.size)) + 402] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 406] = msg.sender
                require ext_code.size(stor17)
                call stor17.cashoutAllNodesRewards(address arg1) with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 406 len (5 * ceil32(return_data.size)) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if totalClaimed > !(ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)):
                    revert with 0, 17
                totalClaimed = totalClaimed + ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)
                mem[(4 * ceil32(return_data.size)) + 402] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)
                emit Cashout(mem[(4 * ceil32(return_data.size)) + 402 len (5 * ceil32(return_data.size)) + 32], msg.sender, 0);
            else:
                if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) and stor23[('name', 'stor6275', 1651864174)] > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100):
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 506] = rewardsPoolAddress
                mem[(2 * ceil32(return_data.size)) + 538] = deadWalletAddress
                mem[(2 * ceil32(return_data.size)) + 570] = (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100
                require ext_code.size(stor18)
                call stor18.0x23b872dd with:
                     gas gas_remaining wei
                    args rewardsPoolAddress, deadWalletAddress, (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100
                mem[(2 * ceil32(return_data.size)) + 502] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) < (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100:
                    revert with 0, 17
                mem[(4 * ceil32(return_data.size)) + 506] = rewardsPoolAddress
                mem[(4 * ceil32(return_data.size)) + 538] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 570] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)
                require ext_code.size(stor18)
                call stor18.0x23b872dd with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 506 len (5 * ceil32(return_data.size)) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 506] = msg.sender
                require ext_code.size(stor17)
                call stor17.cashoutAllNodesRewards(address arg1) with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 506 len (7 * ceil32(return_data.size)) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if totalClaimed > !(ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)):
                    revert with 0, 17
                totalClaimed = totalClaimed + ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)
                mem[(4 * ceil32(return_data.size)) + 502] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)
                emit Cashout(mem[(4 * ceil32(return_data.size)) + 502 len (7 * ceil32(return_data.size)) + 32], msg.sender, 0);
        else:
            mem[(2 * ceil32(return_data.size)) + 302] = 2
            mem[(2 * ceil32(return_data.size)) + 334] = tokenAddress
            require ext_code.size(address(stor16.field_8))
            staticcall address(stor16.field_8).WAVAX() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 398] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 398
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 366] = ext_call.return_data[12 len 20]
            mem[(4 * ceil32(return_data.size)) + 398] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 402] = ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100
            mem[(4 * ceil32(return_data.size)) + 434] = 0
            mem[(4 * ceil32(return_data.size)) + 466] = 160
            mem[(4 * ceil32(return_data.size)) + 562] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 594
            t = (2 * ceil32(return_data.size)) + 334
            while idx < mem[(2 * ceil32(return_data.size)) + 302]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 498] = this.address
            mem[(4 * ceil32(return_data.size)) + 530] = block.timestamp
            require ext_code.size(address(stor16.field_8))
            call address(stor16.field_8).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 654]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            call rewardsPoolAddress with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] < ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100:
                revert with 0, 17
            _3524 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3524] = 4
            mem[_3524 + 32] = 0x6275726e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 32] = 0x6275726e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 36] = 0
            _4361 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[0] = sha3(mem[_4361 + 32 len mem[_4361]])
            if stor23[mem[0]] <= 0:
                if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) < 0:
                    revert with 0, 17
                require ext_code.size(stor18)
                call stor18.0x23b872dd with:
                     gas gas_remaining wei
                    args rewardsPoolAddress, msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor17)
                call stor17.cashoutAllNodesRewards(address arg1) with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if totalClaimed > !(ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)):
                    revert with 0, 17
                totalClaimed = totalClaimed + ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)
                emit Cashout((ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)), msg.sender, 0);
            else:
                if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) and stor23[('name', 'stor6275', 1651864174)] > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100):
                    revert with 0, 17
                require ext_code.size(stor18)
                call stor18.0x23b872dd with:
                     gas gas_remaining wei
                    args rewardsPoolAddress, deadWalletAddress, (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) < (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100:
                    revert with 0, 17
                require ext_code.size(stor18)
                call stor18.0x23b872dd with:
                     gas gas_remaining wei
                    args rewardsPoolAddress, msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor17)
                call stor17.cashoutAllNodesRewards(address arg1) with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if totalClaimed > !(ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)):
                    revert with 0, 17
                totalClaimed = totalClaimed + ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)
                emit Cashout((ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)), msg.sender, 0);
}

function cashoutReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0, 'CASHOUT:1'
    if stor21[address(msg.sender)]:
        revert with 0, 'BLACKLISTED'
    if teamPoolAddress == msg.sender:
        revert with 0, 'CASHOUT:3'
    if rewardsPoolAddress == msg.sender:
        revert with 0, 'CASHOUT:3'
    mem[100] = msg.sender
    mem[132] = arg1
    require ext_code.size(stor17)
    staticcall stor17.getNodeReward(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'CASHOUT:4'
    mem[ceil32(return_data.size) + 96] = 7
    mem[ceil32(return_data.size) + 128] = 0x636173686f757400000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 192] = 0x636173686f757400000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 160] = 7
    if stor23[('name', 'stor6361', 27973170995623284)] <= 0:
        if ext_call.return_data[0] < 0:
            revert with 0, 17
        if stor23[('name', 'stor6275', 1651864174)] <= 0:
            if ext_call.return_data[0] < 0:
                revert with 0, 17
            mem[ceil32(return_data.size) + 303] = rewardsPoolAddress
            mem[ceil32(return_data.size) + 335] = msg.sender
            mem[ceil32(return_data.size) + 367] = ext_call.return_data[0]
            require ext_code.size(stor18)
            call stor18.0x23b872dd with:
                 gas gas_remaining wei
                args rewardsPoolAddress, msg.sender, ext_call.return_data[0]
            mem[ceil32(return_data.size) + 299] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 303] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 335] = arg1
            require ext_code.size(stor17)
            call stor17.cashoutNodeReward(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 303 len ceil32(return_data.size) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if totalClaimed > !ext_call.return_data[0]:
                revert with 0, 17
            totalClaimed += ext_call.return_data[0]
            mem[(2 * ceil32(return_data.size)) + 299] = ext_call.return_data[0]
            emit Cashout(mem[(2 * ceil32(return_data.size)) + 299 len ceil32(return_data.size) + 32], msg.sender, arg1);
        else:
            if ext_call.return_data[0] and stor23[('name', 'stor6275', 1651864174)] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            mem[ceil32(return_data.size) + 403] = deadWalletAddress
            mem[ceil32(return_data.size) + 435] = ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100
            require ext_code.size(stor18)
            call stor18.0xa9059cbb with:
                 gas gas_remaining wei
                args deadWalletAddress, ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100
            mem[ceil32(return_data.size) + 399] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if ext_call.return_data[0] < ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100:
                revert with 0, 17
            mem[(2 * ceil32(return_data.size)) + 403] = rewardsPoolAddress
            mem[(2 * ceil32(return_data.size)) + 435] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 467] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100)
            require ext_code.size(stor18)
            call stor18.0x23b872dd with:
                 gas gas_remaining wei
                args mem[(2 * ceil32(return_data.size)) + 403 len ceil32(return_data.size) + 96]
            mem[(2 * ceil32(return_data.size)) + 399] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 403] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 435] = arg1
            require ext_code.size(stor17)
            call stor17.cashoutNodeReward(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 403 len (5 * ceil32(return_data.size)) + 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if totalClaimed > !(ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100)):
                revert with 0, 17
            totalClaimed = totalClaimed + ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100)
            mem[(4 * ceil32(return_data.size)) + 399] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100)
            emit Cashout(mem[(4 * ceil32(return_data.size)) + 399 len (5 * ceil32(return_data.size)) + 32], msg.sender, arg1);
    else:
        mem[ceil32(return_data.size) + 199] = 7
        mem[ceil32(return_data.size) + 231] = 0x636173686f757400000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 295] = 0x636173686f757400000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 263] = 7
        mem[0] = sha3(27973170995623284)
        mem[32] = 23
        if ext_call.return_data[0] and stor23[('name', 'stor6361', 27973170995623284)] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        mem[ceil32(return_data.size) + 306] = address(stor16.field_8)
        mem[ceil32(return_data.size) + 338] = ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100
        require ext_code.size(stor18)
        call stor18.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(stor16.field_0), ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100
        mem[ceil32(return_data.size) + 302] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 302] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + 306] = 32
            mem[(2 * ceil32(return_data.size)) + 338] = 14
            mem[(2 * ceil32(return_data.size)) + 370] = 0x417070726f7665206661696c6564000000000000000000000000000000000000
            revert with memory
              from (2 * ceil32(return_data.size)) + 302
               len ceil32(return_data.size) + 100
        if not ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100:
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            call rewardsPoolAddress with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] < ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100:
                revert with 0, 17
            if stor23[('name', 'stor6275', 1651864174)] <= 0:
                if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) < 0:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 406] = rewardsPoolAddress
                mem[(2 * ceil32(return_data.size)) + 438] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 470] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)
                require ext_code.size(stor18)
                call stor18.0x23b872dd with:
                     gas gas_remaining wei
                    args rewardsPoolAddress, msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)
                mem[(2 * ceil32(return_data.size)) + 402] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 406] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 438] = arg1
                require ext_code.size(stor17)
                call stor17.cashoutNodeReward(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 406 len (5 * ceil32(return_data.size)) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if totalClaimed > !(ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)):
                    revert with 0, 17
                totalClaimed = totalClaimed + ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)
                mem[(4 * ceil32(return_data.size)) + 402] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)
                emit Cashout(mem[(4 * ceil32(return_data.size)) + 402 len (5 * ceil32(return_data.size)) + 32], msg.sender, arg1);
            else:
                if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) and stor23[('name', 'stor6275', 1651864174)] > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100):
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 506] = deadWalletAddress
                mem[(2 * ceil32(return_data.size)) + 538] = (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100
                require ext_code.size(stor18)
                call stor18.0xa9059cbb with:
                     gas gas_remaining wei
                    args deadWalletAddress, (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100
                mem[(2 * ceil32(return_data.size)) + 502] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) < (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100:
                    revert with 0, 17
                mem[(4 * ceil32(return_data.size)) + 506] = rewardsPoolAddress
                mem[(4 * ceil32(return_data.size)) + 538] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 570] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)
                require ext_code.size(stor18)
                call stor18.0x23b872dd with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 506 len (5 * ceil32(return_data.size)) + 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                mem[(4 * ceil32(return_data.size)) + 506] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 538] = arg1
                require ext_code.size(stor17)
                call stor17.cashoutNodeReward(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 506 len (7 * ceil32(return_data.size)) + 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if totalClaimed > !(ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)):
                    revert with 0, 17
                totalClaimed = totalClaimed + ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)
                mem[(4 * ceil32(return_data.size)) + 502] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)
                emit Cashout(mem[(4 * ceil32(return_data.size)) + 502 len (7 * ceil32(return_data.size)) + 32], msg.sender, arg1);
        else:
            mem[(2 * ceil32(return_data.size)) + 302] = 2
            mem[(2 * ceil32(return_data.size)) + 334] = tokenAddress
            require ext_code.size(address(stor16.field_8))
            staticcall address(stor16.field_8).WAVAX() with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 398] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (4 * ceil32(return_data.size)) + 398
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 366] = ext_call.return_data[12 len 20]
            mem[(4 * ceil32(return_data.size)) + 398] = 0x762b156200000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 402] = ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100
            mem[(4 * ceil32(return_data.size)) + 434] = 0
            mem[(4 * ceil32(return_data.size)) + 466] = 160
            mem[(4 * ceil32(return_data.size)) + 562] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 594
            t = (2 * ceil32(return_data.size)) + 334
            while idx < mem[(2 * ceil32(return_data.size)) + 302]:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 498] = this.address
            mem[(4 * ceil32(return_data.size)) + 530] = block.timestamp
            require ext_code.size(address(stor16.field_8))
            call address(stor16.field_8).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 654]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            call rewardsPoolAddress with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_call.return_data[0] < ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100:
                revert with 0, 17
            _3524 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3524] = 4
            mem[_3524 + 32] = 0x6275726e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 32] = 0x6275726e00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 36] = 0
            _4361 = mem[64]
            mem[mem[64]] = 4
            mem[64] = mem[64] + 36
            mem[0] = sha3(mem[_4361 + 32 len mem[_4361]])
            if stor23[mem[0]] <= 0:
                if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) < 0:
                    revert with 0, 17
                require ext_code.size(stor18)
                call stor18.0x23b872dd with:
                     gas gas_remaining wei
                    args rewardsPoolAddress, msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor17)
                call stor17.cashoutNodeReward(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if totalClaimed > !(ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)):
                    revert with 0, 17
                totalClaimed = totalClaimed + ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)
                emit Cashout((ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)), msg.sender, arg1);
            else:
                if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) and stor23[('name', 'stor6275', 1651864174)] > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100):
                    revert with 0, 17
                require ext_code.size(stor18)
                call stor18.0xa9059cbb with:
                     gas gas_remaining wei
                    args deadWalletAddress, (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) < (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100:
                    revert with 0, 17
                require ext_code.size(stor18)
                call stor18.0x23b872dd with:
                     gas gas_remaining wei
                    args rewardsPoolAddress, msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor17)
                call stor17.cashoutNodeReward(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if totalClaimed > !(ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)):
                    revert with 0, 17
                totalClaimed = totalClaimed + ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)
                emit Cashout((ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)), msg.sender, arg1);
}

function createNodeWithTokens(string arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require ext_code.size(stor17)
    staticcall stor17.getMinPrice() with:
            gas gas_remaining wei
    mem[ceil32(ceil32(arg1.length)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1.length <= 3:
        revert with 0, 'NC:1'
    if arg1.length >= 32:
        revert with 0, 'NC:1'
    if not msg.sender:
        revert with 0, 'NC:2'
    if stor21[address(msg.sender)]:
        revert with 0, 'BLACKLISTED'
    if teamPoolAddress == msg.sender:
        revert with 0, 'NC:4'
    if rewardsPoolAddress == msg.sender:
        revert with 0, 'NC:4'
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 101] = msg.sender
    require ext_code.size(stor18)
    staticcall stor18.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'NC:5'
    if arg2 < ext_call.return_data[0]:
        revert with 0, 'NC:6'
    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 101] = this.address
    require ext_code.size(stor18)
    staticcall stor18.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < swapTokensAmount:
        require ext_code.size(stor18)
        call stor18.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor17)
        call stor17.0x90219732 with:
             gas gas_remaining wei
            args msg.sender, Array(len=arg1.length, data=arg1[all]), arg2
    else:
        if not uint8(stor16.field_0):
            require ext_code.size(stor18)
            call stor18.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_code.size(stor17)
            call stor17.0x90219732 with:
                 gas gas_remaining wei
                args msg.sender, Array(len=arg1.length, data=arg1[all]), arg2
        else:
            if stor20:
                require ext_code.size(stor18)
                call stor18.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_code.size(stor17)
                call stor17.0x90219732 with:
                     gas gas_remaining wei
                    args msg.sender, Array(len=arg1.length, data=arg1[all]), arg2
            else:
                if owner == msg.sender:
                    require ext_code.size(stor18)
                    call stor18.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(stor17)
                    call stor17.0x90219732 with:
                         gas gas_remaining wei
                        args msg.sender, Array(len=arg1.length, data=arg1[all]), arg2
                else:
                    if stor22[address(msg.sender)]:
                        require ext_code.size(stor18)
                        call stor18.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(stor17)
                        call stor17.0x90219732 with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=arg1.length, data=arg1[all]), arg2
                    else:
                        stor20 = 1
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 97] = 8
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 129] = 0x7465616d506f6f6c000000000000000000000000000000000000000000000000
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 193] = 0x7465616d506f6f6c000000000000000000000000000000000000000000000000
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 161] = 8
                        mem[0] = sha3(8387217003176226668)
                        mem[32] = 23
                        if ext_call.return_data[0] and stor23[('name', 'stor7465', 8387217003176226668)] > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 205] = address(stor16.field_8)
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 237] = ext_call.return_data[0] * stor23[('name', 'stor7465', 8387217003176226668)] / 100
                        require ext_code.size(stor18)
                        call stor18.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(stor16.field_0), ext_call.return_data[0] * stor23[('name', 'stor7465', 8387217003176226668)] / 100
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 201] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 
                                        'Approve failed',
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 301 len 9 * ceil32(return_data.size)]
                        if not ext_call.return_data[0] * stor23[('name', 'stor7465', 8387217003176226668)] / 100:
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            call teamPoolAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 201] = 7
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 233] = 'rewards' << 200
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 297] = 'rewards' << 200
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 265] = 7
                            if ext_call.return_data[0] and stor23['rewards'] > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 304] = 6
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 336] = 0x7277537761700000000000000000000000000000000000000000000000000000
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 400] = 0x7277537761700000000000000000000000000000000000000000000000000000
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 368] = 6
                            if ext_call.return_data[0] * stor23['rewards'] / 100 and stor23[('name', 'stor7277', 125856827007344)] > -1 / ext_call.return_data[0] * stor23['rewards'] / 100:
                                revert with 0, 17
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 410] = address(stor16.field_8)
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 442] = ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100
                            require ext_code.size(stor18)
                            call stor18.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor16.field_0), ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 406] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Approve failed'
                            if not ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100:
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call rewardsPoolAddress with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] * stor23['rewards'] / 100 < ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100:
                                    revert with 0, 17
                                mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 410] = rewardsPoolAddress
                                mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 442] = (ext_call.return_data[0] * stor23['rewards'] / 100) - (ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100)
                                require ext_code.size(stor18)
                                call stor18.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args rewardsPoolAddress, (ext_call.return_data[0] * stor23['rewards'] / 100) - (ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100)
                                mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 406] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[ceil32(ceil32(arg1.length)) + (9 * ceil32(return_data.size)) + 406] = 13
                                mem[ceil32(ceil32(arg1.length)) + (9 * ceil32(return_data.size)) + 438] = 0x6c6971756964697479506f6f6c00000000000000000000000000000000000000
                                mem[ceil32(ceil32(arg1.length)) + (9 * ceil32(return_data.size)) + 502] = 0x6c6971756964697479506f6f6c00000000000000000000000000000000000000
                                mem[ceil32(ceil32(arg1.length)) + (9 * ceil32(return_data.size)) + 470] = 13
                                mem[0] = sha3(0x6c6971756964697479506f6f6c)
                                mem[32] = 23
                                if ext_call.return_data[0] and stor23[('name', 'stor6C69', 8589274640650428211244320124780)] > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                if ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 < ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2:
                                    revert with 0, 17
                                mem[ceil32(ceil32(arg1.length)) + (9 * ceil32(return_data.size)) + 519] = address(stor16.field_8)
                                mem[ceil32(ceil32(arg1.length)) + (9 * ceil32(return_data.size)) + 551] = ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2
                                require ext_code.size(stor18)
                                call stor18.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(stor16.field_0), ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2
                                mem[ceil32(ceil32(arg1.length)) + (9 * ceil32(return_data.size)) + 515] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Approve failed'
                                if not Mask(255, 1, ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100):
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    require ext_code.size(stor18)
                                    call stor18.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(stor16.field_0), (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 
                                                    'Approve failed',
                                                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 615 len 5 * ceil32(return_data.size)]
                                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 583] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 615] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 647] = rewardsPoolAddress
                                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 679] = block.timestamp
                                    require ext_code.size(address(stor16.field_8))
                                    call address(stor16.field_8).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args tokenAddress, (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2), 0, 0, rewardsPoolAddress, block.timestamp, mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 711 len 5 * ceil32(return_data.size)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                        Mask(255, 1, ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100),
                                                        0,
                                                        (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2),
                                                        mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 611 len 9 * ceil32(return_data.size)],
                                    stor20 = 0
                                    require ext_code.size(stor18)
                                    call stor18.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), arg2, mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 615 len 9 * ceil32(return_data.size)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    require ext_code.size(stor17)
                                    call stor17.0x90219732 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=arg1.length, data=arg1[all]), arg2
                                else:
                                    mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 515] = 2
                                    mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 547] = tokenAddress
                                    require ext_code.size(address(stor16.field_8))
                                    staticcall address(stor16.field_8).WAVAX() with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 611] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 611
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 579] = ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 611] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 615] = ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2
                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 647] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 679] = 160
                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 775] = 2
                                    idx = 0
                                    s = ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 807
                                    t = ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 547
                                    while idx < mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 515]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 711] = this.address
                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 743] = block.timestamp
                                    require ext_code.size(address(stor16.field_8))
                                    call address(stor16.field_8).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + -mem[64] + 867]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[mem[64]] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(stor16.field_8)
                                    mem[mem[64] + 36] = (ext_call.return_data[0] * stor23[mem[0]] / 100) - (ext_call.return_data[0] * stor23[mem[0]] / 100 / 2)
                                    require ext_code.size(stor18)
                                    call stor18.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(stor16.field_0), (ext_call.return_data[0] * stor23[mem[0]] / 100) - (ext_call.return_data[0] * stor23[mem[0]] / 100 / 2)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19139 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_19139] == bool(mem[_19139])
                                    if not mem[_19139]:
                                        revert with 0, 'Approve failed'
                                    mem[mem[64]] = 0xf91b3f7200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 68] = 0
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = rewardsPoolAddress
                                    mem[mem[64] + 164] = block.timestamp
                                    require ext_code.size(address(stor16.field_8))
                                    call address(stor16.field_8).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args tokenAddress, (ext_call.return_data[0] * stor23[mem[0]] / 100) - (ext_call.return_data[0] * stor23[mem[0]] / 100 / 2), 0, 0, rewardsPoolAddress, block.timestamp
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    mem[mem[64]] = ext_call.return_data[0] * stor23[mem[0]] / 100 / 2
                                    emit SwapAndLiquify(ext_call.return_data[0] * stor23[mem[0]] / 100 / 2, 0, (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2));
                                    stor20 = 0
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = arg2
                                    require ext_code.size(stor18)
                                    call stor18.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), arg2
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _19550 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_19550] == bool(mem[_19550])
                                    _19786 = mem[64]
                                    mem[mem[64]] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 96
                                    mem[mem[64] + 100] = mem[96]
                                    mem[mem[64] + 132 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                    if ceil32(mem[96]) <= mem[96]:
                                        require ext_code.size(stor17)
                                        call stor17.0x90219732 with:
                                             gas gas_remaining wei
                                            args msg.sender, Array(len=mem[96], data=mem[mem[64] + 132 len ceil32(mem[96])]), arg2
                                    else:
                                        mem[mem[64] + mem[96] + 132] = 0
                                        mem[mem[64] + 68] = arg2
                                        require ext_code.size(stor17)
                                        call stor17.0x90219732 with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[96]) + _19786 + -mem[64] + 128]
                            else:
                                mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 406] = 2
                                mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 438] = tokenAddress
                                require ext_code.size(address(stor16.field_8))
                                staticcall address(stor16.field_8).WAVAX() with:
                                        gas gas_remaining wei
                                mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 502] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 470] = ext_call.return_data[12 len 20]
                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 502] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 506] = ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100
                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 570] = 160
                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 666] = 2
                                idx = 0
                                s = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 698
                                t = ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 438
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 602] = this.address
                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 634] = block.timestamp
                                require ext_code.size(address(stor16.field_8))
                                call address(stor16.field_8).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 698 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call rewardsPoolAddress with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] * stor23['rewards'] / 100 < ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100:
                                    revert with 0, 17
                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 506] = rewardsPoolAddress
                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 538] = (ext_call.return_data[0] * stor23['rewards'] / 100) - (ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100)
                                require ext_code.size(stor18)
                                call stor18.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args rewardsPoolAddress, (ext_call.return_data[0] * stor23['rewards'] / 100) - (ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100)
                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 502] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 502] = 13
                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 534] = 0x6c6971756964697479506f6f6c00000000000000000000000000000000000000
                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 598] = 0x6c6971756964697479506f6f6c00000000000000000000000000000000000000
                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 566] = 13
                                mem[0] = sha3(0x6c6971756964697479506f6f6c)
                                mem[32] = 23
                                if ext_call.return_data[0] and stor23[('name', 'stor6C69', 8589274640650428211244320124780)] > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                if ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 < ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2:
                                    revert with 0, 17
                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 615] = address(stor16.field_8)
                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 647] = ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2
                                require ext_code.size(stor18)
                                call stor18.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(stor16.field_0), ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2
                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 611] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Approve failed'
                                if not Mask(255, 1, ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100):
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    require ext_code.size(stor18)
                                    call stor18.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(stor16.field_0), (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Approve failed'
                                    require ext_code.size(address(stor16.field_8))
                                    call address(stor16.field_8).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args tokenAddress, (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2), 0, 0, rewardsPoolAddress, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100), 0, (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2));
                                    stor20 = 0
                                    require ext_code.size(stor18)
                                    call stor18.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    require ext_code.size(stor17)
                                    call stor17.0x90219732 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=arg1.length, data=arg1[all]), arg2
                                else:
                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 611] = 2
                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 643] = tokenAddress
                                    require ext_code.size(address(stor16.field_8))
                                    staticcall address(stor16.field_8).WAVAX() with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 707] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 707
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 675] = ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 707] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 711] = ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 743] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 775] = 160
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 871] = 2
                                    idx = 0
                                    s = ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 903
                                    t = ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 643
                                    while idx < mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 611]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 807] = this.address
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 839] = block.timestamp
                                    require ext_code.size(address(stor16.field_8))
                                    call address(stor16.field_8).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + -mem[64] + 963]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = address(stor16.field_8)
                                    mem[mem[64] + 36] = (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2)
                                    require ext_code.size(stor18)
                                    call stor18.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(stor16.field_0), (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _22979 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_22979] == bool(mem[_22979])
                                    if not mem[_22979]:
                                        revert with 0, 'Approve failed'
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = rewardsPoolAddress
                                    mem[mem[64] + 164] = block.timestamp
                                    require ext_code.size(address(stor16.field_8))
                                    call address(stor16.field_8).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args tokenAddress, (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2), 0, 0, rewardsPoolAddress, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100), 0, (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2));
                                    stor20 = 0
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = arg2
                                    require ext_code.size(stor18)
                                    call stor18.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), arg2
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23487 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_23487] == bool(mem[_23487])
                                    _23615 = mem[64]
                                    mem[mem[64]] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 96
                                    mem[mem[64] + 100] = mem[96]
                                    mem[mem[64] + 132 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                    if ceil32(mem[96]) <= mem[96]:
                                        require ext_code.size(stor17)
                                        call stor17.0x90219732 with:
                                             gas gas_remaining wei
                                            args msg.sender, Array(len=mem[96], data=mem[mem[64] + 132 len ceil32(mem[96])]), arg2
                                    else:
                                        mem[mem[64] + mem[96] + 132] = 0
                                        mem[mem[64] + 68] = arg2
                                        require ext_code.size(stor17)
                                        call stor17.0x90219732 with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[96]) + _23615 + -mem[64] + 128]
                        else:
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 201] = 2
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 233] = tokenAddress
                            require ext_code.size(address(stor16.field_8))
                            staticcall address(stor16.field_8).WAVAX() with:
                                    gas gas_remaining wei
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 297] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 297
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 265] = ext_call.return_data[12 len 20]
                            mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 297] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 301] = ext_call.return_data[0] * stor23[('name', 'stor7465', 8387217003176226668)] / 100
                            mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 333] = 0
                            mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 365] = 160
                            mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 461] = 2
                            idx = 0
                            s = ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 493
                            t = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 233
                            while idx < mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 201]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 397] = this.address
                            mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 429] = block.timestamp
                            require ext_code.size(address(stor16.field_8))
                            call address(stor16.field_8).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + -mem[64] + 553]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            call teamPoolAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4299 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4299] = 7
                            mem[_4299 + 32] = 'rewards' << 200
                            _4301 = mem[64]
                            mem[mem[64] + 32] = 'rewards' << 200
                            mem[mem[64] + 39] = 0
                            _9244 = mem[64]
                            mem[mem[64]] = 7
                            mem[64] = mem[64] + 39
                            mem[0] = sha3(mem[_9244 + 32 len mem[_9244]])
                            mem[32] = 23
                            _9247 = sha3(mem[0], 23)
                            if ext_call.return_data[0] and stor23[mem[0]] > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            mem[64] = _4301 + 103
                            mem[_4301 + 39] = 6
                            mem[_4301 + 71] = 0x7277537761700000000000000000000000000000000000000000000000000000
                            mem[_4301 + 135] = 0x7277537761700000000000000000000000000000000000000000000000000000
                            mem[_4301 + 103] = 6
                            mem[0] = sha3(125856827007344)
                            mem[32] = 23
                            if ext_call.return_data[0] * stor[_9247] / 100 and stor23[('name', 'stor7277', 125856827007344)] > -1 / ext_call.return_data[0] * stor[_9247] / 100:
                                revert with 0, 17
                            mem[_4301 + 145] = address(stor16.field_8)
                            mem[_4301 + 177] = ext_call.return_data[0] * stor[_9247] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100
                            require ext_code.size(stor18)
                            call stor18.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor16.field_0), ext_call.return_data[0] * stor[_9247] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100
                            mem[_4301 + 141] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'Approve failed'
                            if not ext_call.return_data[0] * stor[_9247] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100:
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call rewardsPoolAddress with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] * stor[_9247] / 100 < ext_call.return_data[0] * stor[_9247] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100:
                                    revert with 0, 17
                                mem[_4301 + ceil32(return_data.size) + 145] = rewardsPoolAddress
                                mem[_4301 + ceil32(return_data.size) + 177] = (ext_call.return_data[0] * stor[_9247] / 100) - (ext_call.return_data[0] * stor[_9247] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100)
                                require ext_code.size(stor18)
                                call stor18.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args rewardsPoolAddress, (ext_call.return_data[0] * stor[_9247] / 100) - (ext_call.return_data[0] * stor[_9247] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100)
                                mem[_4301 + ceil32(return_data.size) + 141] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[_4301 + (2 * ceil32(return_data.size)) + 141] = 13
                                mem[_4301 + (2 * ceil32(return_data.size)) + 173] = 0x6c6971756964697479506f6f6c00000000000000000000000000000000000000
                                mem[_4301 + (2 * ceil32(return_data.size)) + 237] = 0x6c6971756964697479506f6f6c00000000000000000000000000000000000000
                                mem[_4301 + (2 * ceil32(return_data.size)) + 205] = 13
                                mem[0] = sha3(0x6c6971756964697479506f6f6c)
                                mem[32] = 23
                                if ext_call.return_data[0] and stor23[('name', 'stor6C69', 8589274640650428211244320124780)] > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                if ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 < ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2:
                                    revert with 0, 17
                                mem[_4301 + (2 * ceil32(return_data.size)) + 254] = address(stor16.field_8)
                                mem[_4301 + (2 * ceil32(return_data.size)) + 286] = ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2
                                require ext_code.size(stor18)
                                call stor18.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(stor16.field_0), ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2
                                mem[_4301 + (2 * ceil32(return_data.size)) + 250] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    mem[_4301 + (4 * ceil32(return_data.size)) + 250] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_4301 + (4 * ceil32(return_data.size)) + 254] = 32
                                    mem[_4301 + (4 * ceil32(return_data.size)) + 286] = 14
                                    mem[_4301 + (4 * ceil32(return_data.size)) + 318] = 0x417070726f7665206661696c6564000000000000000000000000000000000000
                                    revert with memory
                                      from _4301 + (4 * ceil32(return_data.size)) + 250
                                       len (5 * ceil32(return_data.size)) + 100
                                if not Mask(255, 1, ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100):
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[_4301 + (4 * ceil32(return_data.size)) + 254] = address(stor16.field_8)
                                    mem[_4301 + (4 * ceil32(return_data.size)) + 286] = (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2)
                                    require ext_code.size(stor18)
                                    call stor18.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[_4301 + (4 * ceil32(return_data.size)) + 254 len (5 * ceil32(return_data.size)) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        mem[_4301 + (4 * ceil32(return_data.size)) + 250] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[_4301 + (4 * ceil32(return_data.size)) + 254] = 32
                                        mem[_4301 + (4 * ceil32(return_data.size)) + 286] = 14
                                        mem[_4301 + (4 * ceil32(return_data.size)) + 318] = 0x417070726f7665206661696c6564000000000000000000000000000000000000
                                        revert with memory
                                          from _4301 + (4 * ceil32(return_data.size)) + 250
                                           len (7 * ceil32(return_data.size)) + 100
                                    mem[_4301 + (4 * ceil32(return_data.size)) + 254] = tokenAddress
                                    mem[_4301 + (4 * ceil32(return_data.size)) + 286] = (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2)
                                    mem[_4301 + (4 * ceil32(return_data.size)) + 318] = 0
                                    mem[_4301 + (4 * ceil32(return_data.size)) + 350] = 0
                                    mem[_4301 + (4 * ceil32(return_data.size)) + 382] = rewardsPoolAddress
                                    mem[_4301 + (4 * ceil32(return_data.size)) + 414] = block.timestamp
                                    require ext_code.size(address(stor16.field_8))
                                    call address(stor16.field_8).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args mem[_4301 + (4 * ceil32(return_data.size)) + 254 len (7 * ceil32(return_data.size)) + 192]
                                    mem[_4301 + (4 * ceil32(return_data.size)) + 250 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    mem[_4301 + (8 * ceil32(return_data.size)) + 250] = ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2
                                    mem[_4301 + (8 * ceil32(return_data.size)) + 282] = 0
                                    mem[_4301 + (8 * ceil32(return_data.size)) + 314] = (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2)
                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                        mem[_4301 + (8 * ceil32(return_data.size)) + 250 len (13 * ceil32(return_data.size)) + 96],
                                    stor20 = 0
                                    mem[_4301 + (8 * ceil32(return_data.size)) + 254] = msg.sender
                                    mem[_4301 + (8 * ceil32(return_data.size)) + 286] = this.address
                                    mem[_4301 + (8 * ceil32(return_data.size)) + 318] = arg2
                                    require ext_code.size(stor18)
                                    call stor18.0x23b872dd with:
                                         gas gas_remaining wei
                                        args mem[_4301 + (8 * ceil32(return_data.size)) + 254 len (13 * ceil32(return_data.size)) + 96]
                                    mem[_4301 + (8 * ceil32(return_data.size)) + 250] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[_4301 + (9 * ceil32(return_data.size)) + 250] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                    mem[_4301 + (9 * ceil32(return_data.size)) + 254] = msg.sender
                                    mem[_4301 + (9 * ceil32(return_data.size)) + 286] = 96
                                    mem[_4301 + (9 * ceil32(return_data.size)) + 350] = mem[96]
                                    mem[_4301 + (9 * ceil32(return_data.size)) + 382 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                    if ceil32(mem[96]) > mem[96]:
                                        mem[_4301 + (9 * ceil32(return_data.size)) + mem[96] + 382] = 0
                                    require ext_code.size(stor17)
                                    call stor17.0x90219732 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=mem[96], data=mem[_4301 + (9 * ceil32(return_data.size)) + 382 len (5 * ceil32(return_data.size)) + ceil32(mem[96])]), arg2
                                else:
                                    mem[_4301 + (4 * ceil32(return_data.size)) + 250] = 2
                                    mem[_4301 + (4 * ceil32(return_data.size)) + 282] = tokenAddress
                                    require ext_code.size(address(stor16.field_8))
                                    staticcall address(stor16.field_8).WAVAX() with:
                                            gas gas_remaining wei
                                    mem[_4301 + (4 * ceil32(return_data.size)) + 346] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _4301 + (6 * ceil32(return_data.size)) + 346
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[_4301 + (4 * ceil32(return_data.size)) + 314] = ext_call.return_data[12 len 20]
                                    mem[_4301 + (6 * ceil32(return_data.size)) + 346] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_4301 + (6 * ceil32(return_data.size)) + 350] = ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2
                                    mem[_4301 + (6 * ceil32(return_data.size)) + 382] = 0
                                    mem[_4301 + (6 * ceil32(return_data.size)) + 414] = 160
                                    mem[_4301 + (6 * ceil32(return_data.size)) + 510] = 2
                                    idx = 0
                                    s = _4301 + (6 * ceil32(return_data.size)) + 542
                                    t = _4301 + (4 * ceil32(return_data.size)) + 282
                                    while idx < mem[_4301 + (4 * ceil32(return_data.size)) + 250]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4301 + (6 * ceil32(return_data.size)) + 446] = this.address
                                    mem[_4301 + (6 * ceil32(return_data.size)) + 478] = block.timestamp
                                    require ext_code.size(address(stor16.field_8))
                                    call address(stor16.field_8).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4301 + (6 * ceil32(return_data.size)) + -mem[64] + 602]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[mem[64]] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = address(stor16.field_8)
                                    mem[mem[64] + 36] = (ext_call.return_data[0] * stor23[mem[0]] / 100) - (ext_call.return_data[0] * stor23[mem[0]] / 100 / 2)
                                    require ext_code.size(stor18)
                                    call stor18.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(stor16.field_0), (ext_call.return_data[0] * stor23[mem[0]] / 100) - (ext_call.return_data[0] * stor23[mem[0]] / 100 / 2)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _22987 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_22987] == bool(mem[_22987])
                                    if not mem[_22987]:
                                        revert with 0, 'Approve failed'
                                    mem[mem[64]] = 0xf91b3f7200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 68] = 0
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = rewardsPoolAddress
                                    mem[mem[64] + 164] = block.timestamp
                                    require ext_code.size(address(stor16.field_8))
                                    call address(stor16.field_8).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args tokenAddress, (ext_call.return_data[0] * stor23[mem[0]] / 100) - (ext_call.return_data[0] * stor23[mem[0]] / 100 / 2), 0, 0, rewardsPoolAddress, block.timestamp
                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    mem[mem[64]] = ext_call.return_data[0] * stor23[mem[0]] / 100 / 2
                                    emit SwapAndLiquify(ext_call.return_data[0] * stor23[mem[0]] / 100 / 2, 0, (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2));
                                    stor20 = 0
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = arg2
                                    require ext_code.size(stor18)
                                    call stor18.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), arg2
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _23498 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_23498] == bool(mem[_23498])
                                    _23638 = mem[64]
                                    mem[mem[64]] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 96
                                    mem[mem[64] + 100] = mem[96]
                                    mem[mem[64] + 132 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                    if ceil32(mem[96]) <= mem[96]:
                                        require ext_code.size(stor17)
                                        call stor17.0x90219732 with:
                                             gas gas_remaining wei
                                            args msg.sender, Array(len=mem[96], data=mem[mem[64] + 132 len ceil32(mem[96])]), arg2
                                    else:
                                        mem[mem[64] + mem[96] + 132] = 0
                                        mem[mem[64] + 68] = arg2
                                        require ext_code.size(stor17)
                                        call stor17.0x90219732 with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(mem[96]) + _23638 + -mem[64] + 128]
                            else:
                                mem[_4301 + ceil32(return_data.size) + 141] = 2
                                mem[_4301 + ceil32(return_data.size) + 173] = tokenAddress
                                require ext_code.size(address(stor16.field_8))
                                staticcall address(stor16.field_8).WAVAX() with:
                                        gas gas_remaining wei
                                mem[_4301 + ceil32(return_data.size) + 237] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _4301 + (2 * ceil32(return_data.size)) + 237
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[_4301 + ceil32(return_data.size) + 205] = ext_call.return_data[12 len 20]
                                mem[_4301 + (2 * ceil32(return_data.size)) + 237] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[_4301 + (2 * ceil32(return_data.size)) + 241] = ext_call.return_data[0] * stor[_9247] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100
                                mem[_4301 + (2 * ceil32(return_data.size)) + 273] = 0
                                mem[_4301 + (2 * ceil32(return_data.size)) + 305] = 160
                                mem[_4301 + (2 * ceil32(return_data.size)) + 401] = 2
                                idx = 0
                                s = _4301 + (2 * ceil32(return_data.size)) + 433
                                t = _4301 + ceil32(return_data.size) + 173
                                while idx < mem[_4301 + ceil32(return_data.size) + 141]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_4301 + (2 * ceil32(return_data.size)) + 337] = this.address
                                mem[_4301 + (2 * ceil32(return_data.size)) + 369] = block.timestamp
                                require ext_code.size(address(stor16.field_8))
                                call address(stor16.field_8).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _4301 + (2 * ceil32(return_data.size)) + -mem[64] + 493]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call rewardsPoolAddress with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] * stor[_9247] / 100 < ext_call.return_data[0] * stor[_9247] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100:
                                    revert with 0, 17
                                mem[mem[64] + 4] = rewardsPoolAddress
                                mem[mem[64] + 36] = (ext_call.return_data[0] * stor[_9247] / 100) - (ext_call.return_data[0] * stor[_9247] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100)
                                require ext_code.size(stor18)
                                call stor18.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args rewardsPoolAddress, (ext_call.return_data[0] * stor[_9247] / 100) - (ext_call.return_data[0] * stor[_9247] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _19179 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_19179] == bool(mem[_19179])
                                _19339 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_19339] = 13
                                mem[_19339 + 32] = 0x6c6971756964697479506f6f6c00000000000000000000000000000000000000
                                _19395 = mem[64]
                                mem[mem[64] + 32] = 0x6c6971756964697479506f6f6c00000000000000000000000000000000000000
                                mem[mem[64] + 45] = 0
                                _22840 = mem[64]
                                mem[mem[64]] = 13
                                mem[64] = mem[64] + 45
                                mem[0] = sha3(mem[_22840 + 32 len mem[_22840]])
                                mem[32] = 23
                                _22843 = sha3(mem[0], 23)
                                if ext_call.return_data[0] and stor23[mem[0]] > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                if ext_call.return_data[0] * stor23[mem[0]] / 100 < ext_call.return_data[0] * stor23[mem[0]] / 100 / 2:
                                    revert with 0, 17
                                mem[_19395 + 45] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                                mem[_19395 + 49] = address(stor16.field_8)
                                mem[_19395 + 81] = ext_call.return_data[0] * stor23[mem[0]] / 100 / 2
                                require ext_code.size(stor18)
                                call stor18.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(stor16.field_0), ext_call.return_data[0] * stor23[mem[0]] / 100 / 2
                                mem[_19395 + 45] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _19395 + ceil32(return_data.size) + 45
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Approve failed'
                                if not Mask(255, 1, ext_call.return_data[0] * stor23[mem[0]] / 100):
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[_19395 + ceil32(return_data.size) + 49] = address(stor16.field_8)
                                    mem[_19395 + ceil32(return_data.size) + 81] = (ext_call.return_data[0] * stor23[mem[0]] / 100) - (ext_call.return_data[0] * stor23[mem[0]] / 100 / 2)
                                    require ext_code.size(stor18)
                                    call stor18.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(stor16.field_0), (ext_call.return_data[0] * stor23[mem[0]] / 100) - (ext_call.return_data[0] * stor23[mem[0]] / 100 / 2)
                                    mem[_19395 + ceil32(return_data.size) + 45] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Approve failed'
                                    mem[_19395 + (2 * ceil32(return_data.size)) + 113] = 0
                                    mem[_19395 + (2 * ceil32(return_data.size)) + 145] = 0
                                    mem[_19395 + (2 * ceil32(return_data.size)) + 177] = rewardsPoolAddress
                                    mem[_19395 + (2 * ceil32(return_data.size)) + 209] = block.timestamp
                                    require ext_code.size(address(stor16.field_8))
                                    call address(stor16.field_8).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args tokenAddress, (ext_call.return_data[0] * stor23[mem[0]] / 100) - (ext_call.return_data[0] * stor23[mem[0]] / 100 / 2), 0, 0, rewardsPoolAddress, block.timestamp
                                    mem[_19395 + (2 * ceil32(return_data.size)) + 45 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _19395 + (4 * ceil32(return_data.size)) + 45
                                    require return_data.size >= 96
                                    emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] * stor23[mem[0]] / 100), 0, (ext_call.return_data[0] * stor23[mem[0]] / 100) - (ext_call.return_data[0] * stor23[mem[0]] / 100 / 2));
                                    stor20 = 0
                                    mem[_19395 + (4 * ceil32(return_data.size)) + 49] = msg.sender
                                    mem[_19395 + (4 * ceil32(return_data.size)) + 81] = this.address
                                    mem[_19395 + (4 * ceil32(return_data.size)) + 113] = arg2
                                    require ext_code.size(stor18)
                                    call stor18.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), arg2
                                    mem[_19395 + (4 * ceil32(return_data.size)) + 45] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _19395 + (6 * ceil32(return_data.size)) + 45
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[_19395 + (6 * ceil32(return_data.size)) + 45] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                    mem[_19395 + (6 * ceil32(return_data.size)) + 49] = msg.sender
                                    mem[_19395 + (6 * ceil32(return_data.size)) + 81] = 96
                                    mem[_19395 + (6 * ceil32(return_data.size)) + 145] = mem[96]
                                    mem[_19395 + (6 * ceil32(return_data.size)) + 177 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                    if ceil32(mem[96]) > mem[96]:
                                        mem[_19395 + (6 * ceil32(return_data.size)) + mem[96] + 177] = 0
                                    require ext_code.size(stor17)
                                    call stor17.0x90219732 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=mem[96], data=mem[_19395 + (6 * ceil32(return_data.size)) + 177 len ceil32(mem[96])]), arg2
                                else:
                                    mem[_19395 + ceil32(return_data.size) + 45] = 2
                                    mem[64] = _19395 + ceil32(return_data.size) + 141
                                    mem[_19395 + ceil32(return_data.size) + 77] = tokenAddress
                                    require ext_code.size(address(stor16.field_8))
                                    staticcall address(stor16.field_8).WAVAX() with:
                                            gas gas_remaining wei
                                    mem[_19395 + ceil32(return_data.size) + 141] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _19395 + (2 * ceil32(return_data.size)) + 141
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[_19395 + ceil32(return_data.size) + 109] = ext_call.return_data[12 len 20]
                                    mem[_19395 + (2 * ceil32(return_data.size)) + 141] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[_19395 + (2 * ceil32(return_data.size)) + 145] = ext_call.return_data[0] * stor23[mem[0]] / 100 / 2
                                    mem[_19395 + (2 * ceil32(return_data.size)) + 177] = 0
                                    mem[_19395 + (2 * ceil32(return_data.size)) + 209] = 160
                                    mem[_19395 + (2 * ceil32(return_data.size)) + 305] = 2
                                    idx = 0
                                    s = _19395 + (2 * ceil32(return_data.size)) + 337
                                    t = _19395 + ceil32(return_data.size) + 77
                                    while idx < mem[_19395 + ceil32(return_data.size) + 45]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_19395 + (2 * ceil32(return_data.size)) + 241] = this.address
                                    mem[_19395 + (2 * ceil32(return_data.size)) + 273] = block.timestamp
                                    require ext_code.size(address(stor16.field_8))
                                    call address(stor16.field_8).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _19395 + (2 * ceil32(return_data.size)) + -mem[64] + 397]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = address(stor16.field_8)
                                    mem[mem[64] + 36] = (ext_call.return_data[0] * stor[_22843] / 100) - (ext_call.return_data[0] * stor[_22843] / 100 / 2)
                                    require ext_code.size(stor18)
                                    call stor18.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(stor16.field_0), (ext_call.return_data[0] * stor[_22843] / 100) - (ext_call.return_data[0] * stor[_22843] / 100 / 2)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _24859 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_24859] == bool(mem[_24859])
                                    if not mem[_24859]:
                                        revert with 0, 'Approve failed'
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = rewardsPoolAddress
                                    mem[mem[64] + 164] = block.timestamp
                                    require ext_code.size(address(stor16.field_8))
                                    call address(stor16.field_8).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args tokenAddress, (ext_call.return_data[0] * stor[_22843] / 100) - (ext_call.return_data[0] * stor[_22843] / 100 / 2), 0, 0, rewardsPoolAddress, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] * stor[_22843] / 100), 0, (ext_call.return_data[0] * stor[_22843] / 100) - (ext_call.return_data[0] * stor[_22843] / 100 / 2));
                                    stor20 = 0
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = this.address
                                    mem[mem[64] + 68] = arg2
                                    require ext_code.size(stor18)
                                    call stor18.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), arg2
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _25083 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_25083] == bool(mem[_25083])
                                    _25115 = mem[64]
                                    mem[mem[64]] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 96
                                    _25131 = mem[96]
                                    mem[mem[64] + 100] = mem[96]
                                    mem[mem[64] + 132 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                    if ceil32(mem[96]) <= mem[96]:
                                        require ext_code.size(stor17)
                                        call stor17.0x90219732 with:
                                             gas gas_remaining wei
                                            args msg.sender, Array(len=mem[96], data=mem[mem[64] + 132 len ceil32(mem[96])]), arg2
                                    else:
                                        mem[mem[64] + mem[96] + 132] = 0
                                        mem[mem[64] + 68] = arg2
                                        require ext_code.size(stor17)
                                        call stor17.0x90219732 with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len ceil32(_25131) + _25115 + -mem[64] + 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        emit PaymentReceived(msg.sender, msg.value);
    else:
        if unknown_0x7871db37(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x527509f3(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x3a98ef39(?????) > uint32(call.func_hash) >> 224:
                    if rewardsPool() == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return rewardsPoolAddress
                    if unknown_0x1319e7e1(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        stor17 = address(arg1)
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0x19165587(?????):
                            if uint32(call.func_hash) >> 224 != unknown_0x2e497c11(?????):
                                require unknown_0x39636504(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                return teamPoolAddress
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require arg2 <= test266151307()
                            require arg2 + 35 < calldata.size
                            if arg2.length > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(arg2.length)) + 129 < 128 or ceil32(ceil32(arg2.length)) + 129 > test266151307():
                                revert with 0, 65
                            require arg2 + arg2.length + 36 <= calldata.size
                            if stor21[msg.sender]:
                                revert with 0, 'BLACKLISTED'
                            require ext_code.size(stor17)
                            call stor17.0x20ffd7fd with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=arg2.length, data=arg2[all]), arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            if not shares[address(arg1)]:
                                revert with 0, 'PaymentSplitter: account has no shares'
                            if eth.balance(this.address) > !totalReleased:
                                revert with 0, 17
                            if eth.balance(this.address) + totalReleased and shares[address(arg1)] > -1 / eth.balance(this.address) + totalReleased:
                                revert with 0, 17
                            if not totalShares:
                                revert with 0, 18
                            if (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares < released[address(arg1)]:
                                revert with 0, 17
                            if not ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]:
                                revert with 0, 'PaymentSplitter: account is not due payment'
                            if released[address(arg1)] > !(((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]):
                                revert with 0, 17
                            released[address(arg1)] = (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares
                            if totalReleased > !(((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]):
                                revert with 0, 17
                            totalReleased = totalReleased + ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]
                            if eth.balance(this.address) < ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]:
                                revert with 0, 'Address: insufficient balance'
                            call address(arg1) with:
                               value ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)] wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'Address: unable to send value, recipient may have reverted'
                            emit PaymentReleased(address(arg1), ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]);
                else:
                    if unknown_0x3a98ef39(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return totalShares
                    if unknown_0x406072a9(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 == address(arg2)
                        return released[address(arg1)][address(arg2)]
                    if unknown_0x455a4396(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 == bool(arg2)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        stor21[address(arg1)] = uint8(bool(arg2))
                    else:
                        if unknown_0x458cdaee(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require arg1 <= test266151307()
                            require arg1 + 35 < calldata.size
                            if arg1.length > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(arg1.length)) + 129 < 128 or ceil32(ceil32(arg1.length)) + 129 > test266151307():
                                revert with 0, 65
                            require arg1 + arg1.length + 36 <= calldata.size
                            mem[160 len arg1.length] = arg1[all]
                            mem[arg1.length + 160] = 0
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            stor23[Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 160 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256] = arg2
                        else:
                            require unknown_0x48b75044(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require arg1 == address(arg1)
                            require arg2 == address(arg2)
                            if not shares[address(arg2)]:
                                revert with 0, 'PaymentSplitter: account has no shares'
                            mem[132] = this.address
                            require ext_code.size(address(arg1))
                            staticcall address(arg1).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > !totalReleased[address(arg1)]:
                                revert with 0, 17
                            if ext_call.return_data[0] + totalReleased[address(arg1)] and shares[address(arg2)] > -1 / ext_call.return_data[0] + totalReleased[address(arg1)]:
                                revert with 0, 17
                            if not totalShares:
                                revert with 0, 18
                            if (ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares < released[address(arg1)][address(arg2)]:
                                revert with 0, 17
                            if not ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]:
                                revert with 0, 'PaymentSplitter: account is not due payment'
                            if released[address(arg1)][address(arg2)] > !(((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]):
                                revert with 0, 17
                            released[address(arg1)][address(arg2)] = (ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares
                            if totalReleased[address(arg1)] > !(((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]):
                                revert with 0, 17
                            totalReleased[address(arg1)] = totalReleased[address(arg1)] + ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]
                            mem[ceil32(return_data.size) + 164] = address(arg2)
                            mem[ceil32(return_data.size) + 196] = ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]
                            mem[ceil32(return_data.size) + 128] = 68
                            mem[ceil32(return_data.size) + 164 len 28] = address(arg2) << 64
                            mem[ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 228] = 32
                            mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(arg1)):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0
                            mem[ceil32(return_data.size) + 360] = 0
                            call address(arg1) with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0) << 288)
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
                            emit ERC20PaymentReleased(address(arg2), ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], address(arg1));
            else:
                if unknown_0x6653a340(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x6653a340(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        rewardsPoolAddress = address(arg1)
                    else:
                        if unknown_0x6770474b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            swapTokensAmount = arg1
                        else:
                            if uint32(call.func_hash) >> 224 != unknown_0x682ca7e6(?????):
                                if unknown_0x6bca89cb(?????) == uint32(call.func_hash) >> 224:
                                    require not msg.value
                                    return joePairAddress
                                if unknown_0x6eacab12(?????) == uint32(call.func_hash) >> 224:
                                    require not msg.value
                                    require calldata.size - 4 >= 32
                                    require arg1 == address(arg1)
                                    if owner != msg.sender:
                                        revert with 0, 'Ownable: caller is not the owner'
                                    teamPoolAddress = address(arg1)
                                else:
                                    require unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224
                                    require not msg.value
                                    if owner != msg.sender:
                                        revert with 0, 'Ownable: caller is not the owner'
                                    owner = 0
                                    emit OwnershipTransferred(owner, 0);
                            else:
                                require not msg.value
                                require calldata.size - 4 >= 64
                                if stor21[msg.sender]:
                                    revert with 0, 'BLACKLISTED'
                                require ext_code.size(stor18)
                                staticcall stor18.0x70a08231 with:
                                        gas gas_remaining wei
                                       args msg.sender
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < arg2:
                                    revert with 0, 'NC:5'
                                require ext_code.size(stor18)
                                call stor18.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                require ext_code.size(stor17)
                                call stor17.0xdde946e3 with:
                                     gas gas_remaining wei
                                    args msg.sender, arg1, arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    if unknown_0x527509f3(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_527509f3Address
                    if unknown_0x54557973(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if not msg.sender:
                            revert with 0, 'CASHOUT:5'
                        if stor21[address(msg.sender)]:
                            revert with 0, 'BLACKLISTED'
                        if teamPoolAddress == msg.sender:
                            revert with 0, 'CASHOUT:7'
                        if rewardsPoolAddress == msg.sender:
                            revert with 0, 'CASHOUT:7'
                        mem[132] = msg.sender
                        require ext_code.size(stor17)
                        staticcall stor17.getAllNodesRewards(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'CASHOUT:8'
                        mem[ceil32(return_data.size) + 128] = 7
                        mem[ceil32(return_data.size) + 160] = 0x636173686f757400000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 224] = 0x636173686f757400000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 192] = 7
                        if stor23[('name', 'stor6361', 27973170995623284)] <= 0:
                            if ext_call.return_data[0] < 0:
                                revert with 0, 17
                            if stor23[('name', 'stor6275', 1651864174)] <= 0:
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                mem[ceil32(return_data.size) + 335] = rewardsPoolAddress
                                mem[ceil32(return_data.size) + 367] = msg.sender
                                mem[ceil32(return_data.size) + 399] = ext_call.return_data[0]
                                require ext_code.size(stor18)
                                call stor18.0x23b872dd with:
                                     gas gas_remaining wei
                                    args rewardsPoolAddress, msg.sender, ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 331] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(2 * ceil32(return_data.size)) + 335] = msg.sender
                                require ext_code.size(stor17)
                                call stor17.cashoutAllNodesRewards(address arg1) with:
                                     gas gas_remaining wei
                                    args mem[(2 * ceil32(return_data.size)) + 335 len ceil32(return_data.size) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalClaimed > !ext_call.return_data[0]:
                                    revert with 0, 17
                                totalClaimed += ext_call.return_data[0]
                                mem[(2 * ceil32(return_data.size)) + 331] = ext_call.return_data[0]
                                emit Cashout(mem[(2 * ceil32(return_data.size)) + 331 len ceil32(return_data.size) + 32], msg.sender, 0);
                            else:
                                if ext_call.return_data[0] and stor23[('name', 'stor6275', 1651864174)] > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                mem[ceil32(return_data.size) + 435] = rewardsPoolAddress
                                mem[ceil32(return_data.size) + 467] = deadWalletAddress
                                mem[ceil32(return_data.size) + 499] = ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100
                                require ext_code.size(stor18)
                                call stor18.0x23b872dd with:
                                     gas gas_remaining wei
                                    args rewardsPoolAddress, deadWalletAddress, ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100
                                mem[ceil32(return_data.size) + 431] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if ext_call.return_data[0] < ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100:
                                    revert with 0, 17
                                mem[(2 * ceil32(return_data.size)) + 435] = rewardsPoolAddress
                                mem[(2 * ceil32(return_data.size)) + 467] = msg.sender
                                mem[(2 * ceil32(return_data.size)) + 499] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100)
                                require ext_code.size(stor18)
                                call stor18.0x23b872dd with:
                                     gas gas_remaining wei
                                    args mem[(2 * ceil32(return_data.size)) + 435 len ceil32(return_data.size) + 96]
                                mem[(2 * ceil32(return_data.size)) + 431] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(4 * ceil32(return_data.size)) + 435] = msg.sender
                                require ext_code.size(stor17)
                                call stor17.cashoutAllNodesRewards(address arg1) with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 435 len (5 * ceil32(return_data.size)) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if totalClaimed > !(ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100)):
                                    revert with 0, 17
                                totalClaimed = totalClaimed + ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100)
                                mem[(4 * ceil32(return_data.size)) + 431] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100)
                                emit Cashout(mem[(4 * ceil32(return_data.size)) + 431 len (5 * ceil32(return_data.size)) + 32], msg.sender, 0);
                        else:
                            mem[ceil32(return_data.size) + 231] = 7
                            mem[ceil32(return_data.size) + 263] = 0x636173686f757400000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 327] = 0x636173686f757400000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 295] = 7
                            mem[0] = sha3(27973170995623284)
                            mem[32] = 23
                            if ext_call.return_data[0] and stor23[('name', 'stor6361', 27973170995623284)] > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            mem[ceil32(return_data.size) + 338] = address(stor16.field_8)
                            mem[ceil32(return_data.size) + 370] = ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100
                            require ext_code.size(stor18)
                            call stor18.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor16.field_0), ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100
                            mem[ceil32(return_data.size) + 334] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                mem[(2 * ceil32(return_data.size)) + 334] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 338] = 32
                                mem[(2 * ceil32(return_data.size)) + 370] = 14
                                mem[(2 * ceil32(return_data.size)) + 402] = 0x417070726f7665206661696c6564000000000000000000000000000000000000
                                revert with memory
                                  from (2 * ceil32(return_data.size)) + 334
                                   len ceil32(return_data.size) + 100
                            if not ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100:
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call rewardsPoolAddress with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] < ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100:
                                    revert with 0, 17
                                if stor23[('name', 'stor6275', 1651864174)] <= 0:
                                    if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) < 0:
                                        revert with 0, 17
                                    mem[(2 * ceil32(return_data.size)) + 438] = rewardsPoolAddress
                                    mem[(2 * ceil32(return_data.size)) + 470] = msg.sender
                                    mem[(2 * ceil32(return_data.size)) + 502] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)
                                    require ext_code.size(stor18)
                                    call stor18.0x23b872dd with:
                                         gas gas_remaining wei
                                        args rewardsPoolAddress, msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)
                                    mem[(2 * ceil32(return_data.size)) + 434] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(4 * ceil32(return_data.size)) + 438] = msg.sender
                                    require ext_code.size(stor17)
                                    call stor17.cashoutAllNodesRewards(address arg1) with:
                                         gas gas_remaining wei
                                        args mem[(4 * ceil32(return_data.size)) + 438 len (5 * ceil32(return_data.size)) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalClaimed > !(ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)):
                                        revert with 0, 17
                                    totalClaimed = totalClaimed + ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)
                                    mem[(4 * ceil32(return_data.size)) + 434] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)
                                    emit Cashout(mem[(4 * ceil32(return_data.size)) + 434 len (5 * ceil32(return_data.size)) + 32], msg.sender, 0);
                                else:
                                    if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) and stor23[('name', 'stor6275', 1651864174)] > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100):
                                        revert with 0, 17
                                    mem[(2 * ceil32(return_data.size)) + 538] = rewardsPoolAddress
                                    mem[(2 * ceil32(return_data.size)) + 570] = deadWalletAddress
                                    mem[(2 * ceil32(return_data.size)) + 602] = (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100
                                    require ext_code.size(stor18)
                                    call stor18.0x23b872dd with:
                                         gas gas_remaining wei
                                        args rewardsPoolAddress, deadWalletAddress, (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100
                                    mem[(2 * ceil32(return_data.size)) + 534] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) < (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100:
                                        revert with 0, 17
                                    mem[(4 * ceil32(return_data.size)) + 538] = rewardsPoolAddress
                                    mem[(4 * ceil32(return_data.size)) + 570] = msg.sender
                                    mem[(4 * ceil32(return_data.size)) + 602] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)
                                    require ext_code.size(stor18)
                                    call stor18.0x23b872dd with:
                                         gas gas_remaining wei
                                        args mem[(4 * ceil32(return_data.size)) + 538 len (5 * ceil32(return_data.size)) + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(4 * ceil32(return_data.size)) + 538] = msg.sender
                                    require ext_code.size(stor17)
                                    call stor17.cashoutAllNodesRewards(address arg1) with:
                                         gas gas_remaining wei
                                        args mem[(4 * ceil32(return_data.size)) + 538 len (7 * ceil32(return_data.size)) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalClaimed > !(ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)):
                                        revert with 0, 17
                                    totalClaimed = totalClaimed + ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)
                                    mem[(4 * ceil32(return_data.size)) + 534] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)
                                    emit Cashout(mem[(4 * ceil32(return_data.size)) + 534 len (7 * ceil32(return_data.size)) + 32], msg.sender, 0);
                            else:
                                mem[(2 * ceil32(return_data.size)) + 334] = 2
                                mem[(2 * ceil32(return_data.size)) + 366] = tokenAddress
                                require ext_code.size(address(stor16.field_8))
                                staticcall address(stor16.field_8).WAVAX() with:
                                        gas gas_remaining wei
                                mem[(2 * ceil32(return_data.size)) + 430] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 430
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 398] = ext_call.return_data[12 len 20]
                                mem[(4 * ceil32(return_data.size)) + 430] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 434] = ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100
                                mem[(4 * ceil32(return_data.size)) + 466] = 0
                                mem[(4 * ceil32(return_data.size)) + 498] = 160
                                mem[(4 * ceil32(return_data.size)) + 594] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 626
                                t = (2 * ceil32(return_data.size)) + 366
                                while idx < mem[(2 * ceil32(return_data.size)) + 334]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 530] = this.address
                                mem[(4 * ceil32(return_data.size)) + 562] = block.timestamp
                                require ext_code.size(address(stor16.field_8))
                                call address(stor16.field_8).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 686]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call rewardsPoolAddress with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] < ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100:
                                    revert with 0, 17
                                _23599 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_23599] = 4
                                mem[_23599 + 32] = 0x6275726e00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 32] = 0x6275726e00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 36] = 0
                                _31916 = mem[64]
                                mem[mem[64]] = 4
                                mem[64] = mem[64] + 36
                                mem[0] = sha3(mem[_31916 + 32 len mem[_31916]])
                                if stor23[mem[0]] <= 0:
                                    if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) < 0:
                                        revert with 0, 17
                                    require ext_code.size(stor18)
                                    call stor18.0x23b872dd with:
                                         gas gas_remaining wei
                                        args rewardsPoolAddress, msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    require ext_code.size(stor17)
                                    call stor17.cashoutAllNodesRewards(address arg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalClaimed > !(ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)):
                                        revert with 0, 17
                                    totalClaimed = totalClaimed + ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)
                                    emit Cashout((ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)), msg.sender, 0);
                                else:
                                    if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) and stor23[('name', 'stor6275', 1651864174)] > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100):
                                        revert with 0, 17
                                    require ext_code.size(stor18)
                                    call stor18.0x23b872dd with:
                                         gas gas_remaining wei
                                        args rewardsPoolAddress, deadWalletAddress, (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) < (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100:
                                        revert with 0, 17
                                    require ext_code.size(stor18)
                                    call stor18.0x23b872dd with:
                                         gas gas_remaining wei
                                        args rewardsPoolAddress, msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    require ext_code.size(stor17)
                                    call stor17.cashoutAllNodesRewards(address arg1) with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalClaimed > !(ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)):
                                        revert with 0, 17
                                    totalClaimed = totalClaimed + ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)
                                    emit Cashout((ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)), msg.sender, 0);
                    else:
                        if unknown_0x5c69cb5d(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if not msg.sender:
                                revert with 0, 'COMP:1'
                            if stor21[address(msg.sender)]:
                                revert with 0, 'BLACKLISTED'
                            if teamPoolAddress == msg.sender:
                                revert with 0, 'COMP:2'
                            if rewardsPoolAddress == msg.sender:
                                revert with 0, 'COMP:2'
                            mem[132] = msg.sender
                            mem[164] = arg1
                            require ext_code.size(stor17)
                            staticcall stor17.getNodeReward(address arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args msg.sender, arg1
                            mem[128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'COMP:3'
                            mem[ceil32(return_data.size) + 128] = 8
                            mem[ceil32(return_data.size) + 160] = 0x636f6d706f756e64000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 224] = 0x636f6d706f756e64000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 192] = 8
                            if stor23[('name', 'stor636F', 7165065861843480164)] <= 0:
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                if stor23[('name', 'stor6275', 1651864174)] <= 0:
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 17
                                    mem[ceil32(return_data.size) + 336] = rewardsPoolAddress
                                    mem[ceil32(return_data.size) + 368] = this.address
                                    mem[ceil32(return_data.size) + 400] = ext_call.return_data[0]
                                    require ext_code.size(stor18)
                                    call stor18.0x23b872dd with:
                                         gas gas_remaining wei
                                        args rewardsPoolAddress, address(this.address), ext_call.return_data[0]
                                    mem[ceil32(return_data.size) + 332] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(2 * ceil32(return_data.size)) + 336] = msg.sender
                                    mem[(2 * ceil32(return_data.size)) + 368] = arg1
                                    mem[(2 * ceil32(return_data.size)) + 400] = ext_call.return_data[0]
                                    require ext_code.size(stor17)
                                    call stor17.0xcbd14993 with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 336 len ceil32(return_data.size) + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(2 * ceil32(return_data.size)) + 332] = ext_call.return_data[0]
                                    emit Compound(mem[(2 * ceil32(return_data.size)) + 332 len ceil32(return_data.size) + 32], msg.sender, arg1);
                                else:
                                    if ext_call.return_data[0] and stor23[('name', 'stor6275', 1651864174)] > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[ceil32(return_data.size) + 436] = rewardsPoolAddress
                                    mem[ceil32(return_data.size) + 468] = deadWalletAddress
                                    mem[ceil32(return_data.size) + 500] = ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100
                                    require ext_code.size(stor18)
                                    call stor18.0x23b872dd with:
                                         gas gas_remaining wei
                                        args rewardsPoolAddress, deadWalletAddress, ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100
                                    mem[ceil32(return_data.size) + 432] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if ext_call.return_data[0] < ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100:
                                        revert with 0, 17
                                    mem[(2 * ceil32(return_data.size)) + 436] = rewardsPoolAddress
                                    mem[(2 * ceil32(return_data.size)) + 468] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 500] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100)
                                    require ext_code.size(stor18)
                                    call stor18.0x23b872dd with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 436 len ceil32(return_data.size) + 96]
                                    mem[(2 * ceil32(return_data.size)) + 432] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(4 * ceil32(return_data.size)) + 436] = msg.sender
                                    mem[(4 * ceil32(return_data.size)) + 468] = arg1
                                    mem[(4 * ceil32(return_data.size)) + 500] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100)
                                    require ext_code.size(stor17)
                                    call stor17.0xcbd14993 with:
                                         gas gas_remaining wei
                                        args mem[(4 * ceil32(return_data.size)) + 436 len (5 * ceil32(return_data.size)) + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + 432] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100)
                                    emit Compound(mem[(4 * ceil32(return_data.size)) + 432 len (5 * ceil32(return_data.size)) + 32], msg.sender, arg1);
                            else:
                                mem[ceil32(return_data.size) + 232] = 8
                                mem[ceil32(return_data.size) + 264] = 0x636f6d706f756e64000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 328] = 0x636f6d706f756e64000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 296] = 8
                                mem[0] = sha3(7165065861843480164)
                                mem[32] = 23
                                if ext_call.return_data[0] and stor23[('name', 'stor636F', 7165065861843480164)] > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                mem[ceil32(return_data.size) + 340] = address(stor16.field_8)
                                mem[ceil32(return_data.size) + 372] = ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100
                                require ext_code.size(stor18)
                                call stor18.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(stor16.field_0), ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100
                                mem[ceil32(return_data.size) + 336] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    mem[(2 * ceil32(return_data.size)) + 336] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 340] = 32
                                    mem[(2 * ceil32(return_data.size)) + 372] = 14
                                    mem[(2 * ceil32(return_data.size)) + 404] = 0x417070726f7665206661696c6564000000000000000000000000000000000000
                                    revert with memory
                                      from (2 * ceil32(return_data.size)) + 336
                                       len ceil32(return_data.size) + 100
                                if not ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100:
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call rewardsPoolAddress with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] < ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100:
                                        revert with 0, 17
                                    if stor23[('name', 'stor6275', 1651864174)] <= 0:
                                        if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100) < 0:
                                            revert with 0, 17
                                        mem[(2 * ceil32(return_data.size)) + 440] = rewardsPoolAddress
                                        mem[(2 * ceil32(return_data.size)) + 472] = this.address
                                        mem[(2 * ceil32(return_data.size)) + 504] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100)
                                        require ext_code.size(stor18)
                                        call stor18.0x23b872dd with:
                                             gas gas_remaining wei
                                            args rewardsPoolAddress, address(this.address), ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100)
                                        mem[(2 * ceil32(return_data.size)) + 436] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[(4 * ceil32(return_data.size)) + 440] = msg.sender
                                        mem[(4 * ceil32(return_data.size)) + 472] = arg1
                                        mem[(4 * ceil32(return_data.size)) + 504] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100)
                                        require ext_code.size(stor17)
                                        call stor17.0xcbd14993 with:
                                             gas gas_remaining wei
                                            args mem[(4 * ceil32(return_data.size)) + 440 len (5 * ceil32(return_data.size)) + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(4 * ceil32(return_data.size)) + 436] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100)
                                        emit Compound(mem[(4 * ceil32(return_data.size)) + 436 len (5 * ceil32(return_data.size)) + 32], msg.sender, arg1);
                                    else:
                                        if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100) and stor23[('name', 'stor6275', 1651864174)] > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100):
                                            revert with 0, 17
                                        mem[(2 * ceil32(return_data.size)) + 540] = rewardsPoolAddress
                                        mem[(2 * ceil32(return_data.size)) + 572] = deadWalletAddress
                                        mem[(2 * ceil32(return_data.size)) + 604] = (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100
                                        require ext_code.size(stor18)
                                        call stor18.0x23b872dd with:
                                             gas gas_remaining wei
                                            args rewardsPoolAddress, deadWalletAddress, (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100
                                        mem[(2 * ceil32(return_data.size)) + 536] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100) < (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100:
                                            revert with 0, 17
                                        mem[(4 * ceil32(return_data.size)) + 540] = rewardsPoolAddress
                                        mem[(4 * ceil32(return_data.size)) + 572] = this.address
                                        mem[(4 * ceil32(return_data.size)) + 604] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)
                                        require ext_code.size(stor18)
                                        call stor18.0x23b872dd with:
                                             gas gas_remaining wei
                                            args mem[(4 * ceil32(return_data.size)) + 540 len (5 * ceil32(return_data.size)) + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[(4 * ceil32(return_data.size)) + 540] = msg.sender
                                        mem[(4 * ceil32(return_data.size)) + 572] = arg1
                                        mem[(4 * ceil32(return_data.size)) + 604] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)
                                        require ext_code.size(stor17)
                                        call stor17.0xcbd14993 with:
                                             gas gas_remaining wei
                                            args mem[(4 * ceil32(return_data.size)) + 540 len (7 * ceil32(return_data.size)) + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(4 * ceil32(return_data.size)) + 536] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)
                                        emit Compound(mem[(4 * ceil32(return_data.size)) + 536 len (7 * ceil32(return_data.size)) + 32], msg.sender, arg1);
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 336] = 2
                                    mem[(2 * ceil32(return_data.size)) + 368] = tokenAddress
                                    require ext_code.size(address(stor16.field_8))
                                    staticcall address(stor16.field_8).WAVAX() with:
                                            gas gas_remaining wei
                                    mem[(2 * ceil32(return_data.size)) + 432] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + 432
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 400] = ext_call.return_data[12 len 20]
                                    mem[(4 * ceil32(return_data.size)) + 432] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 436] = ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100
                                    mem[(4 * ceil32(return_data.size)) + 468] = 0
                                    mem[(4 * ceil32(return_data.size)) + 500] = 160
                                    mem[(4 * ceil32(return_data.size)) + 596] = 2
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 628
                                    t = (2 * ceil32(return_data.size)) + 368
                                    while idx < mem[(2 * ceil32(return_data.size)) + 336]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 532] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 564] = block.timestamp
                                    require ext_code.size(address(stor16.field_8))
                                    call address(stor16.field_8).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 688]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call rewardsPoolAddress with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] < ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100:
                                        revert with 0, 17
                                    _23643 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_23643] = 4
                                    mem[_23643 + 32] = 0x6275726e00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 32] = 0x6275726e00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 36] = 0
                                    _31964 = mem[64]
                                    mem[mem[64]] = 4
                                    mem[64] = mem[64] + 36
                                    mem[0] = sha3(mem[_31964 + 32 len mem[_31964]])
                                    if stor23[mem[0]] <= 0:
                                        if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100) < 0:
                                            revert with 0, 17
                                        require ext_code.size(stor18)
                                        call stor18.0x23b872dd with:
                                             gas gas_remaining wei
                                            args rewardsPoolAddress, address(this.address), ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        require ext_code.size(stor17)
                                        call stor17.0xcbd14993 with:
                                             gas gas_remaining wei
                                            args msg.sender, arg1, ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit Compound((ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100)), msg.sender, arg1);
                                    else:
                                        if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100) and stor23[('name', 'stor6275', 1651864174)] > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100):
                                            revert with 0, 17
                                        require ext_code.size(stor18)
                                        call stor18.0x23b872dd with:
                                             gas gas_remaining wei
                                            args rewardsPoolAddress, deadWalletAddress, (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100) < (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100:
                                            revert with 0, 17
                                        require ext_code.size(stor18)
                                        call stor18.0x23b872dd with:
                                             gas gas_remaining wei
                                            args rewardsPoolAddress, address(this.address), ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        require ext_code.size(stor17)
                                        call stor17.0xcbd14993 with:
                                             gas gas_remaining wei
                                            args msg.sender, arg1, ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        emit Compound((ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)), msg.sender, arg1);
                        else:
                            if unknown_0x5f1c3182(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return swapTokensAmount
                            require unknown_0x65bfe430(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if not msg.sender:
                                revert with 0, 'CASHOUT:1'
                            if stor21[address(msg.sender)]:
                                revert with 0, 'BLACKLISTED'
                            if teamPoolAddress == msg.sender:
                                revert with 0, 'CASHOUT:3'
                            if rewardsPoolAddress == msg.sender:
                                revert with 0, 'CASHOUT:3'
                            mem[132] = msg.sender
                            mem[164] = arg1
                            require ext_code.size(stor17)
                            staticcall stor17.getNodeReward(address arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args msg.sender, arg1
                            mem[128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'CASHOUT:4'
                            mem[ceil32(return_data.size) + 128] = 7
                            mem[ceil32(return_data.size) + 160] = 0x636173686f757400000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 224] = 0x636173686f757400000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 192] = 7
                            if stor23[('name', 'stor6361', 27973170995623284)] <= 0:
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                if stor23[('name', 'stor6275', 1651864174)] <= 0:
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 17
                                    mem[ceil32(return_data.size) + 335] = rewardsPoolAddress
                                    mem[ceil32(return_data.size) + 367] = msg.sender
                                    mem[ceil32(return_data.size) + 399] = ext_call.return_data[0]
                                    require ext_code.size(stor18)
                                    call stor18.0x23b872dd with:
                                         gas gas_remaining wei
                                        args rewardsPoolAddress, msg.sender, ext_call.return_data[0]
                                    mem[ceil32(return_data.size) + 331] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(2 * ceil32(return_data.size)) + 335] = msg.sender
                                    mem[(2 * ceil32(return_data.size)) + 367] = arg1
                                    require ext_code.size(stor17)
                                    call stor17.cashoutNodeReward(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 335 len ceil32(return_data.size) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalClaimed > !ext_call.return_data[0]:
                                        revert with 0, 17
                                    totalClaimed += ext_call.return_data[0]
                                    mem[(2 * ceil32(return_data.size)) + 331] = ext_call.return_data[0]
                                    emit Cashout(mem[(2 * ceil32(return_data.size)) + 331 len ceil32(return_data.size) + 32], msg.sender, arg1);
                                else:
                                    if ext_call.return_data[0] and stor23[('name', 'stor6275', 1651864174)] > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    mem[ceil32(return_data.size) + 435] = deadWalletAddress
                                    mem[ceil32(return_data.size) + 467] = ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100
                                    require ext_code.size(stor18)
                                    call stor18.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args deadWalletAddress, ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100
                                    mem[ceil32(return_data.size) + 431] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if ext_call.return_data[0] < ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100:
                                        revert with 0, 17
                                    mem[(2 * ceil32(return_data.size)) + 435] = rewardsPoolAddress
                                    mem[(2 * ceil32(return_data.size)) + 467] = msg.sender
                                    mem[(2 * ceil32(return_data.size)) + 499] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100)
                                    require ext_code.size(stor18)
                                    call stor18.0x23b872dd with:
                                         gas gas_remaining wei
                                        args mem[(2 * ceil32(return_data.size)) + 435 len ceil32(return_data.size) + 96]
                                    mem[(2 * ceil32(return_data.size)) + 431] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(4 * ceil32(return_data.size)) + 435] = msg.sender
                                    mem[(4 * ceil32(return_data.size)) + 467] = arg1
                                    require ext_code.size(stor17)
                                    call stor17.cashoutNodeReward(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[(4 * ceil32(return_data.size)) + 435 len (5 * ceil32(return_data.size)) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if totalClaimed > !(ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100)):
                                        revert with 0, 17
                                    totalClaimed = totalClaimed + ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100)
                                    mem[(4 * ceil32(return_data.size)) + 431] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100)
                                    emit Cashout(mem[(4 * ceil32(return_data.size)) + 431 len (5 * ceil32(return_data.size)) + 32], msg.sender, arg1);
                            else:
                                mem[ceil32(return_data.size) + 231] = 7
                                mem[ceil32(return_data.size) + 263] = 0x636173686f757400000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 327] = 0x636173686f757400000000000000000000000000000000000000000000000000
                                mem[ceil32(return_data.size) + 295] = 7
                                mem[0] = sha3(27973170995623284)
                                mem[32] = 23
                                if ext_call.return_data[0] and stor23[('name', 'stor6361', 27973170995623284)] > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                mem[ceil32(return_data.size) + 338] = address(stor16.field_8)
                                mem[ceil32(return_data.size) + 370] = ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100
                                require ext_code.size(stor18)
                                call stor18.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(stor16.field_0), ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100
                                mem[ceil32(return_data.size) + 334] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    mem[(2 * ceil32(return_data.size)) + 334] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[(2 * ceil32(return_data.size)) + 338] = 32
                                    mem[(2 * ceil32(return_data.size)) + 370] = 14
                                    mem[(2 * ceil32(return_data.size)) + 402] = 0x417070726f7665206661696c6564000000000000000000000000000000000000
                                    revert with memory
                                      from (2 * ceil32(return_data.size)) + 334
                                       len ceil32(return_data.size) + 100
                                if not ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100:
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call rewardsPoolAddress with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] < ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100:
                                        revert with 0, 17
                                    if stor23[('name', 'stor6275', 1651864174)] <= 0:
                                        if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) < 0:
                                            revert with 0, 17
                                        mem[(2 * ceil32(return_data.size)) + 438] = rewardsPoolAddress
                                        mem[(2 * ceil32(return_data.size)) + 470] = msg.sender
                                        mem[(2 * ceil32(return_data.size)) + 502] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)
                                        require ext_code.size(stor18)
                                        call stor18.0x23b872dd with:
                                             gas gas_remaining wei
                                            args rewardsPoolAddress, msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)
                                        mem[(2 * ceil32(return_data.size)) + 434] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[(4 * ceil32(return_data.size)) + 438] = msg.sender
                                        mem[(4 * ceil32(return_data.size)) + 470] = arg1
                                        require ext_code.size(stor17)
                                        call stor17.cashoutNodeReward(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[(4 * ceil32(return_data.size)) + 438 len (5 * ceil32(return_data.size)) + 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if totalClaimed > !(ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)):
                                            revert with 0, 17
                                        totalClaimed = totalClaimed + ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)
                                        mem[(4 * ceil32(return_data.size)) + 434] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)
                                        emit Cashout(mem[(4 * ceil32(return_data.size)) + 434 len (5 * ceil32(return_data.size)) + 32], msg.sender, arg1);
                                    else:
                                        if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) and stor23[('name', 'stor6275', 1651864174)] > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100):
                                            revert with 0, 17
                                        mem[(2 * ceil32(return_data.size)) + 538] = deadWalletAddress
                                        mem[(2 * ceil32(return_data.size)) + 570] = (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100
                                        require ext_code.size(stor18)
                                        call stor18.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args deadWalletAddress, (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100
                                        mem[(2 * ceil32(return_data.size)) + 534] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) < (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100:
                                            revert with 0, 17
                                        mem[(4 * ceil32(return_data.size)) + 538] = rewardsPoolAddress
                                        mem[(4 * ceil32(return_data.size)) + 570] = msg.sender
                                        mem[(4 * ceil32(return_data.size)) + 602] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)
                                        require ext_code.size(stor18)
                                        call stor18.0x23b872dd with:
                                             gas gas_remaining wei
                                            args mem[(4 * ceil32(return_data.size)) + 538 len (5 * ceil32(return_data.size)) + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[(4 * ceil32(return_data.size)) + 538] = msg.sender
                                        mem[(4 * ceil32(return_data.size)) + 570] = arg1
                                        require ext_code.size(stor17)
                                        call stor17.cashoutNodeReward(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[(4 * ceil32(return_data.size)) + 538 len (7 * ceil32(return_data.size)) + 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if totalClaimed > !(ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)):
                                            revert with 0, 17
                                        totalClaimed = totalClaimed + ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)
                                        mem[(4 * ceil32(return_data.size)) + 534] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)
                                        emit Cashout(mem[(4 * ceil32(return_data.size)) + 534 len (7 * ceil32(return_data.size)) + 32], msg.sender, arg1);
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 334] = 2
                                    mem[(2 * ceil32(return_data.size)) + 366] = tokenAddress
                                    require ext_code.size(address(stor16.field_8))
                                    staticcall address(stor16.field_8).WAVAX() with:
                                            gas gas_remaining wei
                                    mem[(2 * ceil32(return_data.size)) + 430] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + 430
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 398] = ext_call.return_data[12 len 20]
                                    mem[(4 * ceil32(return_data.size)) + 430] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 434] = ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100
                                    mem[(4 * ceil32(return_data.size)) + 466] = 0
                                    mem[(4 * ceil32(return_data.size)) + 498] = 160
                                    mem[(4 * ceil32(return_data.size)) + 594] = 2
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 626
                                    t = (2 * ceil32(return_data.size)) + 366
                                    while idx < mem[(2 * ceil32(return_data.size)) + 334]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 530] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 562] = block.timestamp
                                    require ext_code.size(address(stor16.field_8))
                                    call address(stor16.field_8).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 686]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call rewardsPoolAddress with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] < ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100:
                                        revert with 0, 17
                                    _23687 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_23687] = 4
                                    mem[_23687 + 32] = 0x6275726e00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 32] = 0x6275726e00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 36] = 0
                                    _32012 = mem[64]
                                    mem[mem[64]] = 4
                                    mem[64] = mem[64] + 36
                                    mem[0] = sha3(mem[_32012 + 32 len mem[_32012]])
                                    if stor23[mem[0]] <= 0:
                                        if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) < 0:
                                            revert with 0, 17
                                        require ext_code.size(stor18)
                                        call stor18.0x23b872dd with:
                                             gas gas_remaining wei
                                            args rewardsPoolAddress, msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        require ext_code.size(stor17)
                                        call stor17.cashoutNodeReward(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if totalClaimed > !(ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)):
                                            revert with 0, 17
                                        totalClaimed = totalClaimed + ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)
                                        emit Cashout((ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100)), msg.sender, arg1);
                                    else:
                                        if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) and stor23[('name', 'stor6275', 1651864174)] > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100):
                                            revert with 0, 17
                                        require ext_code.size(stor18)
                                        call stor18.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args deadWalletAddress, (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) < (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100:
                                            revert with 0, 17
                                        require ext_code.size(stor18)
                                        call stor18.0x23b872dd with:
                                             gas gas_remaining wei
                                            args rewardsPoolAddress, msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        require ext_code.size(stor17)
                                        call stor17.cashoutNodeReward(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, arg1
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if totalClaimed > !(ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)):
                                            revert with 0, 17
                                        totalClaimed = totalClaimed + ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)
                                        emit Cashout((ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)), msg.sender, arg1);
        else:
            if unknown_0xbbc67998(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x9852595c(?????) > uint32(call.func_hash) >> 224:
                    if uint32(call.func_hash) >> 224 != unknown_0x7871db37(?????):
                        if unknown_0x85141a77(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return deadWalletAddress
                        if unknown_0x8b83209b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if arg1 >= payee.length:
                                revert with 0, 50
                            return payee[arg1]
                        if uint32(call.func_hash) >> 224 != unknown_0x8bc9c7b0(?????):
                            require unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return owner
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        stor19 = arg1
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        if stor21[msg.sender]:
                            revert with 0, 'BLACKLISTED'
                        if stor23[('name', 'stor6D65', 469853431653)]:
                            require ext_code.size(stor18)
                            staticcall stor18.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < stor23[('name', 'stor6D65', 469853431653)]:
                                revert with 0, 'E:1'
                            require ext_code.size(stor18)
                            call stor18.0xa9059cbb with:
                                 gas gas_remaining wei
                                args deadWalletAddress, stor23[('name', 'stor6D65', 469853431653)]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(stor17)
                        call stor17.0x82af6714 with:
                             gas gas_remaining wei
                            args msg.sender, arg1, arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if unknown_0x9852595c(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return released[address(arg1)]
                    if unknown_0x9a7a23d6(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 == bool(arg2)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if joePairAddress == address(arg1):
                            revert with 0, 'TKN:2'
                        if bool(arg2) == bool(stor22[address(arg1)]):
                            revert with 0, 'TKN:3'
                        stor22[address(arg1)] = uint8(bool(arg2))
                        emit SetAutomatedMarketMakerPair(address(arg1), bool(arg2));
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0x9b05ddb3(?????):
                            if unknown_0x9d76ea58(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return tokenAddress
                            require unknown_0xb62496f5(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            return bool(stor22[arg1])
                        require not msg.value
                        if not msg.sender:
                            revert with 0, 'COMP:1'
                        if stor21[address(msg.sender)]:
                            revert with 0, 'BLACKLISTED'
                        if teamPoolAddress == msg.sender:
                            revert with 0, 'COMP:2'
                        if rewardsPoolAddress == msg.sender:
                            revert with 0, 'COMP:2'
                        mem[132] = msg.sender
                        require ext_code.size(stor17)
                        staticcall stor17.getAllNodesRewards(address arg1) with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'COMP:3'
                        mem[ceil32(return_data.size) + 128] = 8
                        mem[ceil32(return_data.size) + 160] = 0x636f6d706f756e64000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 224] = 0x636f6d706f756e64000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 192] = 8
                        if stor23[('name', 'stor636F', 7165065861843480164)] <= 0:
                            if ext_call.return_data[0] < 0:
                                revert with 0, 17
                            if stor23[('name', 'stor6275', 1651864174)] <= 0:
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                mem[ceil32(return_data.size) + 336] = rewardsPoolAddress
                                mem[ceil32(return_data.size) + 368] = this.address
                                mem[ceil32(return_data.size) + 400] = ext_call.return_data[0]
                                require ext_code.size(stor18)
                                call stor18.0x23b872dd with:
                                     gas gas_remaining wei
                                    args rewardsPoolAddress, address(this.address), ext_call.return_data[0]
                                mem[ceil32(return_data.size) + 332] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(2 * ceil32(return_data.size)) + 336] = msg.sender
                                require ext_code.size(stor17)
                                call stor17.0x63569a8 with:
                                     gas gas_remaining wei
                                    args mem[(2 * ceil32(return_data.size)) + 336 len ceil32(return_data.size) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(2 * ceil32(return_data.size)) + 332] = ext_call.return_data[0]
                                emit Compound(mem[(2 * ceil32(return_data.size)) + 332 len ceil32(return_data.size) + 32], msg.sender, 0);
                            else:
                                if ext_call.return_data[0] and stor23[('name', 'stor6275', 1651864174)] > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                mem[ceil32(return_data.size) + 436] = rewardsPoolAddress
                                mem[ceil32(return_data.size) + 468] = deadWalletAddress
                                mem[ceil32(return_data.size) + 500] = ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100
                                require ext_code.size(stor18)
                                call stor18.0x23b872dd with:
                                     gas gas_remaining wei
                                    args rewardsPoolAddress, deadWalletAddress, ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100
                                mem[ceil32(return_data.size) + 432] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if ext_call.return_data[0] < ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100:
                                    revert with 0, 17
                                mem[(2 * ceil32(return_data.size)) + 436] = rewardsPoolAddress
                                mem[(2 * ceil32(return_data.size)) + 468] = this.address
                                mem[(2 * ceil32(return_data.size)) + 500] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100)
                                require ext_code.size(stor18)
                                call stor18.0x23b872dd with:
                                     gas gas_remaining wei
                                    args mem[(2 * ceil32(return_data.size)) + 436 len ceil32(return_data.size) + 96]
                                mem[(2 * ceil32(return_data.size)) + 432] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[(4 * ceil32(return_data.size)) + 436] = msg.sender
                                require ext_code.size(stor17)
                                call stor17.0x63569a8 with:
                                     gas gas_remaining wei
                                    args mem[(4 * ceil32(return_data.size)) + 436 len (5 * ceil32(return_data.size)) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 432] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100)
                                emit Compound(mem[(4 * ceil32(return_data.size)) + 432 len (5 * ceil32(return_data.size)) + 32], msg.sender, 0);
                        else:
                            mem[ceil32(return_data.size) + 232] = 8
                            mem[ceil32(return_data.size) + 264] = 0x636f6d706f756e64000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 328] = 0x636f6d706f756e64000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 296] = 8
                            mem[0] = sha3(7165065861843480164)
                            mem[32] = 23
                            if ext_call.return_data[0] and stor23[('name', 'stor636F', 7165065861843480164)] > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            mem[ceil32(return_data.size) + 340] = address(stor16.field_8)
                            mem[ceil32(return_data.size) + 372] = ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100
                            require ext_code.size(stor18)
                            call stor18.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor16.field_0), ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100
                            mem[ceil32(return_data.size) + 336] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                mem[(2 * ceil32(return_data.size)) + 336] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 340] = 32
                                mem[(2 * ceil32(return_data.size)) + 372] = 14
                                mem[(2 * ceil32(return_data.size)) + 404] = 0x417070726f7665206661696c6564000000000000000000000000000000000000
                                revert with memory
                                  from (2 * ceil32(return_data.size)) + 336
                                   len ceil32(return_data.size) + 100
                            if not ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100:
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call rewardsPoolAddress with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] < ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100:
                                    revert with 0, 17
                                if stor23[('name', 'stor6275', 1651864174)] <= 0:
                                    if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100) < 0:
                                        revert with 0, 17
                                    mem[(2 * ceil32(return_data.size)) + 440] = rewardsPoolAddress
                                    mem[(2 * ceil32(return_data.size)) + 472] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 504] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100)
                                    require ext_code.size(stor18)
                                    call stor18.0x23b872dd with:
                                         gas gas_remaining wei
                                        args rewardsPoolAddress, address(this.address), ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100)
                                    mem[(2 * ceil32(return_data.size)) + 436] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(4 * ceil32(return_data.size)) + 440] = msg.sender
                                    require ext_code.size(stor17)
                                    call stor17.0x63569a8 with:
                                         gas gas_remaining wei
                                        args mem[(4 * ceil32(return_data.size)) + 440 len (5 * ceil32(return_data.size)) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + 436] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100)
                                    emit Compound(mem[(4 * ceil32(return_data.size)) + 436 len (5 * ceil32(return_data.size)) + 32], msg.sender, 0);
                                else:
                                    if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100) and stor23[('name', 'stor6275', 1651864174)] > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100):
                                        revert with 0, 17
                                    mem[(2 * ceil32(return_data.size)) + 540] = rewardsPoolAddress
                                    mem[(2 * ceil32(return_data.size)) + 572] = deadWalletAddress
                                    mem[(2 * ceil32(return_data.size)) + 604] = (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100
                                    require ext_code.size(stor18)
                                    call stor18.0x23b872dd with:
                                         gas gas_remaining wei
                                        args rewardsPoolAddress, deadWalletAddress, (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100
                                    mem[(2 * ceil32(return_data.size)) + 536] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100) < (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100:
                                        revert with 0, 17
                                    mem[(4 * ceil32(return_data.size)) + 540] = rewardsPoolAddress
                                    mem[(4 * ceil32(return_data.size)) + 572] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 604] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)
                                    require ext_code.size(stor18)
                                    call stor18.0x23b872dd with:
                                         gas gas_remaining wei
                                        args mem[(4 * ceil32(return_data.size)) + 540 len (5 * ceil32(return_data.size)) + 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(4 * ceil32(return_data.size)) + 540] = msg.sender
                                    require ext_code.size(stor17)
                                    call stor17.0x63569a8 with:
                                         gas gas_remaining wei
                                        args mem[(4 * ceil32(return_data.size)) + 540 len (7 * ceil32(return_data.size)) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + 536] = ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)
                                    emit Compound(mem[(4 * ceil32(return_data.size)) + 536 len (7 * ceil32(return_data.size)) + 32], msg.sender, 0);
                            else:
                                mem[(2 * ceil32(return_data.size)) + 336] = 2
                                mem[(2 * ceil32(return_data.size)) + 368] = tokenAddress
                                require ext_code.size(address(stor16.field_8))
                                staticcall address(stor16.field_8).WAVAX() with:
                                        gas gas_remaining wei
                                mem[(2 * ceil32(return_data.size)) + 432] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = (4 * ceil32(return_data.size)) + 432
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[(2 * ceil32(return_data.size)) + 400] = ext_call.return_data[12 len 20]
                                mem[(4 * ceil32(return_data.size)) + 432] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 436] = ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100
                                mem[(4 * ceil32(return_data.size)) + 468] = 0
                                mem[(4 * ceil32(return_data.size)) + 500] = 160
                                mem[(4 * ceil32(return_data.size)) + 596] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 628
                                t = (2 * ceil32(return_data.size)) + 368
                                while idx < mem[(2 * ceil32(return_data.size)) + 336]:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 532] = this.address
                                mem[(4 * ceil32(return_data.size)) + 564] = block.timestamp
                                require ext_code.size(address(stor16.field_8))
                                call address(stor16.field_8).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 688]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) < eth.balance(this.address):
                                    revert with 0, 17
                                call rewardsPoolAddress with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ext_call.return_data[0] < ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100:
                                    revert with 0, 17
                                _23731 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_23731] = 4
                                mem[_23731 + 32] = 0x6275726e00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 32] = 0x6275726e00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 36] = 0
                                _32060 = mem[64]
                                mem[mem[64]] = 4
                                mem[64] = mem[64] + 36
                                mem[0] = sha3(mem[_32060 + 32 len mem[_32060]])
                                if stor23[mem[0]] <= 0:
                                    if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100) < 0:
                                        revert with 0, 17
                                    require ext_code.size(stor18)
                                    call stor18.0x23b872dd with:
                                         gas gas_remaining wei
                                        args rewardsPoolAddress, address(this.address), ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    require ext_code.size(stor17)
                                    call stor17.0x63569a8 with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Compound((ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100)), msg.sender, 0);
                                else:
                                    if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100) and stor23[('name', 'stor6275', 1651864174)] > -1 / ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100):
                                        revert with 0, 17
                                    require ext_code.size(stor18)
                                    call stor18.0x23b872dd with:
                                         gas gas_remaining wei
                                        args rewardsPoolAddress, deadWalletAddress, (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100) < (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100:
                                        revert with 0, 17
                                    require ext_code.size(stor18)
                                    call stor18.0x23b872dd with:
                                         gas gas_remaining wei
                                        args rewardsPoolAddress, address(this.address), ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    require ext_code.size(stor17)
                                    call stor17.0x63569a8 with:
                                         gas gas_remaining wei
                                        args msg.sender
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit Compound((ext_call.return_data[0] - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100) - ((ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100)), msg.sender, 0);
            else:
                if unknown_0xe33b7de3(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xe33b7de3(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return totalReleased
                    if uint32(call.func_hash) >> 224 != unknown_0xed1eee68(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                            if unknown_0xf4e27dc8(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require arg1 == bool(arg1)
                                if owner != msg.sender:
                                    revert with 0, 'Ownable: caller is not the owner'
                                uint8(stor16.field_0) = uint8(bool(arg1))
                            if unknown_0xfabc4035(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return bool(uint8(stor16.field_0))
                            require unknown_0xfe575a87(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            return bool(stor21[arg1])
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(arg1):
                            revert with 0, 'Ownable: new owner is the zero address'
                        owner = address(arg1)
                        emit OwnershipTransferred(owner, address(arg1));
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 <= test266151307()
                    require arg1 + 35 < calldata.size
                    if arg1.length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(arg1.length)) + 129 < 128 or ceil32(ceil32(arg1.length)) + 129 > test266151307():
                        revert with 0, 65
                    require arg1 + arg1.length + 36 <= calldata.size
                    mem[160 len arg1.length] = arg1[all]
                    mem[arg1.length + 160] = 0
                    return stor23[Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 160 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256]
                if uint32(call.func_hash) >> 224 != unknown_0xbbc67998(?????):
                    if unknown_0xce7c2ac2(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return shares[address(arg1)]
                    if unknown_0xd54ad2a1(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return totalClaimed
                    if unknown_0xd79779b2(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return totalReleased[address(arg1)]
                    require unknown_0xe159b3ae(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if address(stor16.field_8) == address(arg1):
                        revert with 0, 'TKN:1'
                    emit 0xb172ff8d: address(arg1), address(stor16.field_8)
                    require ext_code.size(address(stor16.field_8))
                    staticcall address(stor16.field_8).factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).WAVAX() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
                         gas gas_remaining wei
                        args tokenAddress, address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    joePairAddress = ext_call.return_data[12 len 20]
                    sub_527509f3Address = address(arg1)
                else:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 <= test266151307()
                    require arg1 + 35 < calldata.size
                    if arg1.length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(arg1.length)) + 129 < 128 or ceil32(ceil32(arg1.length)) + 129 > test266151307():
                        revert with 0, 65
                    mem[128] = arg1.length
                    require arg1 + arg1.length + 36 <= calldata.size
                    mem[160 len arg1.length] = arg1[all]
                    mem[arg1.length + 160] = 0
                    require ext_code.size(stor17)
                    staticcall stor17.getMinPrice() with:
                            gas gas_remaining wei
                    mem[ceil32(ceil32(arg1.length)) + 129] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg1.length <= 3:
                        revert with 0, 'NC:1'
                    if arg1.length >= 32:
                        revert with 0, 'NC:1'
                    if not msg.sender:
                        revert with 0, 'NC:2'
                    if stor21[address(msg.sender)]:
                        revert with 0, 'BLACKLISTED'
                    if teamPoolAddress == msg.sender:
                        revert with 0, 'NC:4'
                    if rewardsPoolAddress == msg.sender:
                        revert with 0, 'NC:4'
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 133] = msg.sender
                    require ext_code.size(stor18)
                    staticcall stor18.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[ceil32(ceil32(arg1.length)) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < arg2:
                        revert with 0, 'NC:5'
                    if arg2 < ext_call.return_data[0]:
                        revert with 0, 'NC:6'
                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 133] = this.address
                    require ext_code.size(stor18)
                    staticcall stor18.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[ceil32(ceil32(arg1.length)) + (2 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < swapTokensAmount:
                        require ext_code.size(stor18)
                        call stor18.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(stor17)
                        call stor17.0x90219732 with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=arg1.length, data=arg1[all]), arg2
                    else:
                        if not uint8(stor16.field_0):
                            require ext_code.size(stor18)
                            call stor18.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), arg2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(stor17)
                            call stor17.0x90219732 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=arg1.length, data=arg1[all]), arg2
                        else:
                            if stor20:
                                require ext_code.size(stor18)
                                call stor18.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                require ext_code.size(stor17)
                                call stor17.0x90219732 with:
                                     gas gas_remaining wei
                                    args msg.sender, Array(len=arg1.length, data=arg1[all]), arg2
                            else:
                                if owner == msg.sender:
                                    require ext_code.size(stor18)
                                    call stor18.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), arg2
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    require ext_code.size(stor17)
                                    call stor17.0x90219732 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=arg1.length, data=arg1[all]), arg2
                                else:
                                    if stor22[address(msg.sender)]:
                                        require ext_code.size(stor18)
                                        call stor18.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), arg2
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        require ext_code.size(stor17)
                                        call stor17.0x90219732 with:
                                             gas gas_remaining wei
                                            args msg.sender, Array(len=arg1.length, data=arg1[all]), arg2
                                    else:
                                        stor20 = 1
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 129] = 8
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 161] = 0x7465616d506f6f6c000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 225] = 0x7465616d506f6f6c000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 193] = 8
                                        mem[0] = sha3(8387217003176226668)
                                        mem[32] = 23
                                        if ext_call.return_data[0] and stor23[('name', 'stor7465', 8387217003176226668)] > -1 / ext_call.return_data[0]:
                                            revert with 0, 17
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 237] = address(stor16.field_8)
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 269] = ext_call.return_data[0] * stor23[('name', 'stor7465', 8387217003176226668)] / 100
                                        require ext_code.size(stor18)
                                        call stor18.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(stor16.field_0), ext_call.return_data[0] * stor23[('name', 'stor7465', 8387217003176226668)] / 100
                                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 233] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, 
                                                        'Approve failed',
                                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 333 len 9 * ceil32(return_data.size)]
                                        if not ext_call.return_data[0] * stor23[('name', 'stor7465', 8387217003176226668)] / 100:
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            call teamPoolAddress with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 233] = 7
                                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 265] = 'rewards' << 200
                                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 329] = 'rewards' << 200
                                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 297] = 7
                                            if ext_call.return_data[0] and stor23['rewards'] > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 336] = 6
                                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 368] = 0x7277537761700000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 432] = 0x7277537761700000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 400] = 6
                                            if ext_call.return_data[0] * stor23['rewards'] / 100 and stor23[('name', 'stor7277', 125856827007344)] > -1 / ext_call.return_data[0] * stor23['rewards'] / 100:
                                                revert with 0, 17
                                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 442] = address(stor16.field_8)
                                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 474] = ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100
                                            require ext_code.size(stor18)
                                            call stor18.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(stor16.field_0), ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100
                                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 438] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Approve failed'
                                            if not ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100:
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                call rewardsPoolAddress with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if ext_call.return_data[0] * stor23['rewards'] / 100 < ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100:
                                                    revert with 0, 17
                                                mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 442] = rewardsPoolAddress
                                                mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 474] = (ext_call.return_data[0] * stor23['rewards'] / 100) - (ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100)
                                                require ext_code.size(stor18)
                                                call stor18.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args rewardsPoolAddress, (ext_call.return_data[0] * stor23['rewards'] / 100) - (ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100)
                                                mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 438] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (9 * ceil32(return_data.size)) + 438] = 13
                                                mem[ceil32(ceil32(arg1.length)) + (9 * ceil32(return_data.size)) + 470] = 0x6c6971756964697479506f6f6c00000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (9 * ceil32(return_data.size)) + 534] = 0x6c6971756964697479506f6f6c00000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (9 * ceil32(return_data.size)) + 502] = 13
                                                mem[0] = sha3(0x6c6971756964697479506f6f6c)
                                                mem[32] = 23
                                                if ext_call.return_data[0] and stor23[('name', 'stor6C69', 8589274640650428211244320124780)] > -1 / ext_call.return_data[0]:
                                                    revert with 0, 17
                                                if ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 < ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2:
                                                    revert with 0, 17
                                                mem[ceil32(ceil32(arg1.length)) + (9 * ceil32(return_data.size)) + 551] = address(stor16.field_8)
                                                mem[ceil32(ceil32(arg1.length)) + (9 * ceil32(return_data.size)) + 583] = ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2
                                                require ext_code.size(stor18)
                                                call stor18.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(stor16.field_0), ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2
                                                mem[ceil32(ceil32(arg1.length)) + (9 * ceil32(return_data.size)) + 547] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'Approve failed'
                                                if not Mask(255, 1, ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100):
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    require ext_code.size(stor18)
                                                    call stor18.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(stor16.field_0), (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, 
                                                                    'Approve failed',
                                                                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 647 len 5 * ceil32(return_data.size)]
                                                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 615] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 647] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 679] = rewardsPoolAddress
                                                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 711] = block.timestamp
                                                    require ext_code.size(address(stor16.field_8))
                                                    call address(stor16.field_8).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                         gas gas_remaining wei
                                                        args tokenAddress, (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2), 0, 0, rewardsPoolAddress, block.timestamp, mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 743 len 5 * ceil32(return_data.size)]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                        Mask(255, 1, ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100),
                                                                        0,
                                                                        (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2),
                                                                        mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 643 len 9 * ceil32(return_data.size)],
                                                    stor20 = 0
                                                    require ext_code.size(stor18)
                                                    call stor18.0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(this.address), arg2, mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 647 len 9 * ceil32(return_data.size)]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(stor17)
                                                    call stor17.0x90219732 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, Array(len=arg1.length, data=arg1[all]), arg2
                                                else:
                                                    mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 547] = 2
                                                    mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 579] = tokenAddress
                                                    require ext_code.size(address(stor16.field_8))
                                                    staticcall address(stor16.field_8).WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 643] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 643
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 611] = ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 643] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 647] = ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2
                                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 679] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 711] = 160
                                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 807] = 2
                                                    idx = 0
                                                    s = ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 839
                                                    t = ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 579
                                                    while idx < mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 547]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 743] = this.address
                                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 775] = block.timestamp
                                                    require ext_code.size(address(stor16.field_8))
                                                    call address(stor16.field_8).mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + -mem[64] + 899]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    mem[mem[64]] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = address(stor16.field_8)
                                                    mem[mem[64] + 36] = (ext_call.return_data[0] * stor23[mem[0]] / 100) - (ext_call.return_data[0] * stor23[mem[0]] / 100 / 2)
                                                    require ext_code.size(stor18)
                                                    call stor18.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(stor16.field_0), (ext_call.return_data[0] * stor23[mem[0]] / 100) - (ext_call.return_data[0] * stor23[mem[0]] / 100 / 2)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _39479 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_39479] == bool(mem[_39479])
                                                    if not mem[_39479]:
                                                        revert with 0, 'Approve failed'
                                                    mem[mem[64]] = 0xf91b3f7200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 68] = 0
                                                    mem[mem[64] + 100] = 0
                                                    mem[mem[64] + 132] = rewardsPoolAddress
                                                    mem[mem[64] + 164] = block.timestamp
                                                    require ext_code.size(address(stor16.field_8))
                                                    call address(stor16.field_8).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                         gas gas_remaining wei
                                                        args tokenAddress, (ext_call.return_data[0] * stor23[mem[0]] / 100) - (ext_call.return_data[0] * stor23[mem[0]] / 100 / 2), 0, 0, rewardsPoolAddress, block.timestamp
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 96
                                                    mem[mem[64]] = ext_call.return_data[0] * stor23[mem[0]] / 100 / 2
                                                    emit SwapAndLiquify(ext_call.return_data[0] * stor23[mem[0]] / 100 / 2, 0, (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2));
                                                    stor20 = 0
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = this.address
                                                    mem[mem[64] + 68] = arg2
                                                    require ext_code.size(stor18)
                                                    call stor18.0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(this.address), arg2
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _40306 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_40306] == bool(mem[_40306])
                                                    mem[mem[64]] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = 96
                                                    mem[mem[64] + 100] = mem[128]
                                                    mem[mem[64] + 132 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                    if ceil32(mem[128]) > mem[128]:
                                                        mem[mem[64] + mem[128] + 132] = 0
                                                    require ext_code.size(stor17)
                                                    call stor17.0x90219732 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, Array(len=mem[128], data=mem[mem[64] + 132 len ceil32(mem[128])]), arg2
                                            else:
                                                mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 438] = 2
                                                mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 470] = tokenAddress
                                                require ext_code.size(address(stor16.field_8))
                                                staticcall address(stor16.field_8).WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 534] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 502] = ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 534] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 538] = ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100
                                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 602] = 160
                                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 698] = 2
                                                idx = 0
                                                s = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 730
                                                t = ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 470
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 634] = this.address
                                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 666] = block.timestamp
                                                require ext_code.size(address(stor16.field_8))
                                                call address(stor16.field_8).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 730 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                call rewardsPoolAddress with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if ext_call.return_data[0] * stor23['rewards'] / 100 < ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100:
                                                    revert with 0, 17
                                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 538] = rewardsPoolAddress
                                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 570] = (ext_call.return_data[0] * stor23['rewards'] / 100) - (ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100)
                                                require ext_code.size(stor18)
                                                call stor18.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args rewardsPoolAddress, (ext_call.return_data[0] * stor23['rewards'] / 100) - (ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100)
                                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 534] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 534] = 13
                                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 566] = 0x6c6971756964697479506f6f6c00000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 630] = 0x6c6971756964697479506f6f6c00000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 598] = 13
                                                mem[0] = sha3(0x6c6971756964697479506f6f6c)
                                                mem[32] = 23
                                                if ext_call.return_data[0] and stor23[('name', 'stor6C69', 8589274640650428211244320124780)] > -1 / ext_call.return_data[0]:
                                                    revert with 0, 17
                                                if ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 < ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2:
                                                    revert with 0, 17
                                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 647] = address(stor16.field_8)
                                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 679] = ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2
                                                require ext_code.size(stor18)
                                                call stor18.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(stor16.field_0), ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2
                                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 643] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'Approve failed'
                                                if not Mask(255, 1, ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100):
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    require ext_code.size(stor18)
                                                    call stor18.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(stor16.field_0), (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, 'Approve failed'
                                                    require ext_code.size(address(stor16.field_8))
                                                    call address(stor16.field_8).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                         gas gas_remaining wei
                                                        args tokenAddress, (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2), 0, 0, rewardsPoolAddress, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100), 0, (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2));
                                                    stor20 = 0
                                                    require ext_code.size(stor18)
                                                    call stor18.0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(this.address), arg2
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(stor17)
                                                    call stor17.0x90219732 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, Array(len=arg1.length, data=arg1[all]), arg2
                                                else:
                                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 643] = 2
                                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 675] = tokenAddress
                                                    require ext_code.size(address(stor16.field_8))
                                                    staticcall address(stor16.field_8).WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 739] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 739
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 707] = ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 739] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 743] = ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2
                                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 775] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 807] = 160
                                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 903] = 2
                                                    idx = 0
                                                    s = ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 935
                                                    t = ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 675
                                                    while idx < mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 643]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 839] = this.address
                                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 871] = block.timestamp
                                                    require ext_code.size(address(stor16.field_8))
                                                    call address(stor16.field_8).mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + -mem[64] + 995]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    mem[mem[64] + 4] = address(stor16.field_8)
                                                    mem[mem[64] + 36] = (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2)
                                                    require ext_code.size(stor18)
                                                    call stor18.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(stor16.field_0), (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _44055 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_44055] == bool(mem[_44055])
                                                    if not mem[_44055]:
                                                        revert with 0, 'Approve failed'
                                                    mem[mem[64] + 100] = 0
                                                    mem[mem[64] + 132] = rewardsPoolAddress
                                                    mem[mem[64] + 164] = block.timestamp
                                                    require ext_code.size(address(stor16.field_8))
                                                    call address(stor16.field_8).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                         gas gas_remaining wei
                                                        args tokenAddress, (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2), 0, 0, rewardsPoolAddress, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 96
                                                    emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100), 0, (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2));
                                                    stor20 = 0
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = this.address
                                                    mem[mem[64] + 68] = arg2
                                                    require ext_code.size(stor18)
                                                    call stor18.0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(this.address), arg2
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _44563 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_44563] == bool(mem[_44563])
                                                    mem[mem[64]] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = 96
                                                    mem[mem[64] + 100] = mem[128]
                                                    mem[mem[64] + 132 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                    if ceil32(mem[128]) > mem[128]:
                                                        mem[mem[64] + mem[128] + 132] = 0
                                                    require ext_code.size(stor17)
                                                    call stor17.0x90219732 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, Array(len=mem[128], data=mem[mem[64] + 132 len ceil32(mem[128])]), arg2
                                        else:
                                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 233] = 2
                                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 265] = tokenAddress
                                            require ext_code.size(address(stor16.field_8))
                                            staticcall address(stor16.field_8).WAVAX() with:
                                                    gas gas_remaining wei
                                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 329] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[64] = ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 329
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 297] = ext_call.return_data[12 len 20]
                                            mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 329] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 333] = ext_call.return_data[0] * stor23[('name', 'stor7465', 8387217003176226668)] / 100
                                            mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 365] = 0
                                            mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 397] = 160
                                            mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 493] = 2
                                            idx = 0
                                            s = ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 525
                                            t = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 265
                                            while idx < mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 233]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 429] = this.address
                                            mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 461] = block.timestamp
                                            require ext_code.size(address(stor16.field_8))
                                            call address(stor16.field_8).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + -mem[64] + 585]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            call teamPoolAddress with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _13871 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_13871] = 7
                                            mem[_13871 + 32] = 'rewards' << 200
                                            _13881 = mem[64]
                                            mem[mem[64] + 32] = 'rewards' << 200
                                            mem[mem[64] + 39] = 0
                                            _23248 = mem[64]
                                            mem[mem[64]] = 7
                                            mem[64] = mem[64] + 39
                                            mem[0] = sha3(mem[_23248 + 32 len mem[_23248]])
                                            mem[32] = 23
                                            _23251 = sha3(mem[0], 23)
                                            if ext_call.return_data[0] and stor23[mem[0]] > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            mem[64] = _13881 + 103
                                            mem[_13881 + 39] = 6
                                            mem[_13881 + 71] = 0x7277537761700000000000000000000000000000000000000000000000000000
                                            mem[_13881 + 135] = 0x7277537761700000000000000000000000000000000000000000000000000000
                                            mem[_13881 + 103] = 6
                                            mem[0] = sha3(125856827007344)
                                            mem[32] = 23
                                            if ext_call.return_data[0] * stor[_23251] / 100 and stor23[('name', 'stor7277', 125856827007344)] > -1 / ext_call.return_data[0] * stor[_23251] / 100:
                                                revert with 0, 17
                                            mem[_13881 + 145] = address(stor16.field_8)
                                            mem[_13881 + 177] = ext_call.return_data[0] * stor[_23251] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100
                                            require ext_code.size(stor18)
                                            call stor18.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args address(stor16.field_0), ext_call.return_data[0] * stor[_23251] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100
                                            mem[_13881 + 141] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'Approve failed'
                                            if not ext_call.return_data[0] * stor[_23251] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100:
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                call rewardsPoolAddress with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if ext_call.return_data[0] * stor[_23251] / 100 < ext_call.return_data[0] * stor[_23251] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100:
                                                    revert with 0, 17
                                                mem[_13881 + ceil32(return_data.size) + 145] = rewardsPoolAddress
                                                mem[_13881 + ceil32(return_data.size) + 177] = (ext_call.return_data[0] * stor[_23251] / 100) - (ext_call.return_data[0] * stor[_23251] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100)
                                                require ext_code.size(stor18)
                                                call stor18.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args rewardsPoolAddress, (ext_call.return_data[0] * stor[_23251] / 100) - (ext_call.return_data[0] * stor[_23251] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100)
                                                mem[_13881 + ceil32(return_data.size) + 141] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[_13881 + (2 * ceil32(return_data.size)) + 141] = 13
                                                mem[_13881 + (2 * ceil32(return_data.size)) + 173] = 0x6c6971756964697479506f6f6c00000000000000000000000000000000000000
                                                mem[_13881 + (2 * ceil32(return_data.size)) + 237] = 0x6c6971756964697479506f6f6c00000000000000000000000000000000000000
                                                mem[_13881 + (2 * ceil32(return_data.size)) + 205] = 13
                                                mem[0] = sha3(0x6c6971756964697479506f6f6c)
                                                mem[32] = 23
                                                if ext_call.return_data[0] and stor23[('name', 'stor6C69', 8589274640650428211244320124780)] > -1 / ext_call.return_data[0]:
                                                    revert with 0, 17
                                                if ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 < ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2:
                                                    revert with 0, 17
                                                mem[_13881 + (2 * ceil32(return_data.size)) + 254] = address(stor16.field_8)
                                                mem[_13881 + (2 * ceil32(return_data.size)) + 286] = ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2
                                                require ext_code.size(stor18)
                                                call stor18.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(stor16.field_0), ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2
                                                mem[_13881 + (2 * ceil32(return_data.size)) + 250] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    mem[_13881 + (4 * ceil32(return_data.size)) + 250] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                    mem[_13881 + (4 * ceil32(return_data.size)) + 254] = 32
                                                    mem[_13881 + (4 * ceil32(return_data.size)) + 286] = 14
                                                    mem[_13881 + (4 * ceil32(return_data.size)) + 318] = 0x417070726f7665206661696c6564000000000000000000000000000000000000
                                                    revert with memory
                                                      from _13881 + (4 * ceil32(return_data.size)) + 250
                                                       len (5 * ceil32(return_data.size)) + 100
                                                if not Mask(255, 1, ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100):
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    mem[_13881 + (4 * ceil32(return_data.size)) + 254] = address(stor16.field_8)
                                                    mem[_13881 + (4 * ceil32(return_data.size)) + 286] = (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2)
                                                    require ext_code.size(stor18)
                                                    call stor18.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args mem[_13881 + (4 * ceil32(return_data.size)) + 254 len (5 * ceil32(return_data.size)) + 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        mem[_13881 + (4 * ceil32(return_data.size)) + 250] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[_13881 + (4 * ceil32(return_data.size)) + 254] = 32
                                                        mem[_13881 + (4 * ceil32(return_data.size)) + 286] = 14
                                                        mem[_13881 + (4 * ceil32(return_data.size)) + 318] = 0x417070726f7665206661696c6564000000000000000000000000000000000000
                                                        revert with memory
                                                          from _13881 + (4 * ceil32(return_data.size)) + 250
                                                           len (7 * ceil32(return_data.size)) + 100
                                                    mem[_13881 + (4 * ceil32(return_data.size)) + 254] = tokenAddress
                                                    mem[_13881 + (4 * ceil32(return_data.size)) + 286] = (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2)
                                                    mem[_13881 + (4 * ceil32(return_data.size)) + 318] = 0
                                                    mem[_13881 + (4 * ceil32(return_data.size)) + 350] = 0
                                                    mem[_13881 + (4 * ceil32(return_data.size)) + 382] = rewardsPoolAddress
                                                    mem[_13881 + (4 * ceil32(return_data.size)) + 414] = block.timestamp
                                                    require ext_code.size(address(stor16.field_8))
                                                    call address(stor16.field_8).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                         gas gas_remaining wei
                                                        args mem[_13881 + (4 * ceil32(return_data.size)) + 254 len (7 * ceil32(return_data.size)) + 192]
                                                    mem[_13881 + (4 * ceil32(return_data.size)) + 250 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    mem[_13881 + (8 * ceil32(return_data.size)) + 250] = ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2
                                                    mem[_13881 + (8 * ceil32(return_data.size)) + 282] = 0
                                                    mem[_13881 + (8 * ceil32(return_data.size)) + 314] = (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2)
                                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                        mem[_13881 + (8 * ceil32(return_data.size)) + 250 len (13 * ceil32(return_data.size)) + 96],
                                                    stor20 = 0
                                                    mem[_13881 + (8 * ceil32(return_data.size)) + 254] = msg.sender
                                                    mem[_13881 + (8 * ceil32(return_data.size)) + 286] = this.address
                                                    mem[_13881 + (8 * ceil32(return_data.size)) + 318] = arg2
                                                    require ext_code.size(stor18)
                                                    call stor18.0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args mem[_13881 + (8 * ceil32(return_data.size)) + 254 len (13 * ceil32(return_data.size)) + 96]
                                                    mem[_13881 + (8 * ceil32(return_data.size)) + 250] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[_13881 + (9 * ceil32(return_data.size)) + 250] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                                    mem[_13881 + (9 * ceil32(return_data.size)) + 254] = msg.sender
                                                    mem[_13881 + (9 * ceil32(return_data.size)) + 286] = 96
                                                    mem[_13881 + (9 * ceil32(return_data.size)) + 350] = mem[128]
                                                    mem[_13881 + (9 * ceil32(return_data.size)) + 382 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                    if ceil32(mem[128]) > mem[128]:
                                                        mem[_13881 + (9 * ceil32(return_data.size)) + mem[128] + 382] = 0
                                                    require ext_code.size(stor17)
                                                    call stor17.0x90219732 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, Array(len=mem[128], data=mem[_13881 + (9 * ceil32(return_data.size)) + 382 len (5 * ceil32(return_data.size)) + ceil32(mem[128])]), arg2
                                                else:
                                                    mem[_13881 + (4 * ceil32(return_data.size)) + 250] = 2
                                                    mem[_13881 + (4 * ceil32(return_data.size)) + 282] = tokenAddress
                                                    require ext_code.size(address(stor16.field_8))
                                                    staticcall address(stor16.field_8).WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[_13881 + (4 * ceil32(return_data.size)) + 346] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _13881 + (6 * ceil32(return_data.size)) + 346
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[_13881 + (4 * ceil32(return_data.size)) + 314] = ext_call.return_data[12 len 20]
                                                    mem[_13881 + (6 * ceil32(return_data.size)) + 346] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[_13881 + (6 * ceil32(return_data.size)) + 350] = ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2
                                                    mem[_13881 + (6 * ceil32(return_data.size)) + 382] = 0
                                                    mem[_13881 + (6 * ceil32(return_data.size)) + 414] = 160
                                                    mem[_13881 + (6 * ceil32(return_data.size)) + 510] = 2
                                                    idx = 0
                                                    s = _13881 + (6 * ceil32(return_data.size)) + 542
                                                    t = _13881 + (4 * ceil32(return_data.size)) + 282
                                                    while idx < mem[_13881 + (4 * ceil32(return_data.size)) + 250]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_13881 + (6 * ceil32(return_data.size)) + 446] = this.address
                                                    mem[_13881 + (6 * ceil32(return_data.size)) + 478] = block.timestamp
                                                    require ext_code.size(address(stor16.field_8))
                                                    call address(stor16.field_8).mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _13881 + (6 * ceil32(return_data.size)) + -mem[64] + 602]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    mem[mem[64]] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = address(stor16.field_8)
                                                    mem[mem[64] + 36] = (ext_call.return_data[0] * stor23[mem[0]] / 100) - (ext_call.return_data[0] * stor23[mem[0]] / 100 / 2)
                                                    require ext_code.size(stor18)
                                                    call stor18.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(stor16.field_0), (ext_call.return_data[0] * stor23[mem[0]] / 100) - (ext_call.return_data[0] * stor23[mem[0]] / 100 / 2)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _44063 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_44063] == bool(mem[_44063])
                                                    if not mem[_44063]:
                                                        revert with 0, 'Approve failed'
                                                    mem[mem[64]] = 0xf91b3f7200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 68] = 0
                                                    mem[mem[64] + 100] = 0
                                                    mem[mem[64] + 132] = rewardsPoolAddress
                                                    mem[mem[64] + 164] = block.timestamp
                                                    require ext_code.size(address(stor16.field_8))
                                                    call address(stor16.field_8).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                         gas gas_remaining wei
                                                        args tokenAddress, (ext_call.return_data[0] * stor23[mem[0]] / 100) - (ext_call.return_data[0] * stor23[mem[0]] / 100 / 2), 0, 0, rewardsPoolAddress, block.timestamp
                                                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 96
                                                    mem[mem[64]] = ext_call.return_data[0] * stor23[mem[0]] / 100 / 2
                                                    emit SwapAndLiquify(ext_call.return_data[0] * stor23[mem[0]] / 100 / 2, 0, (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2));
                                                    stor20 = 0
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = this.address
                                                    mem[mem[64] + 68] = arg2
                                                    require ext_code.size(stor18)
                                                    call stor18.0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(this.address), arg2
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _44574 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_44574] == bool(mem[_44574])
                                                    mem[mem[64]] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = 96
                                                    mem[mem[64] + 100] = mem[128]
                                                    mem[mem[64] + 132 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                    if ceil32(mem[128]) > mem[128]:
                                                        mem[mem[64] + mem[128] + 132] = 0
                                                    require ext_code.size(stor17)
                                                    call stor17.0x90219732 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, Array(len=mem[128], data=mem[mem[64] + 132 len ceil32(mem[128])]), arg2
                                            else:
                                                mem[_13881 + ceil32(return_data.size) + 141] = 2
                                                mem[_13881 + ceil32(return_data.size) + 173] = tokenAddress
                                                require ext_code.size(address(stor16.field_8))
                                                staticcall address(stor16.field_8).WAVAX() with:
                                                        gas gas_remaining wei
                                                mem[_13881 + ceil32(return_data.size) + 237] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _13881 + (2 * ceil32(return_data.size)) + 237
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[_13881 + ceil32(return_data.size) + 205] = ext_call.return_data[12 len 20]
                                                mem[_13881 + (2 * ceil32(return_data.size)) + 237] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[_13881 + (2 * ceil32(return_data.size)) + 241] = ext_call.return_data[0] * stor[_23251] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100
                                                mem[_13881 + (2 * ceil32(return_data.size)) + 273] = 0
                                                mem[_13881 + (2 * ceil32(return_data.size)) + 305] = 160
                                                mem[_13881 + (2 * ceil32(return_data.size)) + 401] = 2
                                                idx = 0
                                                s = _13881 + (2 * ceil32(return_data.size)) + 433
                                                t = _13881 + ceil32(return_data.size) + 173
                                                while idx < mem[_13881 + ceil32(return_data.size) + 141]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_13881 + (2 * ceil32(return_data.size)) + 337] = this.address
                                                mem[_13881 + (2 * ceil32(return_data.size)) + 369] = block.timestamp
                                                require ext_code.size(address(stor16.field_8))
                                                call address(stor16.field_8).mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _13881 + (2 * ceil32(return_data.size)) + -mem[64] + 493]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                call rewardsPoolAddress with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if ext_call.return_data[0] * stor[_23251] / 100 < ext_call.return_data[0] * stor[_23251] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100:
                                                    revert with 0, 17
                                                mem[mem[64] + 4] = rewardsPoolAddress
                                                mem[mem[64] + 36] = (ext_call.return_data[0] * stor[_23251] / 100) - (ext_call.return_data[0] * stor[_23251] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100)
                                                require ext_code.size(stor18)
                                                call stor18.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args rewardsPoolAddress, (ext_call.return_data[0] * stor[_23251] / 100) - (ext_call.return_data[0] * stor[_23251] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _39711 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_39711] == bool(mem[_39711])
                                                _39903 = mem[64]
                                                mem[64] = mem[64] + 64
                                                mem[_39903] = 13
                                                mem[_39903 + 32] = 0x6c6971756964697479506f6f6c00000000000000000000000000000000000000
                                                _39959 = mem[64]
                                                mem[mem[64] + 32] = 0x6c6971756964697479506f6f6c00000000000000000000000000000000000000
                                                mem[mem[64] + 45] = 0
                                                _43916 = mem[64]
                                                mem[mem[64]] = 13
                                                mem[64] = mem[64] + 45
                                                mem[0] = sha3(mem[_43916 + 32 len mem[_43916]])
                                                mem[32] = 23
                                                _43919 = sha3(mem[0], 23)
                                                if ext_call.return_data[0] and stor23[mem[0]] > -1 / ext_call.return_data[0]:
                                                    revert with 0, 17
                                                if ext_call.return_data[0] * stor23[mem[0]] / 100 < ext_call.return_data[0] * stor23[mem[0]] / 100 / 2:
                                                    revert with 0, 17
                                                mem[_39959 + 45] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
                                                mem[_39959 + 49] = address(stor16.field_8)
                                                mem[_39959 + 81] = ext_call.return_data[0] * stor23[mem[0]] / 100 / 2
                                                require ext_code.size(stor18)
                                                call stor18.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args address(stor16.field_0), ext_call.return_data[0] * stor23[mem[0]] / 100 / 2
                                                mem[_39959 + 45] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[64] = _39959 + ceil32(return_data.size) + 45
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 'Approve failed'
                                                if not Mask(255, 1, ext_call.return_data[0] * stor23[mem[0]] / 100):
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    mem[_39959 + ceil32(return_data.size) + 49] = address(stor16.field_8)
                                                    mem[_39959 + ceil32(return_data.size) + 81] = (ext_call.return_data[0] * stor23[mem[0]] / 100) - (ext_call.return_data[0] * stor23[mem[0]] / 100 / 2)
                                                    require ext_code.size(stor18)
                                                    call stor18.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(stor16.field_0), (ext_call.return_data[0] * stor23[mem[0]] / 100) - (ext_call.return_data[0] * stor23[mem[0]] / 100 / 2)
                                                    mem[_39959 + ceil32(return_data.size) + 45] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, 'Approve failed'
                                                    mem[_39959 + (2 * ceil32(return_data.size)) + 113] = 0
                                                    mem[_39959 + (2 * ceil32(return_data.size)) + 145] = 0
                                                    mem[_39959 + (2 * ceil32(return_data.size)) + 177] = rewardsPoolAddress
                                                    mem[_39959 + (2 * ceil32(return_data.size)) + 209] = block.timestamp
                                                    require ext_code.size(address(stor16.field_8))
                                                    call address(stor16.field_8).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                         gas gas_remaining wei
                                                        args tokenAddress, (ext_call.return_data[0] * stor23[mem[0]] / 100) - (ext_call.return_data[0] * stor23[mem[0]] / 100 / 2), 0, 0, rewardsPoolAddress, block.timestamp
                                                    mem[_39959 + (2 * ceil32(return_data.size)) + 45 len 96] = ext_call.return_data[0 len 96]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _39959 + (4 * ceil32(return_data.size)) + 45
                                                    require return_data.size >= 96
                                                    emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] * stor23[mem[0]] / 100), 0, (ext_call.return_data[0] * stor23[mem[0]] / 100) - (ext_call.return_data[0] * stor23[mem[0]] / 100 / 2));
                                                    stor20 = 0
                                                    mem[_39959 + (4 * ceil32(return_data.size)) + 49] = msg.sender
                                                    mem[_39959 + (4 * ceil32(return_data.size)) + 81] = this.address
                                                    mem[_39959 + (4 * ceil32(return_data.size)) + 113] = arg2
                                                    require ext_code.size(stor18)
                                                    call stor18.0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(this.address), arg2
                                                    mem[_39959 + (4 * ceil32(return_data.size)) + 45] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _39959 + (6 * ceil32(return_data.size)) + 45
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[_39959 + (6 * ceil32(return_data.size)) + 45] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                                    mem[_39959 + (6 * ceil32(return_data.size)) + 49] = msg.sender
                                                    mem[_39959 + (6 * ceil32(return_data.size)) + 81] = 96
                                                    _45484 = mem[128]
                                                    mem[_39959 + (6 * ceil32(return_data.size)) + 145] = mem[128]
                                                    mem[_39959 + (6 * ceil32(return_data.size)) + 177 len ceil32(_45484)] = mem[160 len ceil32(_45484)]
                                                    if ceil32(_45484) > _45484:
                                                        mem[_39959 + (6 * ceil32(return_data.size)) + _45484 + 177] = 0
                                                    require ext_code.size(stor17)
                                                    call stor17.0x90219732 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 96, arg2, mem[_39959 + (6 * ceil32(return_data.size)) + 145 len ceil32(_45484) + 32]
                                                else:
                                                    mem[_39959 + ceil32(return_data.size) + 45] = 2
                                                    mem[64] = _39959 + ceil32(return_data.size) + 141
                                                    mem[_39959 + ceil32(return_data.size) + 77] = tokenAddress
                                                    require ext_code.size(address(stor16.field_8))
                                                    staticcall address(stor16.field_8).WAVAX() with:
                                                            gas gas_remaining wei
                                                    mem[_39959 + ceil32(return_data.size) + 141] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = _39959 + (2 * ceil32(return_data.size)) + 141
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[_39959 + ceil32(return_data.size) + 109] = ext_call.return_data[12 len 20]
                                                    mem[_39959 + (2 * ceil32(return_data.size)) + 141] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[_39959 + (2 * ceil32(return_data.size)) + 145] = ext_call.return_data[0] * stor23[mem[0]] / 100 / 2
                                                    mem[_39959 + (2 * ceil32(return_data.size)) + 177] = 0
                                                    mem[_39959 + (2 * ceil32(return_data.size)) + 209] = 160
                                                    mem[_39959 + (2 * ceil32(return_data.size)) + 305] = 2
                                                    idx = 0
                                                    s = _39959 + (2 * ceil32(return_data.size)) + 337
                                                    t = _39959 + ceil32(return_data.size) + 77
                                                    while idx < mem[_39959 + ceil32(return_data.size) + 45]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_39959 + (2 * ceil32(return_data.size)) + 241] = this.address
                                                    mem[_39959 + (2 * ceil32(return_data.size)) + 273] = block.timestamp
                                                    require ext_code.size(address(stor16.field_8))
                                                    call address(stor16.field_8).mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _39959 + (2 * ceil32(return_data.size)) + -mem[64] + 397]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    mem[mem[64] + 4] = address(stor16.field_8)
                                                    mem[mem[64] + 36] = (ext_call.return_data[0] * stor[_43919] / 100) - (ext_call.return_data[0] * stor[_43919] / 100 / 2)
                                                    require ext_code.size(stor18)
                                                    call stor18.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args address(stor16.field_0), (ext_call.return_data[0] * stor[_43919] / 100) - (ext_call.return_data[0] * stor[_43919] / 100 / 2)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _45935 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_45935] == bool(mem[_45935])
                                                    if not mem[_45935]:
                                                        revert with 0, 'Approve failed'
                                                    mem[mem[64] + 100] = 0
                                                    mem[mem[64] + 132] = rewardsPoolAddress
                                                    mem[mem[64] + 164] = block.timestamp
                                                    require ext_code.size(address(stor16.field_8))
                                                    call address(stor16.field_8).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                         gas gas_remaining wei
                                                        args tokenAddress, (ext_call.return_data[0] * stor[_43919] / 100) - (ext_call.return_data[0] * stor[_43919] / 100 / 2), 0, 0, rewardsPoolAddress, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 96
                                                    emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] * stor[_43919] / 100), 0, (ext_call.return_data[0] * stor[_43919] / 100) - (ext_call.return_data[0] * stor[_43919] / 100 / 2));
                                                    stor20 = 0
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = this.address
                                                    mem[mem[64] + 68] = arg2
                                                    require ext_code.size(stor18)
                                                    call stor18.0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(this.address), arg2
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _46159 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_46159] == bool(mem[_46159])
                                                    mem[mem[64]] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = msg.sender
                                                    mem[mem[64] + 36] = 96
                                                    mem[mem[64] + 100] = mem[128]
                                                    mem[mem[64] + 132 len ceil32(mem[128])] = mem[160 len ceil32(mem[128])]
                                                    if ceil32(mem[128]) > mem[128]:
                                                        mem[mem[64] + mem[128] + 132] = 0
                                                    require ext_code.size(stor17)
                                                    call stor17.0x90219732 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, Array(len=mem[128], data=mem[mem[64] + 132 len ceil32(mem[128])]), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}



}
