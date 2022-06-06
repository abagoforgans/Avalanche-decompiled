contract main {




// =====================  Runtime code  =====================


#
#  - compoundAll()
#  - _fallback()
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
uint8 sub_fabc4035;
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
mapping of uint256 stor1952801133;
mapping of uint256 stor469853431653;
mapping of uint256 stor125856827007344;
mapping of uint256 stor27973170995623284;
mapping of uint256 stor7165065861843480164;
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
    return bool(sub_fabc4035)
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

function sub_f4e27dc8(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fabc4035 = uint8(bool(arg1))
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
    require ext_code.size(stor17)
    staticcall stor17.getNodeReward(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg1
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
            mem[ceil32(return_data.size) + 404] = deadWalletAddress
            mem[ceil32(return_data.size) + 436] = ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100
            require ext_code.size(stor18)
            call stor18.0xa9059cbb with:
                 gas gas_remaining wei
                args deadWalletAddress, ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100
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
                mem[(2 * ceil32(return_data.size)) + 508] = deadWalletAddress
                mem[(2 * ceil32(return_data.size)) + 540] = (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100
                require ext_code.size(stor18)
                call stor18.0xa9059cbb with:
                     gas gas_remaining wei
                    args deadWalletAddress, (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100
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
            call address(stor16.field_8).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 564 len (32 * mem[(2 * ceil32(return_data.size)) + 304]) + 32]
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
            if stor23[('name', 'stor6275', 1651864174)] <= 0:
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
                call stor18.0xa9059cbb with:
                     gas gas_remaining wei
                    args deadWalletAddress, (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor636F', 7165065861843480164)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100
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
    require ext_code.size(stor17)
    staticcall stor17.getAllNodesRewards(address arg1) with:
            gas gas_remaining wei
           args msg.sender
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
            mem[ceil32(return_data.size) + 403] = 0
            mem[ceil32(return_data.size) + 435] = ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100
            require ext_code.size(stor18)
            call stor18.0xa9059cbb with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100
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
                mem[(2 * ceil32(return_data.size)) + 506] = 0
                mem[(2 * ceil32(return_data.size)) + 538] = (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100
                require ext_code.size(stor18)
                call stor18.0xa9059cbb with:
                     gas gas_remaining wei
                    args 0, (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100
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
            call address(stor16.field_8).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 562 len (32 * mem[(2 * ceil32(return_data.size)) + 302]) + 32]
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
            if stor23[('name', 'stor6275', 1651864174)] <= 0:
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
                call stor18.0xa9059cbb with:
                     gas gas_remaining wei
                    args 0, (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100
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
    require ext_code.size(stor17)
    staticcall stor17.getNodeReward(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, arg1
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
            mem[ceil32(return_data.size) + 403] = 0
            mem[ceil32(return_data.size) + 435] = ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100
            require ext_code.size(stor18)
            call stor18.0xa9059cbb with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)] / 100
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
                mem[(2 * ceil32(return_data.size)) + 506] = 0
                mem[(2 * ceil32(return_data.size)) + 538] = (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100
                require ext_code.size(stor18)
                call stor18.0xa9059cbb with:
                     gas gas_remaining wei
                    args 0, (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100
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
            call address(stor16.field_8).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 562 len (32 * mem[(2 * ceil32(return_data.size)) + 302]) + 32]
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
            if stor23[('name', 'stor6275', 1651864174)] <= 0:
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
                    args 0, (ext_call.return_data[0] * stor23[('name', 'stor6275', 1651864174)]) - (ext_call.return_data[0] * stor23[('name', 'stor6361', 27973170995623284)] / 100 * stor23[('name', 'stor6275', 1651864174)]) / 100
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
        if not sub_fabc4035:
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
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 97] = 4
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 129] = 0x7465616d00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 193] = 0x7465616d00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 161] = 4
                        if ext_call.return_data[0] and stor23[('name', 'stor7465', 1952801133)] > -1 / ext_call.return_data[0]:
                            revert with 0, 17
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 201] = address(stor16.field_8)
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 233] = ext_call.return_data[0] * stor23[('name', 'stor7465', 1952801133)] / 100
                        require ext_code.size(stor18)
                        call stor18.approve(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(stor16.field_0), ext_call.return_data[0] * stor23[('name', 'stor7465', 1952801133)] / 100
                        mem[ceil32(ceil32(arg1.length)) + (4 * ceil32(return_data.size)) + 197] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 
                                        'Approve failed',
                                        mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 297 len 9 * ceil32(return_data.size)]
                        if not ext_call.return_data[0] * stor23[('name', 'stor7465', 1952801133)] / 100:
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            call teamPoolAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 197] = 7
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 229] = 'rewards' << 200
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 293] = 'rewards' << 200
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 261] = 7
                            if ext_call.return_data[0] and stor23['rewards'] > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 300] = 6
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 332] = 0x7277537761700000000000000000000000000000000000000000000000000000
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 396] = 0x7277537761700000000000000000000000000000000000000000000000000000
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 364] = 6
                            if ext_call.return_data[0] * stor23['rewards'] / 100 and stor23[('name', 'stor7277', 125856827007344)] > -1 / ext_call.return_data[0] * stor23['rewards'] / 100:
                                revert with 0, 17
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 406] = address(stor16.field_8)
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 438] = ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100
                            require ext_code.size(stor18)
                            call stor18.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor16.field_0), ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 402] = ext_call.return_data[0]
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
                                mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 406] = rewardsPoolAddress
                                mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 438] = (ext_call.return_data[0] * stor23['rewards'] / 100) - (ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100)
                                require ext_code.size(stor18)
                                call stor18.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args rewardsPoolAddress, (ext_call.return_data[0] * stor23['rewards'] / 100) - (ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100)
                                mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 402] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[ceil32(ceil32(arg1.length)) + (9 * ceil32(return_data.size)) + 402] = 13
                                mem[ceil32(ceil32(arg1.length)) + (9 * ceil32(return_data.size)) + 434] = 0x6c6971756964697479506f6f6c00000000000000000000000000000000000000
                                mem[ceil32(ceil32(arg1.length)) + (9 * ceil32(return_data.size)) + 498] = 0x6c6971756964697479506f6f6c00000000000000000000000000000000000000
                                mem[ceil32(ceil32(arg1.length)) + (9 * ceil32(return_data.size)) + 466] = 13
                                if ext_call.return_data[0] and stor23[('name', 'stor6C69', 8589274640650428211244320124780)] > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                if ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 < ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2:
                                    revert with 0, 17
                                mem[ceil32(ceil32(arg1.length)) + (9 * ceil32(return_data.size)) + 515] = address(stor16.field_8)
                                mem[ceil32(ceil32(arg1.length)) + (9 * ceil32(return_data.size)) + 547] = ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2
                                require ext_code.size(stor18)
                                call stor18.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(stor16.field_0), ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2
                                mem[ceil32(ceil32(arg1.length)) + (9 * ceil32(return_data.size)) + 511] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Approve failed'
                                if not Mask(255, 1, ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100):
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 515] = address(stor16.field_8)
                                    mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 547] = (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2)
                                    require ext_code.size(stor18)
                                    call stor18.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(stor16.field_0), (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2)
                                    mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 511] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 
                                                    'Approve failed',
                                                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 611 len 5 * ceil32(return_data.size)]
                                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 579] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 611] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 643] = rewardsPoolAddress
                                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 675] = block.timestamp
                                    require ext_code.size(address(stor16.field_8))
                                    call address(stor16.field_8).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args tokenAddress, (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2), 0, 0, rewardsPoolAddress, block.timestamp, mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 707 len 5 * ceil32(return_data.size)]
                                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 511 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 543] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 575] = (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2)
                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                        Mask(255, 1, ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100),
                                                        0,
                                                        (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2),
                                                        mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 607 len 9 * ceil32(return_data.size)],
                                    mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 515] = this.address
                                    require ext_code.size(stor18)
                                    staticcall stor18.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address, mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 547 len 9 * ceil32(return_data.size)]
                                    mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 511] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 515] = address(stor16.field_8)
                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 547] = ext_call.return_data[0]
                                    require ext_code.size(stor18)
                                    call stor18.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(stor16.field_0), ext_call.return_data[0]
                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 511] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 511] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 515] = 32
                                        mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 547] = 14
                                        mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 579] = 0x417070726f7665206661696c6564000000000000000000000000000000000000
                                        revert with memory
                                          from ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 511
                                           len ceil32(return_data.size) + 100
                                    if not ext_call.return_data[0]:
                                        stor20 = 0
                                        mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 515] = msg.sender
                                        mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 547] = this.address
                                        mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 579] = arg2
                                        require ext_code.size(stor18)
                                        call stor18.0x23b872dd with:
                                             gas gas_remaining wei
                                            args mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 515 len ceil32(return_data.size) + 96]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 643 len ceil32(arg1.length)] = arg1[all], ext_call.return_data[arg1.length + -ceil32(ceil32(arg1.length)) + 31 len ceil32(arg1.length) - arg1.length]
                                        if ceil32(arg1.length) > arg1.length:
                                            mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + arg1.length + 643] = 0
                                        require ext_code.size(stor17)
                                        call stor17.0x90219732 with:
                                             gas gas_remaining wei
                                            args msg.sender, Array(len=arg1.length, data=mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 643 len (17 * ceil32(return_data.size)) + ceil32(arg1.length)]), arg2
                                    else:
                                        mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 543] = tokenAddress
                                        require ext_code.size(address(stor16.field_8))
                                        staticcall address(stor16.field_8).WAVAX() with:
                                                gas gas_remaining wei
                                        mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 607] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 575] = ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 607] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 611] = ext_call.return_data[0]
                                        idx = 0
                                        s = ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 803
                                        t = ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 543
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(stor16.field_8))
                                        call address(stor16.field_8).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 803 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
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
                                    mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 543] = tokenAddress
                                    require ext_code.size(address(stor16.field_8))
                                    staticcall address(stor16.field_8).WAVAX() with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 607] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 575] = ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 607] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 611] = ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2
                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 675] = 160
                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 771] = 2
                                    idx = 0
                                    s = ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 803
                                    t = ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 543
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 707] = this.address
                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 739] = block.timestamp
                                    require ext_code.size(address(stor16.field_8))
                                    call address(stor16.field_8).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 803 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 611] = address(stor16.field_8)
                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 643] = (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2)
                                    require ext_code.size(stor18)
                                    call stor18.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(stor16.field_0), (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2)
                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 607] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Approve failed'
                                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 675] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 707] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 739] = rewardsPoolAddress
                                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 771] = block.timestamp
                                    require ext_code.size(address(stor16.field_8))
                                    call address(stor16.field_8).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args tokenAddress, (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2), 0, 0, rewardsPoolAddress, block.timestamp
                                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 607 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 639] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 671] = (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2)
                                    emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100), 0, (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2));
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 611] = this.address
                                    require ext_code.size(stor18)
                                    staticcall stor18.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 607] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 611] = address(stor16.field_8)
                                    mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 643] = ext_call.return_data[0]
                                    require ext_code.size(stor18)
                                    call stor18.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(stor16.field_0), ext_call.return_data[0]
                                    mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 607] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Approve failed'
                                    if ext_call.return_data[0]:
                                        mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 607] = 2
                                        mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 639] = tokenAddress
                                        require ext_code.size(address(stor16.field_8))
                                        staticcall address(stor16.field_8).WAVAX() with:
                                                gas gas_remaining wei
                                        mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 703] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 671] = ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 703] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 707] = ext_call.return_data[0]
                                        mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 739] = 0
                                        mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 771] = 160
                                        mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 867] = 2
                                        idx = 0
                                        s = ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 899
                                        t = ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 639
                                        while idx < mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 607]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 803] = this.address
                                        mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 835] = block.timestamp
                                        require ext_code.size(address(stor16.field_8))
                                        call address(stor16.field_8).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 867 len (32 * mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 607]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
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
                                mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 402] = 2
                                mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 434] = tokenAddress
                                require ext_code.size(address(stor16.field_8))
                                staticcall address(stor16.field_8).WAVAX() with:
                                        gas gas_remaining wei
                                mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 498] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 466] = ext_call.return_data[12 len 20]
                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 498] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 502] = ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100
                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 566] = 160
                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 662] = 2
                                idx = 0
                                s = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 694
                                t = ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 434
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 598] = this.address
                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 630] = block.timestamp
                                require ext_code.size(address(stor16.field_8))
                                call address(stor16.field_8).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 694 len 64]
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
                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 502] = rewardsPoolAddress
                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 534] = (ext_call.return_data[0] * stor23['rewards'] / 100) - (ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100)
                                require ext_code.size(stor18)
                                call stor18.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args rewardsPoolAddress, (ext_call.return_data[0] * stor23['rewards'] / 100) - (ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100)
                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 498] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 498] = 13
                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 530] = 0x6c6971756964697479506f6f6c00000000000000000000000000000000000000
                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 594] = 0x6c6971756964697479506f6f6c00000000000000000000000000000000000000
                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 562] = 13
                                mem[0] = sha3(0x6c6971756964697479506f6f6c)
                                mem[32] = 23
                                if ext_call.return_data[0] and stor23[('name', 'stor6C69', 8589274640650428211244320124780)] > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                if ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 < ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2:
                                    revert with 0, 17
                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 611] = address(stor16.field_8)
                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 643] = ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2
                                require ext_code.size(stor18)
                                call stor18.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(stor16.field_0), ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2
                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 607] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Approve failed'
                                if not Mask(255, 1, ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100):
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 643] = (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2)
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
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 675] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 707] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 739] = rewardsPoolAddress
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 771] = block.timestamp
                                    require ext_code.size(address(stor16.field_8))
                                    call address(stor16.field_8).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args tokenAddress, (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2), 0, 0, rewardsPoolAddress, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 671] = (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2)
                                    emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100), 0, (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2));
                                    require ext_code.size(stor18)
                                    staticcall stor18.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 611] = address(stor16.field_8)
                                    mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 643] = ext_call.return_data[0]
                                    require ext_code.size(stor18)
                                    call stor18.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(stor16.field_0), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Approve failed'
                                    if not ext_call.return_data[0]:
                                        stor20 = 0
                                        require ext_code.size(stor18)
                                        call stor18.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), arg2
                                    else:
                                        mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 639] = tokenAddress
                                        require ext_code.size(address(stor16.field_8))
                                        staticcall address(stor16.field_8).WAVAX() with:
                                                gas gas_remaining wei
                                        mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 703] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 671] = ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 703] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 707] = ext_call.return_data[0]
                                        mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 867] = 2
                                        idx = 0
                                        s = ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 899
                                        t = ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 639
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 803] = this.address
                                        mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 835] = block.timestamp
                                        require ext_code.size(address(stor16.field_8))
                                        call address(stor16.field_8).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 899 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        stor20 = 0
                                        require ext_code.size(stor18)
                                        call stor18.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), arg2, mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 803 len 17 * ceil32(return_data.size)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    require ext_code.size(stor17)
                                    call stor17.0x90219732 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=arg1.length, data=arg1[all]), arg2
                                else:
                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 607] = 2
                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 639] = tokenAddress
                                    require ext_code.size(address(stor16.field_8))
                                    staticcall address(stor16.field_8).WAVAX() with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 703] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 703
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 671] = ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 703] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 707] = ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 739] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 771] = 160
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 867] = 2
                                    idx = 0
                                    s = ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 899
                                    t = ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 639
                                    while idx < mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 607]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 803] = this.address
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 835] = block.timestamp
                                    require ext_code.size(address(stor16.field_8))
                                    call address(stor16.field_8).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0] * stor23[mem[0]] / 100), 0, 160, address(this.address), block.timestamp, mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 867 len (32 * mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 607]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 707] = address(stor16.field_8)
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 739] = (ext_call.return_data[0] * stor23[mem[0]] / 100) - (ext_call.return_data[0] * stor23[mem[0]] / 100 / 2)
                                    require ext_code.size(stor18)
                                    call stor18.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(stor16.field_0), (ext_call.return_data[0] * stor23[mem[0]] / 100) - (ext_call.return_data[0] * stor23[mem[0]] / 100 / 2), mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 771 len 5 * ceil32(return_data.size)]
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 703] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 
                                                    'Approve failed',
                                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 803 len 9 * ceil32(return_data.size)]
                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 771] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 803] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 835] = rewardsPoolAddress
                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 867] = block.timestamp
                                    require ext_code.size(address(stor16.field_8))
                                    call address(stor16.field_8).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args tokenAddress, (ext_call.return_data[0] * stor23[mem[0]] / 100) - (ext_call.return_data[0] * stor23[mem[0]] / 100 / 2), 0, 0, rewardsPoolAddress, block.timestamp, mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 899 len 9 * ceil32(return_data.size)]
                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 703 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 703] = ext_call.return_data[0] * stor23[mem[0]] / 100 / 2
                                    mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 735] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 767] = (ext_call.return_data[0] * stor23[mem[0]] / 100) - (ext_call.return_data[0] * stor23[mem[0]] / 100 / 2)
                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                        mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 703 len ceil32(return_data.size) + 96],
                                    mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 707] = this.address
                                    require ext_code.size(stor18)
                                    staticcall stor18.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 703] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 707] = address(stor16.field_8)
                                    mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 739] = ext_call.return_data[0]
                                    require ext_code.size(stor18)
                                    call stor18.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(stor16.field_0), ext_call.return_data[0]
                                    mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 703] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 
                                                    'Approve failed',
                                                    mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 803 len 17 * ceil32(return_data.size)]
                                    if not ext_call.return_data[0]:
                                        stor20 = 0
                                        require ext_code.size(stor18)
                                        call stor18.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), arg2, mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 803 len 17 * ceil32(return_data.size)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        require ext_code.size(stor17)
                                        call stor17.0x90219732 with:
                                             gas gas_remaining wei
                                            args msg.sender, Array(len=arg1.length, data=mem[128 len ceil32(arg1.length)]), arg2
                                    else:
                                        mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 703] = 2
                                        mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 735] = tokenAddress
                                        require ext_code.size(address(stor16.field_8))
                                        staticcall address(stor16.field_8).WAVAX() with:
                                                gas gas_remaining wei
                                        mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 799] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 767] = ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 799] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 803] = ext_call.return_data[0]
                                        mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 963] = 2
                                        idx = 0
                                        s = ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 995
                                        t = ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 735
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 899] = this.address
                                        mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 931] = block.timestamp
                                        require ext_code.size(address(stor16.field_8))
                                        call address(stor16.field_8).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 995 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        stor20 = 0
                                        mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 803] = msg.sender
                                        mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 835] = this.address
                                        mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 867] = arg2
                                        require ext_code.size(stor18)
                                        call stor18.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), arg2
                                        mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 799] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 799] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 803] = msg.sender
                                        mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 835] = 96
                                        mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 899] = mem[96]
                                        mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 931 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                        if ceil32(mem[96]) > mem[96]:
                                            mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + mem[96] + 931] = 0
                                        require ext_code.size(stor17)
                                        call stor17.0x90219732 with:
                                             gas gas_remaining wei
                                            args msg.sender, Array(len=mem[96], data=mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 931 len ceil32(mem[96])]), arg2
                        else:
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 197] = 2
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 229] = tokenAddress
                            require ext_code.size(address(stor16.field_8))
                            staticcall address(stor16.field_8).WAVAX() with:
                                    gas gas_remaining wei
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 293] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            mem[ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 261] = ext_call.return_data[12 len 20]
                            mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 293] = 0x762b156200000000000000000000000000000000000000000000000000000000
                            mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 297] = ext_call.return_data[0] * stor23[('name', 'stor7465', 1952801133)] / 100
                            idx = 0
                            s = ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 489
                            t = ceil32(ceil32(arg1.length)) + (6 * ceil32(return_data.size)) + 229
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            require ext_code.size(address(stor16.field_8))
                            call address(stor16.field_8).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0] * stor23[('name', 'stor7465', 1952801133)] / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 489 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            call teamPoolAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 293] = 7
                            mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 325] = 'rewards' << 200
                            mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 389] = 'rewards' << 200
                            mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 357] = 7
                            if ext_call.return_data[0] and stor23['rewards'] > -1 / ext_call.return_data[0]:
                                revert with 0, 17
                            mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 396] = 6
                            mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 428] = 0x7277537761700000000000000000000000000000000000000000000000000000
                            mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 492] = 0x7277537761700000000000000000000000000000000000000000000000000000
                            mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 460] = 6
                            if ext_call.return_data[0] * stor23['rewards'] / 100 and stor23[('name', 'stor7277', 125856827007344)] > -1 / ext_call.return_data[0] * stor23['rewards'] / 100:
                                revert with 0, 17
                            mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 502] = address(stor16.field_8)
                            mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 534] = ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100
                            require ext_code.size(stor18)
                            call stor18.approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor16.field_0), ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100
                            mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 498] = ext_call.return_data[0]
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
                                require ext_code.size(stor18)
                                call stor18.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args rewardsPoolAddress, (ext_call.return_data[0] * stor23['rewards'] / 100) - (ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if ext_call.return_data[0] and stor23[('name', 'stor6C69', 8589274640650428211244320124780)] > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                if ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 < ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2:
                                    revert with 0, 17
                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 611] = address(stor16.field_8)
                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 643] = ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2
                                require ext_code.size(stor18)
                                call stor18.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(stor16.field_0), ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2
                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 607] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 
                                                'Approve failed',
                                                mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 707 len 5 * ceil32(return_data.size)]
                                if not Mask(255, 1, ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100):
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    require ext_code.size(stor18)
                                    call stor18.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(stor16.field_0), (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2), mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 675 len 5 * ceil32(return_data.size)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 
                                                    'Approve failed',
                                                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 707 len 7 * ceil32(return_data.size)]
                                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 675] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 707] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 739] = rewardsPoolAddress
                                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 771] = block.timestamp
                                    require ext_code.size(address(stor16.field_8))
                                    call address(stor16.field_8).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args tokenAddress, (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2), 0, 0, rewardsPoolAddress, block.timestamp, mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 803 len 7 * ceil32(return_data.size)]
                                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 607 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 607] = ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2
                                    mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 639] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 671] = (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2)
                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                        mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 607 len (13 * ceil32(return_data.size)) + 96],
                                    mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 611] = this.address
                                    require ext_code.size(stor18)
                                    staticcall stor18.0x70a08231 with:
                                            gas gas_remaining wei
                                           args mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 611 len (13 * ceil32(return_data.size)) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 611] = address(stor16.field_8)
                                    mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 643] = ext_call.return_data[0]
                                    require ext_code.size(stor18)
                                    call stor18.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(stor16.field_0), ext_call.return_data[0], mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 675 len 5 * ceil32(return_data.size)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 
                                                    'Approve failed',
                                                    mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 707 len 5 * ceil32(return_data.size)]
                                    if not ext_call.return_data[0]:
                                        stor20 = 0
                                        require ext_code.size(stor18)
                                        call stor18.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(this.address), arg2, mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 707 len 5 * ceil32(return_data.size)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 739 len ceil32(arg1.length)] = arg1[all], ext_call.return_data[arg1.length + -ceil32(ceil32(arg1.length)) + 31 len ceil32(arg1.length) - arg1.length]
                                        if ceil32(arg1.length) > arg1.length:
                                            mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + arg1.length + 739] = 0
                                        require ext_code.size(stor17)
                                        call stor17.0x90219732 with:
                                             gas gas_remaining wei
                                            args msg.sender, Array(len=arg1.length, data=mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 739 len (20 * ceil32(return_data.size)) + ceil32(arg1.length)]), arg2
                                    else:
                                        mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 639] = tokenAddress
                                        require ext_code.size(address(stor16.field_8))
                                        staticcall address(stor16.field_8).WAVAX() with:
                                                gas gas_remaining wei
                                        mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 703] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 671] = ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 703] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 707] = ext_call.return_data[0]
                                        idx = 0
                                        s = ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 899
                                        t = ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 639
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(stor16.field_8))
                                        call address(stor16.field_8).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 899 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
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
                                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 639] = tokenAddress
                                    require ext_code.size(address(stor16.field_8))
                                    staticcall address(stor16.field_8).WAVAX() with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 703] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 671] = ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 703] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 707] = ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 771] = 160
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 867] = 2
                                    idx = 0
                                    s = ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 899
                                    t = ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 639
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 803] = this.address
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 835] = block.timestamp
                                    require ext_code.size(address(stor16.field_8))
                                    call address(stor16.field_8).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args Mask(255, 1, ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 899 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 707] = address(stor16.field_8)
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 739] = (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2)
                                    require ext_code.size(stor18)
                                    call stor18.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(stor16.field_0), (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2)
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 703] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Approve failed'
                                    mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 771] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 803] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 835] = rewardsPoolAddress
                                    mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 867] = block.timestamp
                                    require ext_code.size(address(stor16.field_8))
                                    call address(stor16.field_8).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args tokenAddress, (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2), 0, 0, rewardsPoolAddress, block.timestamp
                                    mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 703 len 96] = ext_call.return_data[0 len 96]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 703] = ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2
                                    mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 735] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 767] = (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100) - (ext_call.return_data[0] * stor23[('name', 'stor6C69', 8589274640650428211244320124780)] / 100 / 2)
                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                        mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 703 len (17 * ceil32(return_data.size)) + 96],
                                    mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 707] = this.address
                                    require ext_code.size(stor18)
                                    staticcall stor18.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 739] = ext_call.return_data[0]
                                    require ext_code.size(stor18)
                                    call stor18.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(stor16.field_0), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Approve failed'
                                    if ext_call.return_data[0]:
                                        mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 735] = tokenAddress
                                        require ext_code.size(address(stor16.field_8))
                                        staticcall address(stor16.field_8).WAVAX() with:
                                                gas gas_remaining wei
                                        mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 799] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 767] = ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 799] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 803] = ext_call.return_data[0]
                                        idx = 0
                                        s = ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 995
                                        t = ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 735
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(stor16.field_8))
                                        call address(stor16.field_8).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 995 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
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
                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 498] = 2
                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 530] = tokenAddress
                                require ext_code.size(address(stor16.field_8))
                                staticcall address(stor16.field_8).WAVAX() with:
                                        gas gas_remaining wei
                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 594] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 562] = ext_call.return_data[12 len 20]
                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 594] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 598] = ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100
                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 662] = 160
                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 758] = 2
                                idx = 0
                                s = ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 790
                                t = ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 530
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 694] = this.address
                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 726] = block.timestamp
                                require ext_code.size(address(stor16.field_8))
                                call address(stor16.field_8).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 790 len 64]
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
                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 598] = rewardsPoolAddress
                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 630] = (ext_call.return_data[0] * stor23['rewards'] / 100) - (ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100)
                                require ext_code.size(stor18)
                                call stor18.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args rewardsPoolAddress, (ext_call.return_data[0] * stor23['rewards'] / 100) - (ext_call.return_data[0] * stor23['rewards'] / 100 * stor23[('name', 'stor7277', 125856827007344)] / 100), mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 662 len 5 * ceil32(return_data.size)]
                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 594] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 594] = 13
                                mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 626] = 0x6c6971756964697479506f6f6c00000000000000000000000000000000000000
                                mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 690] = 0x6c6971756964697479506f6f6c00000000000000000000000000000000000000
                                mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 703] = 0
                                mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 658] = (8 * ceil32(return_data.size)) + 13
                                mem[0] = sha3(0, mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 703 len 9 * ceil32(return_data.size)])
                                mem[32] = 23
                                _35971 = sha3(sha3(0, mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 703 len 9 * ceil32(return_data.size)]), 23)
                                if ext_call.return_data[0] and stor23[0][mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 703 len 9 * ceil32(return_data.size)]] > -1 / ext_call.return_data[0]:
                                    revert with 0, 17
                                if ext_call.return_data[0] * stor23[0][mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 703 len 9 * ceil32(return_data.size)]] / 100 < ext_call.return_data[0] * stor23[0][mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 703 len 9 * ceil32(return_data.size)]] / 100 / 2:
                                    revert with 0, 17
                                mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 707] = address(stor16.field_8)
                                mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 739] = ext_call.return_data[0] * stor23[mem[0]] / 100 / 2
                                require ext_code.size(stor18)
                                call stor18.approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(stor16.field_0), ext_call.return_data[0] * stor23[mem[0]] / 100 / 2
                                mem[ceil32(ceil32(arg1.length)) + (12 * ceil32(return_data.size)) + 703] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Approve failed'
                                if not Mask(255, 1, ext_call.return_data[0] * stor23[mem[0]] / 100):
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    require ext_code.size(stor18)
                                    call stor18.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(stor16.field_0), (ext_call.return_data[0] * stor23[mem[0]] / 100) - (ext_call.return_data[0] * stor23[mem[0]] / 100 / 2)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Approve failed'
                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 771] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 803] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 835] = rewardsPoolAddress
                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 867] = block.timestamp
                                    require ext_code.size(address(stor16.field_8))
                                    call address(stor16.field_8).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args tokenAddress, (ext_call.return_data[0] * stor23[mem[0]] / 100) - (ext_call.return_data[0] * stor23[mem[0]] / 100 / 2), 0, 0, rewardsPoolAddress, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 96
                                    mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 767] = (ext_call.return_data[0] * stor23[mem[0]] / 100) - (ext_call.return_data[0] * stor23[mem[0]] / 100 / 2)
                                    emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] * stor23[mem[0]] / 100), 0, (ext_call.return_data[0] * stor23[mem[0]] / 100) - (ext_call.return_data[0] * stor23[mem[0]] / 100 / 2));
                                    require ext_code.size(stor18)
                                    staticcall stor18.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 739] = ext_call.return_data[0]
                                    require ext_code.size(stor18)
                                    call stor18.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(stor16.field_0), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not ext_call.return_data[0]:
                                        revert with 0, 'Approve failed'
                                    if ext_call.return_data[0]:
                                        mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 735] = tokenAddress
                                        require ext_code.size(address(stor16.field_8))
                                        staticcall address(stor16.field_8).WAVAX() with:
                                                gas gas_remaining wei
                                        mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 799] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 767] = ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 799] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 803] = ext_call.return_data[0]
                                        idx = 0
                                        s = ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 995
                                        t = ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 735
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(stor16.field_8))
                                        call address(stor16.field_8).swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 995 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
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
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 703] = 2
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 735] = tokenAddress
                                    require ext_code.size(address(stor16.field_8))
                                    staticcall address(stor16.field_8).WAVAX() with:
                                            gas gas_remaining wei
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 799] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 799
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 767] = ext_call.return_data[12 len 20]
                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 799] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 803] = ext_call.return_data[0] * stor23[mem[0]] / 100 / 2
                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 835] = 0
                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 867] = 160
                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 963] = 2
                                    idx = 0
                                    s = ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 995
                                    t = ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 735
                                    while idx < mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 703]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 899] = this.address
                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 931] = block.timestamp
                                    require ext_code.size(address(stor16.field_8))
                                    call address(stor16.field_8).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + (32 * mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 703]) + -mem[64] + 991]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    mem[mem[64] + 4] = address(stor16.field_8)
                                    mem[mem[64] + 36] = (ext_call.return_data[0] * stor23[mem[0]] / 100) - (ext_call.return_data[0] * stor23[mem[0]] / 100 / 2)
                                    require ext_code.size(stor18)
                                    call stor18.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(stor16.field_0), (ext_call.return_data[0] * stor23[mem[0]] / 100) - (ext_call.return_data[0] * stor23[mem[0]] / 100 / 2)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _40787 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_40787] == bool(mem[_40787])
                                    if not mem[_40787]:
                                        revert with 0, 'Approve failed'
                                    mem[mem[64] + 68] = 0
                                    mem[mem[64] + 100] = 0
                                    mem[mem[64] + 132] = rewardsPoolAddress
                                    mem[mem[64] + 164] = block.timestamp
                                    require ext_code.size(address(stor16.field_8))
                                    call address(stor16.field_8).addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                         gas gas_remaining wei
                                        args tokenAddress, (ext_call.return_data[0] * stor23[mem[0]] / 100) - (ext_call.return_data[0] * stor23[mem[0]] / 100 / 2), 0, 0, rewardsPoolAddress, block.timestamp
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 96
                                    mem[mem[64]] = ext_call.return_data[0] * stor23[mem[0]] / 100 / 2
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 64] = (ext_call.return_data[0] * stor[_35971] / 100) - (ext_call.return_data[0] * stor[_35971] / 100 / 2)
                                    emit SwapAndLiquify(mem[mem[64]], 0, (ext_call.return_data[0] * stor[_35971] / 100) - (ext_call.return_data[0] * stor[_35971] / 100 / 2));
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor18)
                                    staticcall stor18.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _41251 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _41267 = mem[_41251]
                                    mem[mem[64] + 4] = address(stor16.field_8)
                                    mem[mem[64] + 36] = _41267
                                    require ext_code.size(stor18)
                                    call stor18.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(stor16.field_0), _41267
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _41315 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_41315] == bool(mem[_41315])
                                    if not mem[_41315]:
                                        revert with 0, 'Approve failed'
                                    if not _41267:
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
                                        _41507 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_41507] == bool(mem[_41507])
                                    else:
                                        _41393 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        mem[_41393 + 32 len 64] = call.data[calldata.size len 64]
                                        if not mem[_41393]:
                                            revert with 0, 50
                                        mem[_41393 + 32] = tokenAddress
                                        require ext_code.size(address(stor16.field_8))
                                        staticcall address(stor16.field_8).WAVAX() with:
                                                gas gas_remaining wei
                                        mem[_41393 + 96] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _41393 + ceil32(return_data.size) + 96
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if 1 >= mem[_41393]:
                                            revert with 0, 50
                                        mem[_41393 + 64] = ext_call.return_data[12 len 20]
                                        mem[_41393 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[_41393 + ceil32(return_data.size) + 100] = _41267
                                        mem[_41393 + ceil32(return_data.size) + 132] = 0
                                        mem[_41393 + ceil32(return_data.size) + 164] = 160
                                        mem[_41393 + ceil32(return_data.size) + 260] = mem[_41393]
                                        idx = 0
                                        s = _41393 + ceil32(return_data.size) + 292
                                        t = _41393 + 32
                                        while idx < mem[_41393]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_41393 + ceil32(return_data.size) + 196] = this.address
                                        mem[_41393 + ceil32(return_data.size) + 228] = block.timestamp
                                        require ext_code.size(address(stor16.field_8))
                                        call address(stor16.field_8).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _41393 + ceil32(return_data.size) + (32 * mem[_41393]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
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
                                        _42099 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_42099] == bool(mem[_42099])
                                    mem[mem[64]] = 0x9021973200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = 96
                                    mem[mem[64] + 100] = mem[96]
                                    mem[mem[64] + 132 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                                    if ceil32(mem[96]) > mem[96]:
                                        mem[mem[64] + mem[96] + 132] = 0
                                    require ext_code.size(stor17)
                                    call stor17.0x90219732 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=mem[96], data=mem[mem[64] + 132 len ceil32(mem[96])]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
