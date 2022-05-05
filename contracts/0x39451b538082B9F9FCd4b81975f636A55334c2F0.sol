contract main {




// =====================  Runtime code  =====================


#
#  - addToken(uint256 arg1)
#
address owner;
address sub_75bba010Address;
uint256 startBlock;
uint256 endBlock;
uint256 sub_cc1b708e;
uint256 ethTotal;
address treasuryAddress;
mapping of uint256 amountDeposited;
mapping of uint8 stor8;

function endBlock() {
    return endBlock
}

function ethTotal() {
    return ethTotal
}

function startBlock() {
    return startBlock
}

function treasury() {
    return treasuryAddress
}

function sub_75bba010(?) {
    return sub_75bba010Address
}

function owner() {
    return owner
}

function hasCollected(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[arg1])
}

function sub_cc1b708e(?) {
    return sub_cc1b708e
}

function amountDeposited(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return amountDeposited[arg1]
}

function sub_4138d37e(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    endBlock = block.number
}

function sub_ecb3609e(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    startBlock = block.number
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function updateEndBlock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    endBlock = arg1
}

function updateStartBlock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    startBlock = arg1
}

function updateTreasury(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = arg1
}

function getPrice() {
    if ethTotal > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not sub_cc1b708e:
        revert with 0, 18
    return (10^18 * ethTotal / sub_cc1b708e)
}

function sendEthToTreasury() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call treasuryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function _fallback() payable {
    if block.number < startBlock:
        revert with 0, 'PBC not started'
    if msg.value <= 0:
        revert with 0, 'No eth sent'
    if block.number >= endBlock:
        revert with 0, 'PBC ended'
    if amountDeposited[msg.sender] > !msg.value:
        revert with 0, 17
    amountDeposited[msg.sender] += msg.value
    if ethTotal > !msg.value:
        revert with 0, 17
    ethTotal += msg.value
    emit Contributed(msg.value, msg.sender);
}

function contribute() payable {
    if block.number < startBlock:
        revert with 0, 'PBC not started'
    if msg.value <= 0:
        revert with 0, 'No eth sent'
    if block.number >= endBlock:
        revert with 0, 'PBC ended'
    if amountDeposited[msg.sender] > !msg.value:
        revert with 0, 17
    amountDeposited[msg.sender] += msg.value
    if ethTotal > !msg.value:
        revert with 0, 17
    ethTotal += msg.value
    emit Contributed(msg.value, msg.sender);
}

function sub_70b1a5ef(?) {
    if block.number >= endBlock:
        revert with 0, 'PBC Ended'
    if not amountDeposited[msg.sender]:
        revert with 0, 'Address did not contribute'
    amountDeposited[msg.sender] = 0
    stor8[msg.sender] = 0
    if ethTotal < amountDeposited[msg.sender]:
        revert with 0, 17
    ethTotal -= amountDeposited[msg.sender]
    call msg.sender with:
       value amountDeposited[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function collect() {
    if block.number <= endBlock:
        revert with 0, 'PBC not ended'
    if stor8[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Address already collected its reward'
    if not amountDeposited[msg.sender]:
        revert with 0, 'Address did not contribute'
    stor8[msg.sender] = 1
    if amountDeposited[msg.sender] > 0x119799812dea11197f27f0f6e885c8ba7eb31f476caf7411a863387:
        revert with 0, 17
    if not ethTotal:
        revert with 0, 18
    if sub_cc1b708e and 10^12 * amountDeposited[msg.sender] / ethTotal > -1 / sub_cc1b708e:
        revert with 0, 17
    mem[100] = this.address
    require ext_code.size(sub_75bba010Address)
    staticcall sub_75bba010Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = msg.sender
    if sub_cc1b708e * 10^12 * amountDeposited[msg.sender] / ethTotal / 10^12 <= ext_call.return_data[0]:
        mem[ceil32(return_data.size) + 164] = sub_cc1b708e * 10^12 * amountDeposited[msg.sender] / ethTotal / 10^12
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_75bba010Address):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, sub_cc1b708e * 10^12 * amountDeposited[msg.sender] / ethTotal / 10^12, 0
        mem[ceil32(return_data.size) + 328] = 0
        call sub_75bba010Address with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, sub_cc1b708e * 10^12 * amountDeposited[msg.sender] / ethTotal / 10^12, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, sub_cc1b708e * 10^12 * amountDeposited[msg.sender] / ethTotal / 10^12, 0) << 288)
    else:
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(sub_75bba010Address):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 328] = 0
        call sub_75bba010Address with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
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
    emit Collected((sub_cc1b708e * 10^12 * amountDeposited[msg.sender] / ethTotal / 10^12), msg.sender);
}



}
