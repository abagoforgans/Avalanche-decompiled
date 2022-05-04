contract main {




// =====================  Runtime code  =====================


#
#  - allocate()
#  - transferToken(address arg1, address arg2, uint256 arg3)
#  - _fallback()
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
address podAddress;
address stor102;
address stor103;
address stor104;
address stor105;
address stor106;
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
mapping of address stor118;
array of address stor11591756326471999264895421442065030704299572019615264954066775150057963321363;
array of address stor69906322783795604316746119018710703531583142191673713777338657051469223861738;
array of address stor101310722891038750429752619310726059395648923873577493455403504309557998731233;
array of address stor111996671338791781291582287523793567344508255320483065919810498665837663289426;

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
    storDFFB[stor114.length] = arg1
}

function addLPToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot add a LP token with zero address'
    lpTokens.length++
    stor19A0[stor116.length] = arg1
}

function addYakStrat(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot add a yakStrat with zero address'
    yakStrats.length++
    storF79B[stor115.length] = arg1
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
    stor9A8D[stor117.length] = arg1
    stor118[address(arg1)] = arg2
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

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7, address arg8, address arg9) {
    require calldata.size - 4 >= 288
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == arg8
    require arg9 == arg9
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
            else:
                uint16(stor0.field_0) = 257
                uint8(stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                else:
                    uint16(stor0.field_0) = 257
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    uint8(stor0.field_8) = 0
    if not arg1:
        revert with 0, 'Pod cannot be zero address'
    if not arg2:
        revert with 0, 'ORCA cannot be zero address'
    if not arg3:
        revert with 0, 'WAVAX cannot be zero address'
    if not arg4:
        revert with 0, 'USDC cannot be zero address'
    if not arg5:
        revert with 0, 'Seafund cannot be zero address'
    if not arg6:
        revert with 0, 'Treasury cannot be zero address'
    if not arg7:
        revert with 0, 'Dev cannot be zero address'
    if not arg8:
        revert with 0, 'ORCA LP cannot be zero address'
    if not arg9:
        revert with 0, 'USDC LP cannot be zero address'
    podAddress = arg1
    stor102 = arg2
    stor103 = arg3
    stor104 = arg4
    seafundAddress = arg5
    treasuryAddress = arg6
    devAddress = arg7
    devAmount = 500
    seafundAmount = 1500
    treasuryAmount = 4000
    podAmount = 4000
    stor105 = arg8
    stor106 = arg9
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}



}
