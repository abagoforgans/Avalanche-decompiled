contract main {




// =====================  Runtime code  =====================


#
#  - removeBank(uint256 arg1)
#  - removeLPToken(uint256 arg1)
#  - allocate()
#  - removeYakStrat(uint256 arg1)
#  - transferToken(address arg1, address arg2, uint256 arg3)
#  - _fallback()
#
address owner;
address podAddress;
address seafundAddress;
address treasuryAddress;
address devAddress;
uint256 treasuryAmount;
uint256 devAmount;
uint256 seafundAmount;
uint256 podAmount;
array of address banks;
array of address yakStrats;
array of address lpTokens;
array of address tokens;
mapping of address swapLPs;

function banks(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < banks.length
    return banks[arg1]
}

function getLPTokens() {
    return lpTokens.length
}

function getYakCount() {
    return yakStrats.length
}

function lpTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < lpTokens.length
    return lpTokens[arg1]
}

function devAmount() {
    return devAmount
}

function getBankCount() {
    return banks.length
}

function treasuryAmount() {
    return treasuryAmount
}

function seafundAmount() {
    return seafundAmount
}

function tokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < tokens.length
    return tokens[arg1]
}

function treasury() {
    return treasuryAddress
}

function yakStrats(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < yakStrats.length
    return yakStrats[arg1]
}

function owner() {
    return owner
}

function dev() {
    return devAddress
}

function pod() {
    return podAddress
}

function getTokens() {
    return tokens.length
}

function seafund() {
    return seafundAddress
}

function podAmount() {
    return podAmount
}

function swapLPs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return swapLPs[arg1]
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function changeDev(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0, 'Dev cannot be zero address'
    devAddress = arg1
}

function changeSeafund(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0, 'Seafund cannot be zero address'
    seafundAddress = arg1
}

function changeTreasury(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0, 'Treasury cannot be zero address'
    treasuryAddress = arg1
}

function transferAvax(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'failed to send avax'
}

function addBank(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot add a bank with zero address'
    banks.length++
    banks[banks.length] = arg1
}

function addLPToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot add a LP token with zero address'
    lpTokens.length++
    lpTokens[lpTokens.length] = arg1
}

function addYakStrat(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot add a yakStrat with zero address'
    yakStrats.length++
    yakStrats[yakStrats.length] = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function replaceSwapLP(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not swapLPs[address(arg1)]:
        revert with 0, 'Swap does not exist'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot add a LP token with zero address'
    swapLPs[address(arg1)] = arg2
}

function changeDistributionRatio(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg1 + arg2 + arg3 > !arg4:
        revert with 0, 17
    if arg1 + arg2 + arg3 + arg4 != 10000:
        revert with 0, 'Must add up to 10000'
    treasuryAmount = arg1
    devAmount = arg2
    seafundAmount = arg3
    podAmount = arg4
}

function addSwapLP(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot add a token with zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot add a LP token with zero address'
    tokens.length++
    tokens[tokens.length] = arg1
    swapLPs[address(arg1)] = arg2
}

function transferBankVault(uint256 arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if arg1 >= banks.length:
        revert with 0, 'Bank does not exist'
    if not arg3:
        revert with 0, 'Cannot transfer to zero address'
    if arg1 >= banks.length:
        revert with 0, 50
    require ext_code.size(banks[arg1])
    call banks[arg1].transferVault(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
