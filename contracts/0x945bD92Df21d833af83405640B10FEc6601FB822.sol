contract main {




// =====================  Runtime code  =====================


address owner;
address sub_9c69853cAddress;
address sub_13c64ebfAddress;
uint256 tokenRatePerEth;
uint256 sub_0a5a024f;
uint256 sub_e4837ca8;
uint256 sub_96efbd4c;
uint256 hardCap;
uint256 sub_a3fbc21b;
uint256 sub_eb8c5b6c;
uint256 startTime;
uint256 endTime;
uint256 sub_72d7070b;
uint8 stor13;
uint256 stor13;
mapping of uint8 stor14;
mapping of uint256 usersInvestments;

function sub_0a5a024f(?) {
    return sub_0a5a024f
}

function sub_13c64ebf(?) {
    return sub_13c64ebfAddress
}

function endTime() {
    return endTime
}

function sub_72d7070b(?) {
    return sub_72d7070b
}

function startTime() {
    return startTime
}

function contractPaused() {
    return bool(uint8(stor13))
}

function owner() {
    return owner
}

function usersInvestments(address arg1) {
    require calldata.size - 4 >= 32
    return usersInvestments[arg1]
}

function sub_96efbd4c(?) {
    return sub_96efbd4c
}

function sub_9c69853c(?) {
    return sub_9c69853cAddress
}

function sub_a3fbc21b(?) {
    return sub_a3fbc21b
}

function sub_e4837ca8(?) {
    return sub_e4837ca8
}

function tokenRatePerEth() {
    return tokenRatePerEth
}

function sub_eb8c5b6c(?) {
    return sub_eb8c5b6c
}

function whiteListed(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor14[arg1])
}

function hardCap() {
    return hardCap
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

function setMinEthLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e4837ca8 = arg1
}

function setMaxEthLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_96efbd4c = arg1
}

function addWhiteList(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor14[address(arg1)] = 1
}

function setRecipient(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_13c64ebfAddress = arg1
}

function removeWhiteList(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor14[address(arg1)] = 0
}

function sub_efb29dd6(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenRatePerEth = arg1
    sub_0a5a024f = arg2
}

function setPresaleToken(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    sub_9c69853cAddress = arg1
}

function togglePause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor13) = not bool(uint8(stor13)) or Mask(248, 8, uint256(stor13))
    return bool(uint8(stor13))
}

function sub_22bb5cf0(?) {
    require calldata.size - 4 >= 32
    if usersInvestments[address(arg1)] > sub_96efbd4c:
        revert with 0, 'SafeMath: subtraction overflow'
    return (sub_96efbd4c - usersInvestments[address(arg1)])
}

function setStartTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= block.timestamp:
        revert with 0, 'past timestamp'
    startTime = arg1
}

function setEndTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= startTime:
        revert with 0, 'should be bigger than start time'
    endTime = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_73d6f385(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 14
        stor14[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        idx = idx + 1
        continue 
}

function sub_2ae2db4e(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp <= endTime + (240 * 24 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0xfe596f752063616e6e6f742067657420746f6b656e7320756e74696c207468652070726573616c6520697320636c6f736564,
                    mem[214 len 14]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function deposit() payable {
    if uint8(stor13):
        revert with 0, 'contract is paused'
    if block.timestamp <= startTime:
        revert with 0, 'Sale has not started'
    if startTime + sub_72d7070b < startTime:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp < startTime + sub_72d7070b:
        if not stor14[address(msg.sender)]:
            revert with 0, 'Private sale'
    if block.timestamp >= endTime:
        revert with 0, 'Sale has ended'
    if sub_a3fbc21b > hardCap:
        revert with 0, 'HardCap exceeded'
    if usersInvestments[address(msg.sender)] + msg.value < usersInvestments[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    if usersInvestments[address(msg.sender)] + msg.value > sub_96efbd4c:
        revert with 0, 'Installment Invalid.'
    if usersInvestments[address(msg.sender)] + msg.value < usersInvestments[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    if usersInvestments[address(msg.sender)] + msg.value < sub_e4837ca8:
        revert with 0, 'Installment Invalid.'
    if startTime + sub_72d7070b < startTime:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(sub_9c69853cAddress)
    staticcall sub_9c69853cAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[31 len 1] > 18:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp <= startTime + sub_72d7070b:
        if not msg.value:
            if 10^(-ext_call.return_data[31 len 1] + 18) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 10^(-ext_call.return_data[31 len 1] + 18)
            require ext_code.size(sub_9c69853cAddress)
            call sub_9c69853cAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            41,
                            0x73496e73756666696369656e742062616c616e6365206f662070726573616c6520636f6e7472616374,
                            mem[205 len 23]
            if sub_a3fbc21b + msg.value < sub_a3fbc21b:
                revert with 0, 'SafeMath: addition overflow'
            sub_a3fbc21b += msg.value
            if sub_eb8c5b6c + (0 / 10^(-uint8(ext_call.return_data[0]) + 18)) < sub_eb8c5b6c:
                revert with 0, 'SafeMath: addition overflow'
            sub_eb8c5b6c += 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
        else:
            require msg.value
            if msg.value * sub_0a5a024f / msg.value != sub_0a5a024f:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 10^(-ext_call.return_data[31 len 1] + 18) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 10^(-ext_call.return_data[31 len 1] + 18)
            require ext_code.size(sub_9c69853cAddress)
            call sub_9c69853cAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, msg.value * sub_0a5a024f / 10^(-uint8(ext_call.return_data[0]) + 18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            41,
                            0x73496e73756666696369656e742062616c616e6365206f662070726573616c6520636f6e7472616374,
                            mem[205 len 23]
            if sub_a3fbc21b + msg.value < sub_a3fbc21b:
                revert with 0, 'SafeMath: addition overflow'
            sub_a3fbc21b += msg.value
            if sub_eb8c5b6c + (msg.value * sub_0a5a024f / 10^(-uint8(ext_call.return_data[0]) + 18)) < sub_eb8c5b6c:
                revert with 0, 'SafeMath: addition overflow'
            sub_eb8c5b6c += msg.value * sub_0a5a024f / 10^(-uint8(ext_call.return_data[0]) + 18)
    else:
        if not msg.value:
            if 10^(-ext_call.return_data[31 len 1] + 18) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 10^(-ext_call.return_data[31 len 1] + 18)
            require ext_code.size(sub_9c69853cAddress)
            call sub_9c69853cAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            41,
                            0x73496e73756666696369656e742062616c616e6365206f662070726573616c6520636f6e7472616374,
                            mem[205 len 23]
            if sub_a3fbc21b + msg.value < sub_a3fbc21b:
                revert with 0, 'SafeMath: addition overflow'
            sub_a3fbc21b += msg.value
            if sub_eb8c5b6c + (0 / 10^(-uint8(ext_call.return_data[0]) + 18)) < sub_eb8c5b6c:
                revert with 0, 'SafeMath: addition overflow'
            sub_eb8c5b6c += 0 / 10^(-uint8(ext_call.return_data[0]) + 18)
        else:
            require msg.value
            if msg.value * tokenRatePerEth / msg.value != tokenRatePerEth:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x21536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 10^(-ext_call.return_data[31 len 1] + 18) <= 0:
                revert with 0, 'SafeMath: division by zero'
            require 10^(-ext_call.return_data[31 len 1] + 18)
            require ext_code.size(sub_9c69853cAddress)
            call sub_9c69853cAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, msg.value * tokenRatePerEth / 10^(-uint8(ext_call.return_data[0]) + 18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            41,
                            0x73496e73756666696369656e742062616c616e6365206f662070726573616c6520636f6e7472616374,
                            mem[205 len 23]
            if sub_a3fbc21b + msg.value < sub_a3fbc21b:
                revert with 0, 'SafeMath: addition overflow'
            sub_a3fbc21b += msg.value
            if sub_eb8c5b6c + (msg.value * tokenRatePerEth / 10^(-uint8(ext_call.return_data[0]) + 18)) < sub_eb8c5b6c:
                revert with 0, 'SafeMath: addition overflow'
            sub_eb8c5b6c += msg.value * tokenRatePerEth / 10^(-uint8(ext_call.return_data[0]) + 18)
    if usersInvestments[address(msg.sender)] + msg.value < usersInvestments[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    usersInvestments[address(msg.sender)] += msg.value
    call sub_13c64ebfAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
