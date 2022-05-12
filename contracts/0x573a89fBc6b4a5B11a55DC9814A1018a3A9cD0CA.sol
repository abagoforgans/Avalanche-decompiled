contract main {




// =====================  Runtime code  =====================


#
#  - withdrawReserve(address arg1, uint256 arg2)
#  - repay(address arg1, uint256 arg2)
#  - addBank(address arg1, address arg2)
#  - transmit(address arg1, uint256 arg2)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address governorAddress; offset 16
uint256 stor0; offset 16
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor4;
uint256 _GENERAL_LOCK;
uint256 _IN_EXEC_LOCK;
uint256 POSITION_ID;
uint8 stor133;
address stor133; offset 8
address SPELLAddress;
address casterAddress;
address oracleAddress;
uint256 feeBps;
uint256 nextPositionId;
array of address allBanks;
mapping of struct banks;
mapping of uint8 stor140;
mapping of struct currentPositionInfo;
uint8 sub_d2ffc9f3;
mapping of uint8 stor143;
mapping of uint8 stor144;
mapping of uint8 stor145;
bool allowBorrowStatus;
uint256 sub_0e5641e6;
mapping of uint256 sub_c89be3d9;
mapping of uint256 sub_85986a0e;
mapping of uint8 stor149;
address workerAddress;

function governor() {
    return governorAddress
}

function sub_0e5641e6(?) {
    return uint256(sub_0e5641e6)
}

function feeBps() {
    return feeBps
}

function cTokenInBank(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor140[arg1])
}

function allowBorrowStatus() {
    return bool(bool(allowBorrowStatus))
}

function worker() {
    return workerAddress
}

function getPositionInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    return currentPositionInfo[arg1].field_0, 
           currentPositionInfo[arg1].field_256,
           currentPositionInfo[arg1].field_512,
           currentPositionInfo[arg1].field_768
}

function EXECUTOR() {
    if POSITION_ID == -1:
        revert with 0, 'not under execution'
    return currentPositionInfo[stor132].field_0
}

function sub_6fe4d411(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor149[arg1])
}

function SPELL() {
    return SPELLAddress
}

function getBankInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(banks[address(arg1)].field_0), 
           banks[address(arg1)].field_0,
           banks[address(arg1)].field_256,
           banks[address(arg1)].field_512,
           banks[address(arg1)].field_768
}

function oracle() {
    return oracleAddress
}

function banks(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(banks[arg1].field_0), 
           banks[arg1].field_0,
           banks[arg1].field_0,
           banks[arg1].field_256,
           banks[arg1].field_512,
           banks[arg1].field_768
}

function sub_85986a0e(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_85986a0e[arg1][arg2]
}

function sub_86c0dc88(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor144[arg1])
}

function nextPositionId() {
    return nextPositionId
}

function caster() {
    return casterAddress
}

function positions(uint256 arg1) {
    require calldata.size - 4 >= 32
    return currentPositionInfo[arg1].field_0, 
           currentPositionInfo[arg1].field_256,
           currentPositionInfo[arg1].field_512,
           currentPositionInfo[arg1].field_768,
           currentPositionInfo[arg1].field_1024
}

function sub_c89be3d9(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_c89be3d9[arg1][arg2]
}

function _IN_EXEC_LOCK() {
    return _IN_EXEC_LOCK
}

function _GENERAL_LOCK() {
    return _GENERAL_LOCK
}

function sub_d2ffc9f3(?) {
    return bool(sub_d2ffc9f3)
}

function getPositionDebtShareOf(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return currentPositionInfo[arg1][5][address(arg2)].field_0
}

function POSITION_ID() {
    return POSITION_ID
}

function whitelistedTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor143[arg1])
}

function allBanks(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < allBanks.length
    return allBanks[arg1]
}

function pendingGovernor() {
    return address(stor1.length)
}

function sub_f621cc48(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor145[arg1])
}

function getCurrentPositionInfo() {
    if POSITION_ID == -1:
        revert with 0, 'no id'
    return currentPositionInfo[stor132].field_0, 
           currentPositionInfo[stor132].field_256,
           currentPositionInfo[stor132].field_512,
           currentPositionInfo[stor132].field_768
}

function _fallback() payable {
    revert
}

function allowRepayStatus() {
    return bool(Mask(1, 1, uint256(sub_0e5641e6)))
}

function setBankStatus(uint256 arg1) {
    require calldata.size - 4 >= 32
    if governorAddress != msg.sender:
        revert with 0, 'not the governor'
    uint256(sub_0e5641e6) = arg1
}

function setAllowContractCalls(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governorAddress != msg.sender:
        revert with 0, 'not the governor'
    sub_d2ffc9f3 = uint8(arg1)
}

function setWorker(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governorAddress != msg.sender:
        revert with 0, 'not the governor'
    workerAddress = arg1
    emit SetWorker(arg1);
}

function acceptGovernor() {
    if address(stor1.length) != msg.sender:
        revert with 0, 'not the pending governor'
    address(stor1.length) = 0
    Mask(240, 0, stor0.field_16) = Mask(240, 0, msg.sender)
    emit AcceptGovernor(msg.sender);
}

function setPendingGovernor(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governorAddress != msg.sender:
        revert with 0, 'not the governor'
    address(stor1.length) = arg1
    emit SetPendingGovernor(arg1);
}

function setFeeBps(uint256 arg1) {
    require calldata.size - 4 >= 32
    if governorAddress != msg.sender:
        revert with 0, 'not the governor'
    if arg1 > 10000:
        revert with 0, 'fee too high'
    feeBps = arg1
    emit SetFeeBps(arg1);
}

function setOracle(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governorAddress != msg.sender:
        revert with 0, 'not the governor'
    if not arg1:
        revert with 0, 'cannot set zero address oracle'
    oracleAddress = arg1
    emit SetOracle(arg1);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x4e2312e000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function support(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0xe660cc08 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function getCollateralETHValue(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not currentPositionInfo[arg1].field_768:
        return 0
    if not currentPositionInfo[arg1].field_256:
        revert with 0, 'bad collateral token'
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.asETHCollateral(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
            gas gas_remaining wei
           args 0, currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, currentPositionInfo[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function borrowBalanceStored(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not currentPositionInfo[arg1][5][address(arg2)].field_0:
        return 0
    if not banks[address(arg2)].field_512:
        return 0
    if currentPositionInfo[arg1][5][address(arg2)].field_0 and banks[address(arg2)].field_512 > -1 / currentPositionInfo[arg1][5][address(arg2)].field_0:
        revert with 0, 17
    if not banks[address(arg2)].field_768:
        revert with 0, 18
    if not banks[address(arg2)].field_768:
        revert with 0, 18
    if not currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 % banks[address(arg2)].field_768:
        if currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768 > -1:
            revert with 0, 17
        return (currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768)
    if currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768 > -2:
        revert with 0, 17
    return ((currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768) + 1)
}

function sub_4df890f6(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if governorAddress != msg.sender:
        revert with 0, 'not the governor'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'spells & statuses length mismatched'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[36] + 36)] == bool(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 144
        stor144[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[((32 * idx) + cd[36] + 36)]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function takeCollateral(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if POSITION_ID == -1:
        revert with 0, 'not within execution'
    if SPELLAddress != msg.sender:
        revert with 0, 'not from spell'
    if _IN_EXEC_LOCK != 1:
        revert with 0, 'in exec lock'
    _IN_EXEC_LOCK = 2
    if currentPositionInfo[stor132].field_256 != arg1:
        revert with 0, 'invalid collateral token'
    if arg2 != currentPositionInfo[stor132].field_512:
        revert with 0, 'invalid collateral token'
    if arg3 != -1:
        if currentPositionInfo[stor132].field_768 < arg3:
            revert with 0, 17
        currentPositionInfo[stor132].field_768 -= arg3
        require ext_code.size(arg1)
        call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args 0, 0, msg.sender, arg2, arg3, 160, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit TakeCollateral(POSITION_ID, msg.sender, address(arg1), arg2, arg3);
    else:
        if currentPositionInfo[stor132].field_768 < currentPositionInfo[stor132].field_768:
            revert with 0, 17
        currentPositionInfo[stor132].field_768 = 0
        require ext_code.size(arg1)
        call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args 0, 0, msg.sender, arg2, currentPositionInfo[stor132].field_768, 160, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit TakeCollateral(POSITION_ID, msg.sender, address(arg1), arg2, currentPositionInfo[stor132].field_768);
    _IN_EXEC_LOCK = 1
}

function initialize(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if uint8(stor0.field_8):
        Mask(240, 0, stor0.field_16) = Mask(240, 0, msg.sender)
        address(stor1.length) = 0
        emit SetGovernor(msg.sender);
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            Mask(240, 0, stor0.field_16) = Mask(240, 0, msg.sender)
            address(stor1.length) = 0
            emit SetGovernor(msg.sender);
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                Mask(240, 0, stor0.field_16) = Mask(240, 0, msg.sender)
                address(stor1.length) = 0
                emit SetGovernor(msg.sender);
            else:
                uint16(stor0.field_0) = 257
                Mask(240, 0, stor0.field_16) = Mask(240, 0, msg.sender)
                address(stor1.length) = 0
                emit SetGovernor(msg.sender);
                uint8(stor0.field_8) = 0
    _GENERAL_LOCK = 1
    _IN_EXEC_LOCK = 1
    POSITION_ID = -1
    uint8(stor133.field_0) = 1
    Mask(152, 0, stor133.field_8) = 0
    create contract with 0 wei
                    code: code.data[20042 len 492]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    casterAddress = address(create.new_address)
    oracleAddress = arg1
    if not arg1:
        revert with 0, 'bad oracle address'
    feeBps = arg2
    nextPositionId = 1
    uint256(sub_0e5641e6) = 3
    emit SetOracle(arg1);
    emit SetFeeBps(arg2);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_055f42e1(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (96 * ('cd', 4).length) + 36 <= calldata.size
    if governorAddress != msg.sender:
        revert with 0, 'not the governor'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((96 * idx) + cd[4] + 36)] == address(cd[((96 * idx) + cd[4] + 36)])
        if not ext_code.size(cd[((96 * idx) + cd[4] + 36)]):
            revert with 0, '!contract'
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((96 * idx) + cd[4] + 36)] == address(cd[((96 * idx) + cd[4] + 36)])
        if not stor145[address(cd[((96 * idx) + cd[4] + 36)])]:
            revert with 0, '!whitelisted user'
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
        if not banks[address(cd[((96 * idx) + cd[4] + 68)])].field_0:
            revert with 0, 'bank not exist'
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((96 * idx) + cd[4] + 36)] == address(cd[((96 * idx) + cd[4] + 36)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
        mem[0] = address(cd[((96 * idx) + cd[4] + 68)])
        mem[32] = sha3(address(cd[((96 * idx) + cd[4] + 36)]), 147)
        sub_c89be3d9[address(cd[((96 * idx) + cd[4] + 36)])][address(cd[((96 * idx) + cd[4] + 68)])] = cd[((96 * idx) + cd[4] + 100)]
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((96 * idx) + cd[4] + 68)] == address(cd[((96 * idx) + cd[4] + 68)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((96 * idx) + cd[4] + 36)] == address(cd[((96 * idx) + cd[4] + 36)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[96] = cd[((96 * idx) + cd[4] + 100)]
        emit 0x4ab6f136: cd[((96 * idx) + cd[4] + 100)], address(cd[((96 * idx) + cd[4] + 36)]), address(cd[((96 * idx) + cd[4] + 68)])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_331d9364(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if governorAddress != msg.sender:
        revert with 0, 'not the governor'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'tokens & statuses length mismatched'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[36] + 36)] == bool(cd[((32 * idx) + cd[36] + 36)])
        if cd[((32 * idx) + cd[36] + 36)]:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.0xe660cc08 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _15 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_15] == bool(mem[_15])
            if not mem[_15]:
                revert with 0, 'oracle not support token'
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[36] + 36)] == bool(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 143
        stor143[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[((32 * idx) + cd[36] + 36)]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function accrue(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not banks[address(arg1)].field_0:
        revert with 0, 'bank not exist'
    require ext_code.size(banks[address(arg1)].field_16)
    call banks[address(arg1)].field_16.borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= banks[address(arg1)].field_512:
        if banks[address(arg1)].field_512 != ext_call.return_data[0]:
            banks[address(arg1)].field_512 = ext_call.return_data[0]
    else:
        if ext_call.return_data[0] < banks[address(arg1)].field_512:
            revert with 0, 17
        if ext_call.return_data[0] - banks[address(arg1)].field_512 and feeBps > -1 / ext_call.return_data[0] - banks[address(arg1)].field_512:
            revert with 0, 17
        banks[address(arg1)].field_512 = ext_call.return_data[0]
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(banks[address(arg1)].field_16)
        call banks[address(arg1)].field_16.borrow(uint256 arg1) with:
             gas gas_remaining wei
            args ((ext_call.return_data[0] * feeBps) - (banks[address(arg1)].field_512 * feeBps) / 10000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'bad borrow'
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if banks[address(arg1)].field_512 > !((ext_call.return_data[0] * feeBps) - (banks[address(arg1)].field_512 * feeBps) / 10000):
            revert with 0, 17
        banks[address(arg1)].field_512 += (ext_call.return_data[0] * feeBps) - (banks[address(arg1)].field_512 * feeBps) / 10000
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 17
        if banks[address(arg1)].field_256 > !0:
            revert with 0, 17
}

function sub_a20a5906(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if governorAddress != msg.sender:
        revert with 0, 'not the governor'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'users & statuses length mismatched'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if not ext_code.size(cd[((32 * idx) + cd[4] + 36)]):
            revert with 0, '!contract'
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[36] + 36)] == bool(cd[((32 * idx) + cd[36] + 36)])
        if cd[((32 * idx) + cd[36] + 36)]:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if not stor149[address(cd[((32 * idx) + cd[4] + 36)])]:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                stor149[address(cd[((32 * idx) + cd[4] + 36)])] = 1
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
                emit 0xf8f05598: address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[36] + 36)] == bool(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 145
        stor145[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[((32 * idx) + cd[36] + 36)]))
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[36] + 36)] == bool(cd[((32 * idx) + cd[36] + 36)])
        mem[96] = bool(cd[((32 * idx) + cd[36] + 36)])
        emit 0xd1db3416: bool(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx) + cd[4] + 36)])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function getPositionDebts(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[32] = 141
    idx = currentPositionInfo[arg1].field_1024
    s = 0
    while idx:
        if not bool(idx):
            idx = uint255(idx) * 0.5
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        idx = uint255(idx) * 0.5
        s = s + 1
        continue 
    if s > test266151307():
        revert with 0, 65
    mem[96] = s
    if s:
        mem[128 len 32 * s] = call.data[calldata.size len 32 * s]
    if s > test266151307():
        revert with 0, 65
    mem[(32 * s) + 128] = s
    mem[64] = (64 * s) + 160
    if s:
        mem[(32 * s) + 160 len 32 * s] = call.data[calldata.size len 32 * s]
    t = 0
    idx = currentPositionInfo[arg1].field_1024
    u = 0
    while idx:
        if not bool(idx):
            if t == -1:
                revert with 0, 17
            t = t + 1
            idx = uint255(idx) * 0.5
            u = u
            continue 
        if t >= allBanks.length:
            revert with 0, 50
        if u >= s:
            revert with 0, 50
        mem[(32 * u) + 128] = allBanks[t]
        mem[0] = allBanks[t]
        mem[32] = sha3(arg1, 141) + 5
        if currentPositionInfo[arg1][5][stor138[t]].field_0 and banks[stor138[t]].field_512 > -1 / currentPositionInfo[arg1][5][stor138[t]].field_0:
            revert with 0, 17
        if not banks[stor138[t]].field_768:
            revert with 0, 18
        if not banks[stor138[t]].field_768:
            revert with 0, 18
        if not currentPositionInfo[arg1][5][stor138[t]].field_0 * banks[stor138[t]].field_512 % banks[stor138[t]].field_768:
            if currentPositionInfo[arg1][5][stor138[t]].field_0 * banks[stor138[t]].field_512 / banks[stor138[t]].field_768 > -1:
                revert with 0, 17
            if u >= mem[(32 * s) + 128]:
                revert with 0, 50
            mem[(32 * u) + (32 * s) + 160] = currentPositionInfo[arg1][5][stor138[t]].field_0 * banks[stor138[t]].field_512 / banks[stor138[t]].field_768
        else:
            if currentPositionInfo[arg1][5][stor138[t]].field_0 * banks[stor138[t]].field_512 / banks[stor138[t]].field_768 > -2:
                revert with 0, 17
            if u >= mem[(32 * s) + 128]:
                revert with 0, 50
            mem[(32 * u) + (32 * s) + 160] = (currentPositionInfo[arg1][5][stor138[t]].field_0 * banks[stor138[t]].field_512 / banks[stor138[t]].field_768) + 1
        if u == -1:
            revert with 0, 17
        if t == -1:
            revert with 0, 17
        t = t + 1
        idx = uint255(idx) * 0.5
        u = u + 1
        continue 
    mem[(64 * s) + 160] = 64
    mem[(64 * s) + 224] = s
    t = 0
    u = 128
    v = mem[64] + 96
    while t < s:
        mem[v] = mem[u + 12 len 20]
        t = t + 1
        u = u + 32
        v = v + 32
        continue 
    mem[(64 * s) + 192] = (32 * s) + 96
    mem[(98 * s) + 256] = mem[(32 * s) + 128]
    mem[(98 * s) + 288 len 32 * mem[(32 * s) + 128]] = mem[(32 * s) + 160 len 32 * mem[(32 * s) + 128]]
    return memory
      from mem[64]
       len (98 * s) + (32 * mem[(32 * s) + 128]) + -mem[64] + 288
}

function putCollateral(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if POSITION_ID == -1:
        revert with 0, 'not within execution'
    if SPELLAddress != msg.sender:
        revert with 0, 'not from spell'
    if _IN_EXEC_LOCK != 1:
        revert with 0, 'in exec lock'
    _IN_EXEC_LOCK = 2
    if currentPositionInfo[stor132].field_256 != arg1:
        require ext_code.size(oracleAddress)
        staticcall oracleAddress.supportWrappedToken(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'collateral not supported'
        if currentPositionInfo[stor132].field_768:
            revert with 0, 'another type of collateral already exists'
        currentPositionInfo[stor132].field_256 = arg1
        currentPositionInfo[stor132].field_512 = arg2
    else:
        if currentPositionInfo[stor132].field_512 != arg2:
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.supportWrappedToken(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'collateral not supported'
            if currentPositionInfo[stor132].field_768:
                revert with 0, 'another type of collateral already exists'
            currentPositionInfo[stor132].field_256 = arg1
            currentPositionInfo[stor132].field_512 = arg2
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2, arg3, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if currentPositionInfo[stor132].field_768 > !0:
        revert with 0, 17
    emit PutCollateral(POSITION_ID, msg.sender, address(arg1), arg2, 0);
    _IN_EXEC_LOCK = 1
}

function getBorrowETHValue(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 141
    s = 0
    idx = stor4[sha3(mem[0 len 64])]
    t = 0
    while idx:
        if not bool(idx):
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = uint255(idx) * 0.5
            t = t
            continue 
        if s >= allBanks.length:
            revert with 0, 50
        mem[0] = allBanks[s]
        mem[32] = 139
        if currentPositionInfo[arg1][5][stor138[s]].field_0 and banks[stor138[s]].field_512 > -1 / currentPositionInfo[arg1][5][stor138[s]].field_0:
            revert with 0, 17
        if not banks[stor138[s]].field_768:
            revert with 0, 18
        if not banks[stor138[s]].field_768:
            revert with 0, 18
        if not currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 % banks[stor138[s]].field_768:
            if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -1:
                revert with 0, 17
            mem[mem[64] + 4] = allBanks[s]
            mem[mem[64] + 36] = currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768
            mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                    gas gas_remaining wei
                   args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _24 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if t > !mem[_24]:
                revert with 0, 17
            if s == -1:
                revert with 0, 17
            s = s + 1
            idx = uint255(idx) * 0.5
            t = t + mem[_24]
            continue 
        if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
            revert with 0, 17
        mem[mem[64] + 4] = allBanks[s]
        mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
        mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
        require ext_code.size(oracleAddress)
        staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                gas gas_remaining wei
               args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _25 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if t > !mem[_25]:
            revert with 0, 17
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = uint255(idx) * 0.5
        t = t + mem[_25]
        continue 
    return t
}

function borrowBalanceCurrent(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not banks[address(arg2)].field_0:
        revert with 0, 'bank not exist'
    require ext_code.size(banks[address(arg2)].field_16)
    call banks[address(arg2)].field_16.borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= banks[address(arg2)].field_512:
        if banks[address(arg2)].field_512 != ext_call.return_data[0]:
            banks[address(arg2)].field_512 = ext_call.return_data[0]
    else:
        if ext_call.return_data[0] < banks[address(arg2)].field_512:
            revert with 0, 17
        if ext_call.return_data[0] - banks[address(arg2)].field_512 and feeBps > -1 / ext_call.return_data[0] - banks[address(arg2)].field_512:
            revert with 0, 17
        banks[address(arg2)].field_512 = ext_call.return_data[0]
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(banks[address(arg2)].field_16)
        call banks[address(arg2)].field_16.borrow(uint256 arg1) with:
             gas gas_remaining wei
            args ((ext_call.return_data[0] * feeBps) - (banks[address(arg2)].field_512 * feeBps) / 10000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'bad borrow'
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if banks[address(arg2)].field_512 > !((ext_call.return_data[0] * feeBps) - (banks[address(arg2)].field_512 * feeBps) / 10000):
            revert with 0, 17
        banks[address(arg2)].field_512 += (ext_call.return_data[0] * feeBps) - (banks[address(arg2)].field_512 * feeBps) / 10000
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 17
        if banks[address(arg2)].field_256 > !0:
            revert with 0, 17
    if not currentPositionInfo[arg1][5][address(arg2)].field_0:
        return 0
    if not banks[address(arg2)].field_512:
        return 0
    if currentPositionInfo[arg1][5][address(arg2)].field_0 and banks[address(arg2)].field_512 > -1 / currentPositionInfo[arg1][5][address(arg2)].field_0:
        revert with 0, 17
    if not banks[address(arg2)].field_768:
        revert with 0, 18
    if not banks[address(arg2)].field_768:
        revert with 0, 18
    if not currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 % banks[address(arg2)].field_768:
        if currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768 > -1:
            revert with 0, 17
        return (currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768)
    if currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768 > -2:
        revert with 0, 17
    return ((currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768) + 1)
}

function accrueAll(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg1.length) + 97
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    u = 32 * arg1.length
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        u = cd[s]
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        _54 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 139
        _55 = sha3(mem[(32 * idx) + 140 len 20], 139)
        if not banks[mem[(32 * idx) + 140 len 20]].field_0:
            revert with 0, 'bank not exist'
        mem[mem[64]] = 0x17bfdfbc00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        require ext_code.size(banks[mem[0]].field_16)
        call banks[mem[0]].field_16.borrowBalanceCurrent(address arg1) with:
             gas gas_remaining wei
            args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _59 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _61 = mem[_59]
        if mem[_59] <= banks[mem[0]].field_512:
            if banks[mem[0]].field_512 != mem[_59]:
                banks[mem[0]].field_512 = mem[_59]
        else:
            if mem[_59] < banks[mem[0]].field_512:
                revert with 0, 17
            if mem[_59] - banks[mem[0]].field_512 and feeBps > -1 / mem[_59] - banks[mem[0]].field_512:
                revert with 0, 17
            banks[mem[0]].field_512 = mem[_59]
            mem[0] = address(_54)
            mem[32] = 139
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_54))
            staticcall address(_54).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _65 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _66 = mem[_65]
            mem[mem[64] + 4] = (_61 * feeBps) - (stor2[_55] * feeBps) / 10000
            require ext_code.size(banks[address(_54)].field_16)
            call banks[address(_54)].field_16.borrow(uint256 arg1) with:
                 gas gas_remaining wei
                args ((_61 * feeBps) - (stor2[_55] * feeBps) / 10000)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _69 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_69]:
                revert with 0, 'bad borrow'
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_54))
            staticcall address(_54).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _75 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if banks[address(_54)].field_512 > !((_61 * feeBps) - (stor2[_55] * feeBps) / 10000):
                revert with 0, 17
            banks[address(_54)].field_512 += (_61 * feeBps) - (stor2[_55] * feeBps) / 10000
            if mem[_75] < _66:
                revert with 0, 17
            if uint256(stor1[_55]) > !(mem[_75] - _66):
                revert with 0, 17
            uint256(stor1[_55]) = uint256(stor1[_55]) + mem[_75] - _66
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function borrow(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if POSITION_ID == -1:
        revert with 0, 'not within execution'
    if SPELLAddress != msg.sender:
        revert with 0, 'not from spell'
    if _IN_EXEC_LOCK != 1:
        revert with 0, 'in exec lock'
    _IN_EXEC_LOCK = 2
    if not banks[address(arg1)].field_0:
        revert with 0, 'bank not exist'
    mem[100] = this.address
    require ext_code.size(banks[address(arg1)].field_16)
    call banks[address(arg1)].field_16.borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= banks[address(arg1)].field_512:
        if banks[address(arg1)].field_512 != ext_call.return_data[0]:
            banks[address(arg1)].field_512 = ext_call.return_data[0]
        if not bool(allowBorrowStatus):
            revert with 0, 'borrow not allowed'
        if not stor143[address(arg1)]:
            revert with 0, 'token not whitelisted'
        if not banks[address(arg1)].field_768:
            if banks[address(arg1)].field_768 > !arg2:
                revert with 0, 17
            banks[address(arg1)].field_768 += arg2
            if currentPositionInfo[stor132][5][address(arg1)].field_0 > !arg2:
                revert with 0, 17
            currentPositionInfo[stor132][5][address(arg1)].field_0 += arg2
            if currentPositionInfo[stor132][5][address(arg1)].field_0 + arg2:
                currentPositionInfo[stor132].field_1024 = 1
            if stor149[stor141[stor132].field_0]:
                if sub_85986a0e[stor141[stor132].field_0][address(arg1)] > !arg2:
                    revert with 0, 17
                if sub_85986a0e[stor141[stor132].field_0][address(arg1)] + arg2 and banks[address(arg1)].field_512 > -1 / sub_85986a0e[stor141[stor132].field_0][address(arg1)] + arg2:
                    revert with 0, 17
                if not banks[address(arg1)].field_768:
                    revert with 0, 18
                if not banks[address(arg1)].field_768:
                    revert with 0, 18
                if not (sub_85986a0e[stor141[stor132].field_0][address(arg1)] * banks[address(arg1)].field_512) + (arg2 * banks[address(arg1)].field_512) % banks[address(arg1)].field_768:
                    if (sub_85986a0e[stor141[stor132].field_0][address(arg1)] * banks[address(arg1)].field_512) + (arg2 * banks[address(arg1)].field_512) / banks[address(arg1)].field_768 > -1:
                        revert with 0, 17
                    if (sub_85986a0e[stor141[stor132].field_0][address(arg1)] * banks[address(arg1)].field_512) + (arg2 * banks[address(arg1)].field_512) / banks[address(arg1)].field_768 > sub_c89be3d9[stor141[stor132].field_0][address(arg1)]:
                        revert with 0, '!credit limit'
                else:
                    if (sub_85986a0e[stor141[stor132].field_0][address(arg1)] * banks[address(arg1)].field_512) + (arg2 * banks[address(arg1)].field_512) / banks[address(arg1)].field_768 > -2:
                        revert with 0, 17
                    if ((sub_85986a0e[stor141[stor132].field_0][address(arg1)] * banks[address(arg1)].field_512) + (arg2 * banks[address(arg1)].field_512) / banks[address(arg1)].field_768) + 1 > sub_c89be3d9[stor141[stor132].field_0][address(arg1)]:
                        revert with 0, '!credit limit'
                sub_85986a0e[stor141[stor132].field_0][address(arg1)] += arg2
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 100] = arg2
            require ext_code.size(banks[address(arg1)].field_16)
            call banks[address(arg1)].field_16.borrow(uint256 arg1) with:
                 gas gas_remaining wei
                args arg2
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'bad borrow'
            mem[(4 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if banks[address(arg1)].field_512 > !arg2:
                revert with 0, 17
            banks[address(arg1)].field_512 += arg2
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(6 * ceil32(return_data.size)) + 164] = 0
            mem[(6 * ceil32(return_data.size)) + 96] = 68
            mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(6 * ceil32(return_data.size)) + 196] = 32
            mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, 0, 0
            mem[(6 * ceil32(return_data.size)) + 328] = 0
            call arg1 with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, 0, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, 0, 0) << 288)
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
                mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                    if not mem[(6 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, arg2);
        else:
            if arg2 and banks[address(arg1)].field_768 > -1 / arg2:
                revert with 0, 17
            if not banks[address(arg1)].field_512:
                revert with 0, 18
            if not banks[address(arg1)].field_512:
                revert with 0, 18
            if not arg2 * banks[address(arg1)].field_768 % banks[address(arg1)].field_512:
                if arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512 > -1:
                    revert with 0, 17
                if banks[address(arg1)].field_768 > !(arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512):
                    revert with 0, 17
                banks[address(arg1)].field_768 += arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512
                if currentPositionInfo[stor132][5][address(arg1)].field_0 > !(arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512):
                    revert with 0, 17
                currentPositionInfo[stor132][5][address(arg1)].field_0 += arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512
                if currentPositionInfo[stor132][5][address(arg1)].field_0 + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512):
                    currentPositionInfo[stor132].field_1024 = 1
                if stor149[stor141[stor132].field_0]:
                    if sub_85986a0e[stor141[stor132].field_0][address(arg1)] > !(arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512):
                        revert with 0, 17
                    if sub_85986a0e[stor141[stor132].field_0][address(arg1)] + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512) and banks[address(arg1)].field_512 > -1 / sub_85986a0e[stor141[stor132].field_0][address(arg1)] + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512):
                        revert with 0, 17
                    if not banks[address(arg1)].field_768:
                        revert with 0, 18
                    if not banks[address(arg1)].field_768:
                        revert with 0, 18
                    if not (sub_85986a0e[stor141[stor132].field_0][address(arg1)] * banks[address(arg1)].field_512) + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512 * banks[address(arg1)].field_512) % banks[address(arg1)].field_768:
                        if (sub_85986a0e[stor141[stor132].field_0][address(arg1)] * banks[address(arg1)].field_512) + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512 * banks[address(arg1)].field_512) / banks[address(arg1)].field_768 > -1:
                            revert with 0, 17
                        if (sub_85986a0e[stor141[stor132].field_0][address(arg1)] * banks[address(arg1)].field_512) + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512 * banks[address(arg1)].field_512) / banks[address(arg1)].field_768 > sub_c89be3d9[stor141[stor132].field_0][address(arg1)]:
                            revert with 0, '!credit limit'
                    else:
                        if (sub_85986a0e[stor141[stor132].field_0][address(arg1)] * banks[address(arg1)].field_512) + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512 * banks[address(arg1)].field_512) / banks[address(arg1)].field_768 > -2:
                            revert with 0, 17
                        if ((sub_85986a0e[stor141[stor132].field_0][address(arg1)] * banks[address(arg1)].field_512) + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512 * banks[address(arg1)].field_512) / banks[address(arg1)].field_768) + 1 > sub_c89be3d9[stor141[stor132].field_0][address(arg1)]:
                            revert with 0, '!credit limit'
                    sub_85986a0e[stor141[stor132].field_0][address(arg1)] += arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512
                mem[ceil32(return_data.size) + 100] = this.address
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(2 * ceil32(return_data.size)) + 100] = arg2
                require ext_code.size(banks[address(arg1)].field_16)
                call banks[address(arg1)].field_16.borrow(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg2
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'bad borrow'
                mem[(4 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if banks[address(arg1)].field_512 > !arg2:
                    revert with 0, 17
                banks[address(arg1)].field_512 += arg2
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(6 * ceil32(return_data.size)) + 164] = 0
                mem[(6 * ceil32(return_data.size)) + 96] = 68
                mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(6 * ceil32(return_data.size)) + 196] = 32
                mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, 0, 0
                mem[(6 * ceil32(return_data.size)) + 328] = 0
                call arg1 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, 0, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, 0, 0) << 288)
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
                    mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                        if not mem[(6 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512);
            else:
                if arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512 > -2:
                    revert with 0, 17
                if banks[address(arg1)].field_768 > !((arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512) + 1):
                    revert with 0, 17
                banks[address(arg1)].field_768 = banks[address(arg1)].field_768 + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512) + 1
                if currentPositionInfo[stor132][5][address(arg1)].field_0 > !((arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512) + 1):
                    revert with 0, 17
                currentPositionInfo[stor132][5][address(arg1)].field_0 = currentPositionInfo[stor132][5][address(arg1)].field_0 + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512) + 1
                if currentPositionInfo[stor132][5][address(arg1)].field_0 + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512) + 1:
                    currentPositionInfo[stor132].field_1024 = 1
                if stor149[stor141[stor132].field_0]:
                    if sub_85986a0e[stor141[stor132].field_0][address(arg1)] > !((arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512) + 1):
                        revert with 0, 17
                    if sub_85986a0e[stor141[stor132].field_0][address(arg1)] + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512) + 1 and banks[address(arg1)].field_512 > -1 / sub_85986a0e[stor141[stor132].field_0][address(arg1)] + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512) + 1:
                        revert with 0, 17
                    if not banks[address(arg1)].field_768:
                        revert with 0, 18
                    if not banks[address(arg1)].field_768:
                        revert with 0, 18
                    if not banks[address(arg1)].field_512 + (sub_85986a0e[stor141[stor132].field_0][address(arg1)] * banks[address(arg1)].field_512) + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512 * banks[address(arg1)].field_512) % banks[address(arg1)].field_768:
                        if banks[address(arg1)].field_512 + (sub_85986a0e[stor141[stor132].field_0][address(arg1)] * banks[address(arg1)].field_512) + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512 * banks[address(arg1)].field_512) / banks[address(arg1)].field_768 > -1:
                            revert with 0, 17
                        if banks[address(arg1)].field_512 + (sub_85986a0e[stor141[stor132].field_0][address(arg1)] * banks[address(arg1)].field_512) + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512 * banks[address(arg1)].field_512) / banks[address(arg1)].field_768 > sub_c89be3d9[stor141[stor132].field_0][address(arg1)]:
                            revert with 0, '!credit limit'
                    else:
                        if banks[address(arg1)].field_512 + (sub_85986a0e[stor141[stor132].field_0][address(arg1)] * banks[address(arg1)].field_512) + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512 * banks[address(arg1)].field_512) / banks[address(arg1)].field_768 > -2:
                            revert with 0, 17
                        if (banks[address(arg1)].field_512 + (sub_85986a0e[stor141[stor132].field_0][address(arg1)] * banks[address(arg1)].field_512) + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512 * banks[address(arg1)].field_512) / banks[address(arg1)].field_768) + 1 > sub_c89be3d9[stor141[stor132].field_0][address(arg1)]:
                            revert with 0, '!credit limit'
                    sub_85986a0e[stor141[stor132].field_0][address(arg1)] = sub_85986a0e[stor141[stor132].field_0][address(arg1)] + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512) + 1
                mem[ceil32(return_data.size) + 100] = this.address
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(2 * ceil32(return_data.size)) + 100] = arg2
                require ext_code.size(banks[address(arg1)].field_16)
                call banks[address(arg1)].field_16.borrow(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg2
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'bad borrow'
                mem[(4 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if banks[address(arg1)].field_512 > !arg2:
                    revert with 0, 17
                banks[address(arg1)].field_512 += arg2
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                mem[(6 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(6 * ceil32(return_data.size)) + 164] = 0
                mem[(6 * ceil32(return_data.size)) + 96] = 68
                mem[(6 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(6 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(6 * ceil32(return_data.size)) + 196] = 32
                mem[(6 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[(6 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, 0, 0
                mem[(6 * ceil32(return_data.size)) + 328] = 0
                call arg1 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, 0, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, 0, 0) << 288)
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
                    mem[(6 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(6 * ceil32(return_data.size)) + 292] == bool(mem[(6 * ceil32(return_data.size)) + 292])
                        if not mem[(6 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512) + 1);
    else:
        if ext_call.return_data[0] < banks[address(arg1)].field_512:
            revert with 0, 17
        if ext_call.return_data[0] - banks[address(arg1)].field_512 and feeBps > -1 / ext_call.return_data[0] - banks[address(arg1)].field_512:
            revert with 0, 17
        banks[address(arg1)].field_512 = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 100] = (ext_call.return_data[0] * feeBps) - (banks[address(arg1)].field_512 * feeBps) / 10000
        require ext_code.size(banks[address(arg1)].field_16)
        call banks[address(arg1)].field_16.borrow(uint256 arg1) with:
             gas gas_remaining wei
            args ((ext_call.return_data[0] * feeBps) - (banks[address(arg1)].field_512 * feeBps) / 10000)
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'bad borrow'
        mem[(4 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if banks[address(arg1)].field_512 > !((ext_call.return_data[0] * feeBps) - (banks[address(arg1)].field_512 * feeBps) / 10000):
            revert with 0, 17
        banks[address(arg1)].field_512 += (ext_call.return_data[0] * feeBps) - (banks[address(arg1)].field_512 * feeBps) / 10000
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 17
        if banks[address(arg1)].field_256 > !0:
            revert with 0, 17
        if not bool(allowBorrowStatus):
            revert with 0, 'borrow not allowed'
        if not stor143[address(arg1)]:
            revert with 0, 'token not whitelisted'
        if not banks[address(arg1)].field_768:
            if banks[address(arg1)].field_768 > !arg2:
                revert with 0, 17
            banks[address(arg1)].field_768 += arg2
            if currentPositionInfo[stor132][5][address(arg1)].field_0 > !arg2:
                revert with 0, 17
            currentPositionInfo[stor132][5][address(arg1)].field_0 += arg2
            if currentPositionInfo[stor132][5][address(arg1)].field_0 + arg2:
                currentPositionInfo[stor132].field_1024 = 1
            if stor149[stor141[stor132].field_0]:
                if sub_85986a0e[stor141[stor132].field_0][address(arg1)] > !arg2:
                    revert with 0, 17
                if sub_85986a0e[stor141[stor132].field_0][address(arg1)] + arg2 and banks[address(arg1)].field_512 > -1 / sub_85986a0e[stor141[stor132].field_0][address(arg1)] + arg2:
                    revert with 0, 17
                if not banks[address(arg1)].field_768:
                    revert with 0, 18
                if not banks[address(arg1)].field_768:
                    revert with 0, 18
                if not (sub_85986a0e[stor141[stor132].field_0][address(arg1)] * banks[address(arg1)].field_512) + (arg2 * banks[address(arg1)].field_512) % banks[address(arg1)].field_768:
                    if (sub_85986a0e[stor141[stor132].field_0][address(arg1)] * banks[address(arg1)].field_512) + (arg2 * banks[address(arg1)].field_512) / banks[address(arg1)].field_768 > -1:
                        revert with 0, 17
                    if (sub_85986a0e[stor141[stor132].field_0][address(arg1)] * banks[address(arg1)].field_512) + (arg2 * banks[address(arg1)].field_512) / banks[address(arg1)].field_768 > sub_c89be3d9[stor141[stor132].field_0][address(arg1)]:
                        revert with 0, '!credit limit'
                else:
                    if (sub_85986a0e[stor141[stor132].field_0][address(arg1)] * banks[address(arg1)].field_512) + (arg2 * banks[address(arg1)].field_512) / banks[address(arg1)].field_768 > -2:
                        revert with 0, 17
                    if ((sub_85986a0e[stor141[stor132].field_0][address(arg1)] * banks[address(arg1)].field_512) + (arg2 * banks[address(arg1)].field_512) / banks[address(arg1)].field_768) + 1 > sub_c89be3d9[stor141[stor132].field_0][address(arg1)]:
                        revert with 0, '!credit limit'
                sub_85986a0e[stor141[stor132].field_0][address(arg1)] += arg2
            mem[(6 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(7 * ceil32(return_data.size)) + 100] = arg2
            require ext_code.size(banks[address(arg1)].field_16)
            call banks[address(arg1)].field_16.borrow(uint256 arg1) with:
                 gas gas_remaining wei
                args arg2
            mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'bad borrow'
            mem[(8 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if banks[address(arg1)].field_512 > !arg2:
                revert with 0, 17
            banks[address(arg1)].field_512 += arg2
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            mem[(10 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(10 * ceil32(return_data.size)) + 164] = 0
            mem[(10 * ceil32(return_data.size)) + 96] = 68
            mem[(10 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(10 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(10 * ceil32(return_data.size)) + 196] = 32
            mem[(10 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[(10 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, 0, 0
            mem[(10 * ceil32(return_data.size)) + 328] = 0
            call arg1 with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, 0, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, 0, 0) << 288)
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
                mem[(10 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(10 * ceil32(return_data.size)) + 292] == bool(mem[(10 * ceil32(return_data.size)) + 292])
                    if not mem[(10 * ceil32(return_data.size)) + 292]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, arg2);
        else:
            if arg2 and banks[address(arg1)].field_768 > -1 / arg2:
                revert with 0, 17
            if not banks[address(arg1)].field_512:
                revert with 0, 18
            if not banks[address(arg1)].field_512:
                revert with 0, 18
            if not arg2 * banks[address(arg1)].field_768 % banks[address(arg1)].field_512:
                if arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512 > -1:
                    revert with 0, 17
                if banks[address(arg1)].field_768 > !(arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512):
                    revert with 0, 17
                banks[address(arg1)].field_768 += arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512
                if currentPositionInfo[stor132][5][address(arg1)].field_0 > !(arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512):
                    revert with 0, 17
                currentPositionInfo[stor132][5][address(arg1)].field_0 += arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512
                if currentPositionInfo[stor132][5][address(arg1)].field_0 + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512):
                    currentPositionInfo[stor132].field_1024 = 1
                if stor149[stor141[stor132].field_0]:
                    if sub_85986a0e[stor141[stor132].field_0][address(arg1)] > !(arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512):
                        revert with 0, 17
                    if sub_85986a0e[stor141[stor132].field_0][address(arg1)] + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512) and banks[address(arg1)].field_512 > -1 / sub_85986a0e[stor141[stor132].field_0][address(arg1)] + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512):
                        revert with 0, 17
                    if not banks[address(arg1)].field_768:
                        revert with 0, 18
                    if not banks[address(arg1)].field_768:
                        revert with 0, 18
                    if not (sub_85986a0e[stor141[stor132].field_0][address(arg1)] * banks[address(arg1)].field_512) + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512 * banks[address(arg1)].field_512) % banks[address(arg1)].field_768:
                        if (sub_85986a0e[stor141[stor132].field_0][address(arg1)] * banks[address(arg1)].field_512) + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512 * banks[address(arg1)].field_512) / banks[address(arg1)].field_768 > -1:
                            revert with 0, 17
                        if (sub_85986a0e[stor141[stor132].field_0][address(arg1)] * banks[address(arg1)].field_512) + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512 * banks[address(arg1)].field_512) / banks[address(arg1)].field_768 > sub_c89be3d9[stor141[stor132].field_0][address(arg1)]:
                            revert with 0, '!credit limit'
                    else:
                        if (sub_85986a0e[stor141[stor132].field_0][address(arg1)] * banks[address(arg1)].field_512) + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512 * banks[address(arg1)].field_512) / banks[address(arg1)].field_768 > -2:
                            revert with 0, 17
                        if ((sub_85986a0e[stor141[stor132].field_0][address(arg1)] * banks[address(arg1)].field_512) + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512 * banks[address(arg1)].field_512) / banks[address(arg1)].field_768) + 1 > sub_c89be3d9[stor141[stor132].field_0][address(arg1)]:
                            revert with 0, '!credit limit'
                    sub_85986a0e[stor141[stor132].field_0][address(arg1)] += arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512
                mem[(6 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(7 * ceil32(return_data.size)) + 100] = arg2
                require ext_code.size(banks[address(arg1)].field_16)
                call banks[address(arg1)].field_16.borrow(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg2
                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'bad borrow'
                mem[(8 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if banks[address(arg1)].field_512 > !arg2:
                    revert with 0, 17
                banks[address(arg1)].field_512 += arg2
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                mem[(10 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(10 * ceil32(return_data.size)) + 164] = 0
                mem[(10 * ceil32(return_data.size)) + 96] = 68
                mem[(10 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(10 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(10 * ceil32(return_data.size)) + 196] = 32
                mem[(10 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[(10 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, 0, 0
                mem[(10 * ceil32(return_data.size)) + 328] = 0
                call arg1 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, 0, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, 0, 0) << 288)
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
                    mem[(10 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(10 * ceil32(return_data.size)) + 292] == bool(mem[(10 * ceil32(return_data.size)) + 292])
                        if not mem[(10 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512);
            else:
                if arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512 > -2:
                    revert with 0, 17
                if banks[address(arg1)].field_768 > !((arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512) + 1):
                    revert with 0, 17
                banks[address(arg1)].field_768 = banks[address(arg1)].field_768 + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512) + 1
                if currentPositionInfo[stor132][5][address(arg1)].field_0 > !((arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512) + 1):
                    revert with 0, 17
                currentPositionInfo[stor132][5][address(arg1)].field_0 = currentPositionInfo[stor132][5][address(arg1)].field_0 + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512) + 1
                if currentPositionInfo[stor132][5][address(arg1)].field_0 + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512) + 1:
                    currentPositionInfo[stor132].field_1024 = 1
                if stor149[stor141[stor132].field_0]:
                    if sub_85986a0e[stor141[stor132].field_0][address(arg1)] > !((arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512) + 1):
                        revert with 0, 17
                    if sub_85986a0e[stor141[stor132].field_0][address(arg1)] + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512) + 1 and banks[address(arg1)].field_512 > -1 / sub_85986a0e[stor141[stor132].field_0][address(arg1)] + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512) + 1:
                        revert with 0, 17
                    if not banks[address(arg1)].field_768:
                        revert with 0, 18
                    if not banks[address(arg1)].field_768:
                        revert with 0, 18
                    if not banks[address(arg1)].field_512 + (sub_85986a0e[stor141[stor132].field_0][address(arg1)] * banks[address(arg1)].field_512) + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512 * banks[address(arg1)].field_512) % banks[address(arg1)].field_768:
                        if banks[address(arg1)].field_512 + (sub_85986a0e[stor141[stor132].field_0][address(arg1)] * banks[address(arg1)].field_512) + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512 * banks[address(arg1)].field_512) / banks[address(arg1)].field_768 > -1:
                            revert with 0, 17
                        if banks[address(arg1)].field_512 + (sub_85986a0e[stor141[stor132].field_0][address(arg1)] * banks[address(arg1)].field_512) + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512 * banks[address(arg1)].field_512) / banks[address(arg1)].field_768 > sub_c89be3d9[stor141[stor132].field_0][address(arg1)]:
                            revert with 0, '!credit limit'
                    else:
                        if banks[address(arg1)].field_512 + (sub_85986a0e[stor141[stor132].field_0][address(arg1)] * banks[address(arg1)].field_512) + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512 * banks[address(arg1)].field_512) / banks[address(arg1)].field_768 > -2:
                            revert with 0, 17
                        if (banks[address(arg1)].field_512 + (sub_85986a0e[stor141[stor132].field_0][address(arg1)] * banks[address(arg1)].field_512) + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512 * banks[address(arg1)].field_512) / banks[address(arg1)].field_768) + 1 > sub_c89be3d9[stor141[stor132].field_0][address(arg1)]:
                            revert with 0, '!credit limit'
                    sub_85986a0e[stor141[stor132].field_0][address(arg1)] = sub_85986a0e[stor141[stor132].field_0][address(arg1)] + (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512) + 1
                mem[(6 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(7 * ceil32(return_data.size)) + 100] = arg2
                require ext_code.size(banks[address(arg1)].field_16)
                call banks[address(arg1)].field_16.borrow(uint256 arg1) with:
                     gas gas_remaining wei
                    args arg2
                mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'bad borrow'
                mem[(8 * ceil32(return_data.size)) + 100] = this.address
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(8 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if banks[address(arg1)].field_512 > !arg2:
                    revert with 0, 17
                banks[address(arg1)].field_512 += arg2
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                mem[(10 * ceil32(return_data.size)) + 132] = msg.sender
                mem[(10 * ceil32(return_data.size)) + 164] = 0
                mem[(10 * ceil32(return_data.size)) + 96] = 68
                mem[(10 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(10 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[(10 * ceil32(return_data.size)) + 196] = 32
                mem[(10 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[(10 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, 0, 0
                mem[(10 * ceil32(return_data.size)) + 328] = 0
                call arg1 with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, 0, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, 0, 0) << 288)
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
                    mem[(10 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(10 * ceil32(return_data.size)) + 292] == bool(mem[(10 * ceil32(return_data.size)) + 292])
                        if not mem[(10 * ceil32(return_data.size)) + 292]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, (arg2 * banks[address(arg1)].field_768 / banks[address(arg1)].field_512) + 1);
    _IN_EXEC_LOCK = 1
}

function execute(uint256 arg1, address arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(ceil32(arg3.length)) + 97
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    if _GENERAL_LOCK != 1:
        revert with 0, 'general lock'
    _GENERAL_LOCK = 2
    if sub_d2ffc9f3:
        if not stor144[address(arg2)]:
            revert with 0, 'spell not whitelisted'
        if arg1:
            if arg1 >= nextPositionId:
                revert with 0, 'position id not exists'
            if currentPositionInfo[arg1].field_0 != msg.sender:
                revert with 0, 'not position owner'
            POSITION_ID = arg1
            SPELLAddress = arg2
            mem[ceil32(ceil32(arg3.length)) + 97] = 0xcfc40a2e00000000000000000000000000000000000000000000000000000000
            mem[ceil32(ceil32(arg3.length)) + 101] = arg2
            mem[ceil32(ceil32(arg3.length)) + 133] = 64
            mem[ceil32(ceil32(arg3.length)) + 165] = arg3.length
            mem[ceil32(ceil32(arg3.length)) + 197 len ceil32(arg3.length)] = arg3[all], 0
            if ceil32(arg3.length) <= arg3.length:
                require ext_code.size(casterAddress)
                call casterAddress.0xcfc40a2e with:
                   value msg.value wei
                     gas gas_remaining wei
                    args address(arg2), 64, arg3.length, arg3[all], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not currentPositionInfo[arg1].field_768:
                    mem[0] = arg1
                    mem[32] = 141
                    s = 0
                    idx = stor4[sha3(mem[0 len 64])]
                    t = 0
                    while idx:
                        if not bool(idx):
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t
                            continue 
                        if s >= allBanks.length:
                            revert with 0, 50
                        mem[0] = allBanks[s]
                        mem[32] = 139
                        if currentPositionInfo[arg1][5][stor138[s]].field_0 and banks[stor138[s]].field_512 > -1 / currentPositionInfo[arg1][5][stor138[s]].field_0:
                            revert with 0, 17
                        if not banks[stor138[s]].field_768:
                            revert with 0, 18
                        if not banks[stor138[s]].field_768:
                            revert with 0, 18
                        if not currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 % banks[stor138[s]].field_768:
                            if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -1:
                                revert with 0, 17
                            mem[mem[64] + 4] = allBanks[s]
                            mem[mem[64] + 36] = currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768
                            mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                            require ext_code.size(oracleAddress)
                            staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1308 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1308]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1308]
                            continue 
                        if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                            revert with 0, 17
                        mem[mem[64] + 4] = allBanks[s]
                        mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                        mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                gas gas_remaining wei
                               args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1309 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_1309]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_1309]
                        continue 
                    if 0 < t:
                        revert with 0, 'insufficient collateral'
                else:
                    if not currentPositionInfo[arg1].field_256:
                        revert with 0, 'bad collateral token'
                    mem[ceil32(ceil32(arg3.length)) + 101] = currentPositionInfo[arg1].field_256
                    mem[ceil32(ceil32(arg3.length)) + 133] = currentPositionInfo[arg1].field_512
                    mem[ceil32(ceil32(arg3.length)) + 165] = currentPositionInfo[arg1].field_768
                    mem[ceil32(ceil32(arg3.length)) + 197] = currentPositionInfo[arg1].field_0
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.asETHCollateral(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                            gas gas_remaining wei
                           args currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, currentPositionInfo[arg1].field_0
                    mem[ceil32(ceil32(arg3.length)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97
                    require return_data.size >= 32
                    mem[0] = arg1
                    mem[32] = 141
                    s = 0
                    idx = stor4[sha3(mem[0 len 64])]
                    t = 0
                    while idx:
                        if not bool(idx):
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t
                            continue 
                        if s >= allBanks.length:
                            revert with 0, 50
                        mem[0] = allBanks[s]
                        mem[32] = 139
                        if currentPositionInfo[arg1][5][stor138[s]].field_0 and banks[stor138[s]].field_512 > -1 / currentPositionInfo[arg1][5][stor138[s]].field_0:
                            revert with 0, 17
                        if not banks[stor138[s]].field_768:
                            revert with 0, 18
                        if not banks[stor138[s]].field_768:
                            revert with 0, 18
                        if not currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 % banks[stor138[s]].field_768:
                            if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -1:
                                revert with 0, 17
                            mem[mem[64] + 4] = allBanks[s]
                            mem[mem[64] + 36] = currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768
                            mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                            require ext_code.size(oracleAddress)
                            staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1306 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1306]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1306]
                            continue 
                        if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                            revert with 0, 17
                        mem[mem[64] + 4] = allBanks[s]
                        mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                        mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                gas gas_remaining wei
                               args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1307 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_1307]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_1307]
                        continue 
                    if ext_call.return_data[0] < t:
                        revert with 0, 'insufficient collateral'
            else:
                mem[arg3.length + ceil32(ceil32(arg3.length)) + 197] = 0
                require ext_code.size(casterAddress)
                call casterAddress.0xcfc40a2e with:
                   value msg.value wei
                     gas gas_remaining wei
                    args address(arg2), 64, arg3.length, arg3[all], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not currentPositionInfo[arg1].field_768:
                    mem[0] = arg1
                    mem[32] = 141
                    s = 0
                    idx = stor4[sha3(mem[0 len 64])]
                    t = 0
                    while idx:
                        if not bool(idx):
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t
                            continue 
                        if s >= allBanks.length:
                            revert with 0, 50
                        mem[0] = allBanks[s]
                        mem[32] = 139
                        if currentPositionInfo[arg1][5][stor138[s]].field_0 and banks[stor138[s]].field_512 > -1 / currentPositionInfo[arg1][5][stor138[s]].field_0:
                            revert with 0, 17
                        if not banks[stor138[s]].field_768:
                            revert with 0, 18
                        if not banks[stor138[s]].field_768:
                            revert with 0, 18
                        if not currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 % banks[stor138[s]].field_768:
                            if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -1:
                                revert with 0, 17
                            mem[mem[64] + 4] = allBanks[s]
                            mem[mem[64] + 36] = currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768
                            mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                            require ext_code.size(oracleAddress)
                            staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1312 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1312]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1312]
                            continue 
                        if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                            revert with 0, 17
                        mem[mem[64] + 4] = allBanks[s]
                        mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                        mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                gas gas_remaining wei
                               args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1313 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_1313]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_1313]
                        continue 
                    if 0 < t:
                        revert with 0, 'insufficient collateral'
                else:
                    if not currentPositionInfo[arg1].field_256:
                        revert with 0, 'bad collateral token'
                    mem[ceil32(ceil32(arg3.length)) + 101] = currentPositionInfo[arg1].field_256
                    mem[ceil32(ceil32(arg3.length)) + 133] = currentPositionInfo[arg1].field_512
                    mem[ceil32(ceil32(arg3.length)) + 165] = currentPositionInfo[arg1].field_768
                    mem[ceil32(ceil32(arg3.length)) + 197] = currentPositionInfo[arg1].field_0
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.asETHCollateral(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                            gas gas_remaining wei
                           args currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, currentPositionInfo[arg1].field_0
                    mem[ceil32(ceil32(arg3.length)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97
                    require return_data.size >= 32
                    mem[0] = arg1
                    mem[32] = 141
                    s = 0
                    idx = stor4[sha3(mem[0 len 64])]
                    t = 0
                    while idx:
                        if not bool(idx):
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t
                            continue 
                        if s >= allBanks.length:
                            revert with 0, 50
                        mem[0] = allBanks[s]
                        mem[32] = 139
                        if currentPositionInfo[arg1][5][stor138[s]].field_0 and banks[stor138[s]].field_512 > -1 / currentPositionInfo[arg1][5][stor138[s]].field_0:
                            revert with 0, 17
                        if not banks[stor138[s]].field_768:
                            revert with 0, 18
                        if not banks[stor138[s]].field_768:
                            revert with 0, 18
                        if not currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 % banks[stor138[s]].field_768:
                            if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -1:
                                revert with 0, 17
                            mem[mem[64] + 4] = allBanks[s]
                            mem[mem[64] + 36] = currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768
                            mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                            require ext_code.size(oracleAddress)
                            staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1310 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1310]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1310]
                            continue 
                        if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                            revert with 0, 17
                        mem[mem[64] + 4] = allBanks[s]
                        mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                        mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                gas gas_remaining wei
                               args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1311 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_1311]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_1311]
                        continue 
                    if ext_call.return_data[0] < t:
                        revert with 0, 'insufficient collateral'
            POSITION_ID = -1
            uint8(stor133.field_0) = 1
            Mask(152, 0, stor133.field_8) = 0
            emit 0x3714216f: msg.sender, arg1, arg2
            _GENERAL_LOCK = 1
            return arg1
        if nextPositionId == -1:
            revert with 0, 17
        nextPositionId++
        currentPositionInfo[stor137].field_0 = msg.sender or Mask(96, 160, currentPositionInfo[stor137].field_0)
        POSITION_ID = nextPositionId
        SPELLAddress = arg2
        mem[ceil32(ceil32(arg3.length)) + 97] = 0xcfc40a2e00000000000000000000000000000000000000000000000000000000
        mem[ceil32(ceil32(arg3.length)) + 101] = arg2
        mem[ceil32(ceil32(arg3.length)) + 133] = 64
        mem[ceil32(ceil32(arg3.length)) + 165] = arg3.length
        mem[ceil32(ceil32(arg3.length)) + 197 len ceil32(arg3.length)] = arg3[all], 0
        if ceil32(arg3.length) <= arg3.length:
            require ext_code.size(casterAddress)
            call casterAddress.0xcfc40a2e with:
               value msg.value wei
                 gas gas_remaining wei
                args address(arg2), 64, arg3.length, arg3[all], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not currentPositionInfo[stor137].field_768:
                mem[0] = nextPositionId
                mem[32] = 141
                s = 0
                idx = stor4[sha3(mem[0 len 64])]
                t = 0
                while idx:
                    if not bool(idx):
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t
                        continue 
                    if s >= allBanks.length:
                        revert with 0, 50
                    mem[0] = allBanks[s]
                    mem[32] = 139
                    if currentPositionInfo[stor137][5][stor138[s]].field_0 and banks[stor138[s]].field_512 > -1 / currentPositionInfo[stor137][5][stor138[s]].field_0:
                        revert with 0, 17
                    if not banks[stor138[s]].field_768:
                        revert with 0, 18
                    if not banks[stor138[s]].field_768:
                        revert with 0, 18
                    if not currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 % banks[stor138[s]].field_768:
                        if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -1:
                            revert with 0, 17
                        mem[mem[64] + 4] = allBanks[s]
                        mem[mem[64] + 36] = currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768
                        mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                gas gas_remaining wei
                               args allBanks[s], currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[stor137].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1316 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_1316]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_1316]
                        continue 
                    if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                        revert with 0, 17
                    mem[mem[64] + 4] = allBanks[s]
                    mem[mem[64] + 36] = (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                    mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                            gas gas_remaining wei
                           args allBanks[s], (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[stor137].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1317 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_1317]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = uint255(idx) * 0.5
                    t = t + mem[_1317]
                    continue 
                if 0 < t:
                    revert with 0, 'insufficient collateral'
            else:
                if not currentPositionInfo[stor137].field_256:
                    revert with 0, 'bad collateral token'
                mem[ceil32(ceil32(arg3.length)) + 101] = currentPositionInfo[stor137].field_256
                mem[ceil32(ceil32(arg3.length)) + 133] = currentPositionInfo[stor137].field_512
                mem[ceil32(ceil32(arg3.length)) + 165] = currentPositionInfo[stor137].field_768
                mem[ceil32(ceil32(arg3.length)) + 197] = currentPositionInfo[stor137].field_0
                require ext_code.size(oracleAddress)
                staticcall oracleAddress.asETHCollateral(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                        gas gas_remaining wei
                       args currentPositionInfo[stor137].field_256, currentPositionInfo[stor137].field_512, currentPositionInfo[stor137].field_768, currentPositionInfo[stor137].field_0
                mem[ceil32(ceil32(arg3.length)) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97
                require return_data.size >= 32
                mem[0] = nextPositionId
                mem[32] = 141
                s = 0
                idx = stor4[sha3(mem[0 len 64])]
                t = 0
                while idx:
                    if not bool(idx):
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t
                        continue 
                    if s >= allBanks.length:
                        revert with 0, 50
                    mem[0] = allBanks[s]
                    mem[32] = 139
                    if currentPositionInfo[stor137][5][stor138[s]].field_0 and banks[stor138[s]].field_512 > -1 / currentPositionInfo[stor137][5][stor138[s]].field_0:
                        revert with 0, 17
                    if not banks[stor138[s]].field_768:
                        revert with 0, 18
                    if not banks[stor138[s]].field_768:
                        revert with 0, 18
                    if not currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 % banks[stor138[s]].field_768:
                        if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -1:
                            revert with 0, 17
                        mem[mem[64] + 4] = allBanks[s]
                        mem[mem[64] + 36] = currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768
                        mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                gas gas_remaining wei
                               args allBanks[s], currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[stor137].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1314 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_1314]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_1314]
                        continue 
                    if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                        revert with 0, 17
                    mem[mem[64] + 4] = allBanks[s]
                    mem[mem[64] + 36] = (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                    mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                            gas gas_remaining wei
                           args allBanks[s], (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[stor137].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1315 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_1315]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = uint255(idx) * 0.5
                    t = t + mem[_1315]
                    continue 
                if ext_call.return_data[0] < t:
                    revert with 0, 'insufficient collateral'
        else:
            mem[arg3.length + ceil32(ceil32(arg3.length)) + 197] = 0
            require ext_code.size(casterAddress)
            call casterAddress.0xcfc40a2e with:
               value msg.value wei
                 gas gas_remaining wei
                args address(arg2), 64, arg3.length, arg3[all], 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not currentPositionInfo[stor137].field_768:
                mem[0] = nextPositionId
                mem[32] = 141
                s = 0
                idx = stor4[sha3(mem[0 len 64])]
                t = 0
                while idx:
                    if not bool(idx):
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t
                        continue 
                    if s >= allBanks.length:
                        revert with 0, 50
                    mem[0] = allBanks[s]
                    mem[32] = 139
                    if currentPositionInfo[stor137][5][stor138[s]].field_0 and banks[stor138[s]].field_512 > -1 / currentPositionInfo[stor137][5][stor138[s]].field_0:
                        revert with 0, 17
                    if not banks[stor138[s]].field_768:
                        revert with 0, 18
                    if not banks[stor138[s]].field_768:
                        revert with 0, 18
                    if not currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 % banks[stor138[s]].field_768:
                        if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -1:
                            revert with 0, 17
                        mem[mem[64] + 4] = allBanks[s]
                        mem[mem[64] + 36] = currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768
                        mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                gas gas_remaining wei
                               args allBanks[s], currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[stor137].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1320 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_1320]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_1320]
                        continue 
                    if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                        revert with 0, 17
                    mem[mem[64] + 4] = allBanks[s]
                    mem[mem[64] + 36] = (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                    mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                            gas gas_remaining wei
                           args allBanks[s], (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[stor137].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1321 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_1321]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = uint255(idx) * 0.5
                    t = t + mem[_1321]
                    continue 
                if 0 < t:
                    revert with 0, 'insufficient collateral'
            else:
                if not currentPositionInfo[stor137].field_256:
                    revert with 0, 'bad collateral token'
                mem[ceil32(ceil32(arg3.length)) + 101] = currentPositionInfo[stor137].field_256
                mem[ceil32(ceil32(arg3.length)) + 133] = currentPositionInfo[stor137].field_512
                mem[ceil32(ceil32(arg3.length)) + 165] = currentPositionInfo[stor137].field_768
                mem[ceil32(ceil32(arg3.length)) + 197] = currentPositionInfo[stor137].field_0
                require ext_code.size(oracleAddress)
                staticcall oracleAddress.asETHCollateral(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                        gas gas_remaining wei
                       args currentPositionInfo[stor137].field_256, currentPositionInfo[stor137].field_512, currentPositionInfo[stor137].field_768, currentPositionInfo[stor137].field_0
                mem[ceil32(ceil32(arg3.length)) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97
                require return_data.size >= 32
                mem[0] = nextPositionId
                mem[32] = 141
                s = 0
                idx = stor4[sha3(mem[0 len 64])]
                t = 0
                while idx:
                    if not bool(idx):
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t
                        continue 
                    if s >= allBanks.length:
                        revert with 0, 50
                    mem[0] = allBanks[s]
                    mem[32] = 139
                    if currentPositionInfo[stor137][5][stor138[s]].field_0 and banks[stor138[s]].field_512 > -1 / currentPositionInfo[stor137][5][stor138[s]].field_0:
                        revert with 0, 17
                    if not banks[stor138[s]].field_768:
                        revert with 0, 18
                    if not banks[stor138[s]].field_768:
                        revert with 0, 18
                    if not currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 % banks[stor138[s]].field_768:
                        if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -1:
                            revert with 0, 17
                        mem[mem[64] + 4] = allBanks[s]
                        mem[mem[64] + 36] = currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768
                        mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                gas gas_remaining wei
                               args allBanks[s], currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[stor137].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1318 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_1318]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_1318]
                        continue 
                    if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                        revert with 0, 17
                    mem[mem[64] + 4] = allBanks[s]
                    mem[mem[64] + 36] = (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                    mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                            gas gas_remaining wei
                           args allBanks[s], (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[stor137].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1319 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_1319]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = uint255(idx) * 0.5
                    t = t + mem[_1319]
                    continue 
                if ext_call.return_data[0] < t:
                    revert with 0, 'insufficient collateral'
    else:
        if stor145[msg.sender]:
            if not stor144[address(arg2)]:
                revert with 0, 'spell not whitelisted'
            if arg1:
                if arg1 >= nextPositionId:
                    revert with 0, 'position id not exists'
                if currentPositionInfo[arg1].field_0 != msg.sender:
                    revert with 0, 'not position owner'
                POSITION_ID = arg1
                SPELLAddress = arg2
                mem[ceil32(ceil32(arg3.length)) + 97] = 0xcfc40a2e00000000000000000000000000000000000000000000000000000000
                mem[ceil32(ceil32(arg3.length)) + 101] = arg2
                mem[ceil32(ceil32(arg3.length)) + 133] = 64
                mem[ceil32(ceil32(arg3.length)) + 165] = arg3.length
                mem[ceil32(ceil32(arg3.length)) + 197 len ceil32(arg3.length)] = arg3[all], 0
                if ceil32(arg3.length) <= arg3.length:
                    require ext_code.size(casterAddress)
                    call casterAddress.0xcfc40a2e with:
                       value msg.value wei
                         gas gas_remaining wei
                        args address(arg2), 64, arg3.length, arg3[all], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not currentPositionInfo[arg1].field_768:
                        mem[0] = arg1
                        mem[32] = 141
                        s = 0
                        idx = stor4[sha3(mem[0 len 64])]
                        t = 0
                        while idx:
                            if not bool(idx):
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                idx = uint255(idx) * 0.5
                                t = t
                                continue 
                            if s >= allBanks.length:
                                revert with 0, 50
                            mem[0] = allBanks[s]
                            mem[32] = 139
                            if currentPositionInfo[arg1][5][stor138[s]].field_0 and banks[stor138[s]].field_512 > -1 / currentPositionInfo[arg1][5][stor138[s]].field_0:
                                revert with 0, 17
                            if not banks[stor138[s]].field_768:
                                revert with 0, 18
                            if not banks[stor138[s]].field_768:
                                revert with 0, 18
                            if not currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 % banks[stor138[s]].field_768:
                                if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -1:
                                    revert with 0, 17
                                mem[mem[64] + 4] = allBanks[s]
                                mem[mem[64] + 36] = currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768
                                mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                                require ext_code.size(oracleAddress)
                                staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1324 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if t > !mem[_1324]:
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                idx = uint255(idx) * 0.5
                                t = t + mem[_1324]
                                continue 
                            if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                                revert with 0, 17
                            mem[mem[64] + 4] = allBanks[s]
                            mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                            mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                            require ext_code.size(oracleAddress)
                            staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1325 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1325]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1325]
                            continue 
                        if 0 < t:
                            revert with 0, 'insufficient collateral'
                    else:
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        mem[ceil32(ceil32(arg3.length)) + 101] = currentPositionInfo[arg1].field_256
                        mem[ceil32(ceil32(arg3.length)) + 133] = currentPositionInfo[arg1].field_512
                        mem[ceil32(ceil32(arg3.length)) + 165] = currentPositionInfo[arg1].field_768
                        mem[ceil32(ceil32(arg3.length)) + 197] = currentPositionInfo[arg1].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHCollateral(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                gas gas_remaining wei
                               args currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, currentPositionInfo[arg1].field_0
                        mem[ceil32(ceil32(arg3.length)) + 97] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97
                        require return_data.size >= 32
                        mem[0] = arg1
                        mem[32] = 141
                        s = 0
                        idx = stor4[sha3(mem[0 len 64])]
                        t = 0
                        while idx:
                            if not bool(idx):
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                idx = uint255(idx) * 0.5
                                t = t
                                continue 
                            if s >= allBanks.length:
                                revert with 0, 50
                            mem[0] = allBanks[s]
                            mem[32] = 139
                            if currentPositionInfo[arg1][5][stor138[s]].field_0 and banks[stor138[s]].field_512 > -1 / currentPositionInfo[arg1][5][stor138[s]].field_0:
                                revert with 0, 17
                            if not banks[stor138[s]].field_768:
                                revert with 0, 18
                            if not banks[stor138[s]].field_768:
                                revert with 0, 18
                            if not currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 % banks[stor138[s]].field_768:
                                if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -1:
                                    revert with 0, 17
                                mem[mem[64] + 4] = allBanks[s]
                                mem[mem[64] + 36] = currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768
                                mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                                require ext_code.size(oracleAddress)
                                staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1322 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if t > !mem[_1322]:
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                idx = uint255(idx) * 0.5
                                t = t + mem[_1322]
                                continue 
                            if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                                revert with 0, 17
                            mem[mem[64] + 4] = allBanks[s]
                            mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                            mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                            require ext_code.size(oracleAddress)
                            staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1323 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1323]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1323]
                            continue 
                        if ext_call.return_data[0] < t:
                            revert with 0, 'insufficient collateral'
                else:
                    mem[arg3.length + ceil32(ceil32(arg3.length)) + 197] = 0
                    require ext_code.size(casterAddress)
                    call casterAddress.0xcfc40a2e with:
                       value msg.value wei
                         gas gas_remaining wei
                        args address(arg2), 64, arg3.length, arg3[all], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not currentPositionInfo[arg1].field_768:
                        mem[0] = arg1
                        mem[32] = 141
                        s = 0
                        idx = stor4[sha3(mem[0 len 64])]
                        t = 0
                        while idx:
                            if not bool(idx):
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                idx = uint255(idx) * 0.5
                                t = t
                                continue 
                            if s >= allBanks.length:
                                revert with 0, 50
                            mem[0] = allBanks[s]
                            mem[32] = 139
                            if currentPositionInfo[arg1][5][stor138[s]].field_0 and banks[stor138[s]].field_512 > -1 / currentPositionInfo[arg1][5][stor138[s]].field_0:
                                revert with 0, 17
                            if not banks[stor138[s]].field_768:
                                revert with 0, 18
                            if not banks[stor138[s]].field_768:
                                revert with 0, 18
                            if not currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 % banks[stor138[s]].field_768:
                                if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -1:
                                    revert with 0, 17
                                mem[mem[64] + 4] = allBanks[s]
                                mem[mem[64] + 36] = currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768
                                mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                                require ext_code.size(oracleAddress)
                                staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1328 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if t > !mem[_1328]:
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                idx = uint255(idx) * 0.5
                                t = t + mem[_1328]
                                continue 
                            if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                                revert with 0, 17
                            mem[mem[64] + 4] = allBanks[s]
                            mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                            mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                            require ext_code.size(oracleAddress)
                            staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1329 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1329]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1329]
                            continue 
                        if 0 < t:
                            revert with 0, 'insufficient collateral'
                    else:
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        mem[ceil32(ceil32(arg3.length)) + 101] = currentPositionInfo[arg1].field_256
                        mem[ceil32(ceil32(arg3.length)) + 133] = currentPositionInfo[arg1].field_512
                        mem[ceil32(ceil32(arg3.length)) + 165] = currentPositionInfo[arg1].field_768
                        mem[ceil32(ceil32(arg3.length)) + 197] = currentPositionInfo[arg1].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHCollateral(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                gas gas_remaining wei
                               args currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, currentPositionInfo[arg1].field_0
                        mem[ceil32(ceil32(arg3.length)) + 97] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97
                        require return_data.size >= 32
                        mem[0] = arg1
                        mem[32] = 141
                        s = 0
                        idx = stor4[sha3(mem[0 len 64])]
                        t = 0
                        while idx:
                            if not bool(idx):
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                idx = uint255(idx) * 0.5
                                t = t
                                continue 
                            if s >= allBanks.length:
                                revert with 0, 50
                            mem[0] = allBanks[s]
                            mem[32] = 139
                            if currentPositionInfo[arg1][5][stor138[s]].field_0 and banks[stor138[s]].field_512 > -1 / currentPositionInfo[arg1][5][stor138[s]].field_0:
                                revert with 0, 17
                            if not banks[stor138[s]].field_768:
                                revert with 0, 18
                            if not banks[stor138[s]].field_768:
                                revert with 0, 18
                            if not currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 % banks[stor138[s]].field_768:
                                if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -1:
                                    revert with 0, 17
                                mem[mem[64] + 4] = allBanks[s]
                                mem[mem[64] + 36] = currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768
                                mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                                require ext_code.size(oracleAddress)
                                staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1326 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if t > !mem[_1326]:
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                idx = uint255(idx) * 0.5
                                t = t + mem[_1326]
                                continue 
                            if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                                revert with 0, 17
                            mem[mem[64] + 4] = allBanks[s]
                            mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                            mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                            require ext_code.size(oracleAddress)
                            staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1327 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1327]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1327]
                            continue 
                        if ext_call.return_data[0] < t:
                            revert with 0, 'insufficient collateral'
                POSITION_ID = -1
                uint8(stor133.field_0) = 1
                Mask(152, 0, stor133.field_8) = 0
                emit 0x3714216f: msg.sender, arg1, arg2
                _GENERAL_LOCK = 1
                return arg1
            if nextPositionId == -1:
                revert with 0, 17
            nextPositionId++
            currentPositionInfo[stor137].field_0 = msg.sender or Mask(96, 160, currentPositionInfo[stor137].field_0)
            POSITION_ID = nextPositionId
            SPELLAddress = arg2
            mem[ceil32(ceil32(arg3.length)) + 97] = 0xcfc40a2e00000000000000000000000000000000000000000000000000000000
            mem[ceil32(ceil32(arg3.length)) + 101] = arg2
            mem[ceil32(ceil32(arg3.length)) + 133] = 64
            mem[ceil32(ceil32(arg3.length)) + 165] = arg3.length
            mem[ceil32(ceil32(arg3.length)) + 197 len ceil32(arg3.length)] = arg3[all], 0
            if ceil32(arg3.length) <= arg3.length:
                require ext_code.size(casterAddress)
                call casterAddress.0xcfc40a2e with:
                   value msg.value wei
                     gas gas_remaining wei
                    args address(arg2), 64, arg3.length, arg3[all], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not currentPositionInfo[stor137].field_768:
                    mem[0] = nextPositionId
                    mem[32] = 141
                    s = 0
                    idx = stor4[sha3(mem[0 len 64])]
                    t = 0
                    while idx:
                        if not bool(idx):
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t
                            continue 
                        if s >= allBanks.length:
                            revert with 0, 50
                        mem[0] = allBanks[s]
                        mem[32] = 139
                        if currentPositionInfo[stor137][5][stor138[s]].field_0 and banks[stor138[s]].field_512 > -1 / currentPositionInfo[stor137][5][stor138[s]].field_0:
                            revert with 0, 17
                        if not banks[stor138[s]].field_768:
                            revert with 0, 18
                        if not banks[stor138[s]].field_768:
                            revert with 0, 18
                        if not currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 % banks[stor138[s]].field_768:
                            if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -1:
                                revert with 0, 17
                            mem[mem[64] + 4] = allBanks[s]
                            mem[mem[64] + 36] = currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768
                            mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                            require ext_code.size(oracleAddress)
                            staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[stor137].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1332 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1332]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1332]
                            continue 
                        if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                            revert with 0, 17
                        mem[mem[64] + 4] = allBanks[s]
                        mem[mem[64] + 36] = (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                        mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                gas gas_remaining wei
                               args allBanks[s], (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[stor137].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1333 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_1333]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_1333]
                        continue 
                    if 0 < t:
                        revert with 0, 'insufficient collateral'
                else:
                    if not currentPositionInfo[stor137].field_256:
                        revert with 0, 'bad collateral token'
                    mem[ceil32(ceil32(arg3.length)) + 101] = currentPositionInfo[stor137].field_256
                    mem[ceil32(ceil32(arg3.length)) + 133] = currentPositionInfo[stor137].field_512
                    mem[ceil32(ceil32(arg3.length)) + 165] = currentPositionInfo[stor137].field_768
                    mem[ceil32(ceil32(arg3.length)) + 197] = currentPositionInfo[stor137].field_0
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.asETHCollateral(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                            gas gas_remaining wei
                           args currentPositionInfo[stor137].field_256, currentPositionInfo[stor137].field_512, currentPositionInfo[stor137].field_768, currentPositionInfo[stor137].field_0
                    mem[ceil32(ceil32(arg3.length)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97
                    require return_data.size >= 32
                    mem[0] = nextPositionId
                    mem[32] = 141
                    s = 0
                    idx = stor4[sha3(mem[0 len 64])]
                    t = 0
                    while idx:
                        if not bool(idx):
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t
                            continue 
                        if s >= allBanks.length:
                            revert with 0, 50
                        mem[0] = allBanks[s]
                        mem[32] = 139
                        if currentPositionInfo[stor137][5][stor138[s]].field_0 and banks[stor138[s]].field_512 > -1 / currentPositionInfo[stor137][5][stor138[s]].field_0:
                            revert with 0, 17
                        if not banks[stor138[s]].field_768:
                            revert with 0, 18
                        if not banks[stor138[s]].field_768:
                            revert with 0, 18
                        if not currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 % banks[stor138[s]].field_768:
                            if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -1:
                                revert with 0, 17
                            mem[mem[64] + 4] = allBanks[s]
                            mem[mem[64] + 36] = currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768
                            mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                            require ext_code.size(oracleAddress)
                            staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[stor137].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1330 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1330]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1330]
                            continue 
                        if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                            revert with 0, 17
                        mem[mem[64] + 4] = allBanks[s]
                        mem[mem[64] + 36] = (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                        mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                gas gas_remaining wei
                               args allBanks[s], (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[stor137].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1331 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_1331]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_1331]
                        continue 
                    if ext_call.return_data[0] < t:
                        revert with 0, 'insufficient collateral'
            else:
                mem[arg3.length + ceil32(ceil32(arg3.length)) + 197] = 0
                require ext_code.size(casterAddress)
                call casterAddress.0xcfc40a2e with:
                   value msg.value wei
                     gas gas_remaining wei
                    args address(arg2), 64, arg3.length, arg3[all], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not currentPositionInfo[stor137].field_768:
                    mem[0] = nextPositionId
                    mem[32] = 141
                    s = 0
                    idx = stor4[sha3(mem[0 len 64])]
                    t = 0
                    while idx:
                        if not bool(idx):
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t
                            continue 
                        if s >= allBanks.length:
                            revert with 0, 50
                        mem[0] = allBanks[s]
                        mem[32] = 139
                        if currentPositionInfo[stor137][5][stor138[s]].field_0 and banks[stor138[s]].field_512 > -1 / currentPositionInfo[stor137][5][stor138[s]].field_0:
                            revert with 0, 17
                        if not banks[stor138[s]].field_768:
                            revert with 0, 18
                        if not banks[stor138[s]].field_768:
                            revert with 0, 18
                        if not currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 % banks[stor138[s]].field_768:
                            if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -1:
                                revert with 0, 17
                            mem[mem[64] + 4] = allBanks[s]
                            mem[mem[64] + 36] = currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768
                            mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                            require ext_code.size(oracleAddress)
                            staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[stor137].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1336 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1336]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1336]
                            continue 
                        if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                            revert with 0, 17
                        mem[mem[64] + 4] = allBanks[s]
                        mem[mem[64] + 36] = (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                        mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                gas gas_remaining wei
                               args allBanks[s], (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[stor137].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1337 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_1337]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_1337]
                        continue 
                    if 0 < t:
                        revert with 0, 'insufficient collateral'
                else:
                    if not currentPositionInfo[stor137].field_256:
                        revert with 0, 'bad collateral token'
                    mem[ceil32(ceil32(arg3.length)) + 101] = currentPositionInfo[stor137].field_256
                    mem[ceil32(ceil32(arg3.length)) + 133] = currentPositionInfo[stor137].field_512
                    mem[ceil32(ceil32(arg3.length)) + 165] = currentPositionInfo[stor137].field_768
                    mem[ceil32(ceil32(arg3.length)) + 197] = currentPositionInfo[stor137].field_0
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.asETHCollateral(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                            gas gas_remaining wei
                           args currentPositionInfo[stor137].field_256, currentPositionInfo[stor137].field_512, currentPositionInfo[stor137].field_768, currentPositionInfo[stor137].field_0
                    mem[ceil32(ceil32(arg3.length)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97
                    require return_data.size >= 32
                    mem[0] = nextPositionId
                    mem[32] = 141
                    s = 0
                    idx = stor4[sha3(mem[0 len 64])]
                    t = 0
                    while idx:
                        if not bool(idx):
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t
                            continue 
                        if s >= allBanks.length:
                            revert with 0, 50
                        mem[0] = allBanks[s]
                        mem[32] = 139
                        if currentPositionInfo[stor137][5][stor138[s]].field_0 and banks[stor138[s]].field_512 > -1 / currentPositionInfo[stor137][5][stor138[s]].field_0:
                            revert with 0, 17
                        if not banks[stor138[s]].field_768:
                            revert with 0, 18
                        if not banks[stor138[s]].field_768:
                            revert with 0, 18
                        if not currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 % banks[stor138[s]].field_768:
                            if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -1:
                                revert with 0, 17
                            mem[mem[64] + 4] = allBanks[s]
                            mem[mem[64] + 36] = currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768
                            mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                            require ext_code.size(oracleAddress)
                            staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[stor137].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1334 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1334]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1334]
                            continue 
                        if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                            revert with 0, 17
                        mem[mem[64] + 4] = allBanks[s]
                        mem[mem[64] + 36] = (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                        mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                gas gas_remaining wei
                               args allBanks[s], (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[stor137].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1335 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_1335]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_1335]
                        continue 
                    if ext_call.return_data[0] < t:
                        revert with 0, 'insufficient collateral'
        else:
            if msg.sender != tx.origin:
                revert with 0, 'not eoa'
            if not stor144[address(arg2)]:
                revert with 0, 'spell not whitelisted'
            if arg1:
                if arg1 >= nextPositionId:
                    revert with 0, 'position id not exists'
                if currentPositionInfo[arg1].field_0 != msg.sender:
                    revert with 0, 'not position owner'
                POSITION_ID = arg1
                SPELLAddress = arg2
                mem[ceil32(ceil32(arg3.length)) + 97] = 0xcfc40a2e00000000000000000000000000000000000000000000000000000000
                mem[ceil32(ceil32(arg3.length)) + 101] = arg2
                mem[ceil32(ceil32(arg3.length)) + 133] = 64
                mem[ceil32(ceil32(arg3.length)) + 165] = arg3.length
                mem[ceil32(ceil32(arg3.length)) + 197 len ceil32(arg3.length)] = arg3[all], 0
                if ceil32(arg3.length) <= arg3.length:
                    require ext_code.size(casterAddress)
                    call casterAddress.0xcfc40a2e with:
                       value msg.value wei
                         gas gas_remaining wei
                        args address(arg2), 64, arg3.length, arg3[all], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not currentPositionInfo[arg1].field_768:
                        mem[0] = arg1
                        mem[32] = 141
                        s = 0
                        idx = stor4[sha3(mem[0 len 64])]
                        t = 0
                        while idx:
                            if not bool(idx):
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                idx = uint255(idx) * 0.5
                                t = t
                                continue 
                            if s >= allBanks.length:
                                revert with 0, 50
                            mem[0] = allBanks[s]
                            mem[32] = 139
                            if currentPositionInfo[arg1][5][stor138[s]].field_0 and banks[stor138[s]].field_512 > -1 / currentPositionInfo[arg1][5][stor138[s]].field_0:
                                revert with 0, 17
                            if not banks[stor138[s]].field_768:
                                revert with 0, 18
                            if not banks[stor138[s]].field_768:
                                revert with 0, 18
                            if not currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 % banks[stor138[s]].field_768:
                                if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -1:
                                    revert with 0, 17
                                mem[mem[64] + 4] = allBanks[s]
                                mem[mem[64] + 36] = currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768
                                mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                                require ext_code.size(oracleAddress)
                                staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1340 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if t > !mem[_1340]:
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                idx = uint255(idx) * 0.5
                                t = t + mem[_1340]
                                continue 
                            if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                                revert with 0, 17
                            mem[mem[64] + 4] = allBanks[s]
                            mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                            mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                            require ext_code.size(oracleAddress)
                            staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1341 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1341]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1341]
                            continue 
                        if 0 < t:
                            revert with 0, 'insufficient collateral'
                    else:
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        mem[ceil32(ceil32(arg3.length)) + 101] = currentPositionInfo[arg1].field_256
                        mem[ceil32(ceil32(arg3.length)) + 133] = currentPositionInfo[arg1].field_512
                        mem[ceil32(ceil32(arg3.length)) + 165] = currentPositionInfo[arg1].field_768
                        mem[ceil32(ceil32(arg3.length)) + 197] = currentPositionInfo[arg1].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHCollateral(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                gas gas_remaining wei
                               args currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, currentPositionInfo[arg1].field_0
                        mem[ceil32(ceil32(arg3.length)) + 97] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97
                        require return_data.size >= 32
                        mem[0] = arg1
                        mem[32] = 141
                        s = 0
                        idx = stor4[sha3(mem[0 len 64])]
                        t = 0
                        while idx:
                            if not bool(idx):
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                idx = uint255(idx) * 0.5
                                t = t
                                continue 
                            if s >= allBanks.length:
                                revert with 0, 50
                            mem[0] = allBanks[s]
                            mem[32] = 139
                            if currentPositionInfo[arg1][5][stor138[s]].field_0 and banks[stor138[s]].field_512 > -1 / currentPositionInfo[arg1][5][stor138[s]].field_0:
                                revert with 0, 17
                            if not banks[stor138[s]].field_768:
                                revert with 0, 18
                            if not banks[stor138[s]].field_768:
                                revert with 0, 18
                            if not currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 % banks[stor138[s]].field_768:
                                if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -1:
                                    revert with 0, 17
                                mem[mem[64] + 4] = allBanks[s]
                                mem[mem[64] + 36] = currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768
                                mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                                require ext_code.size(oracleAddress)
                                staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1338 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if t > !mem[_1338]:
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                idx = uint255(idx) * 0.5
                                t = t + mem[_1338]
                                continue 
                            if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                                revert with 0, 17
                            mem[mem[64] + 4] = allBanks[s]
                            mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                            mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                            require ext_code.size(oracleAddress)
                            staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1339 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1339]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1339]
                            continue 
                        if ext_call.return_data[0] < t:
                            revert with 0, 'insufficient collateral'
                else:
                    mem[arg3.length + ceil32(ceil32(arg3.length)) + 197] = 0
                    require ext_code.size(casterAddress)
                    call casterAddress.0xcfc40a2e with:
                       value msg.value wei
                         gas gas_remaining wei
                        args address(arg2), 64, arg3.length, arg3[all], 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not currentPositionInfo[arg1].field_768:
                        mem[0] = arg1
                        mem[32] = 141
                        s = 0
                        idx = stor4[sha3(mem[0 len 64])]
                        t = 0
                        while idx:
                            if not bool(idx):
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                idx = uint255(idx) * 0.5
                                t = t
                                continue 
                            if s >= allBanks.length:
                                revert with 0, 50
                            mem[0] = allBanks[s]
                            mem[32] = 139
                            if currentPositionInfo[arg1][5][stor138[s]].field_0 and banks[stor138[s]].field_512 > -1 / currentPositionInfo[arg1][5][stor138[s]].field_0:
                                revert with 0, 17
                            if not banks[stor138[s]].field_768:
                                revert with 0, 18
                            if not banks[stor138[s]].field_768:
                                revert with 0, 18
                            if not currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 % banks[stor138[s]].field_768:
                                if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -1:
                                    revert with 0, 17
                                mem[mem[64] + 4] = allBanks[s]
                                mem[mem[64] + 36] = currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768
                                mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                                require ext_code.size(oracleAddress)
                                staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1344 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if t > !mem[_1344]:
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                idx = uint255(idx) * 0.5
                                t = t + mem[_1344]
                                continue 
                            if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                                revert with 0, 17
                            mem[mem[64] + 4] = allBanks[s]
                            mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                            mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                            require ext_code.size(oracleAddress)
                            staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1345 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1345]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1345]
                            continue 
                        if 0 < t:
                            revert with 0, 'insufficient collateral'
                    else:
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        mem[ceil32(ceil32(arg3.length)) + 101] = currentPositionInfo[arg1].field_256
                        mem[ceil32(ceil32(arg3.length)) + 133] = currentPositionInfo[arg1].field_512
                        mem[ceil32(ceil32(arg3.length)) + 165] = currentPositionInfo[arg1].field_768
                        mem[ceil32(ceil32(arg3.length)) + 197] = currentPositionInfo[arg1].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHCollateral(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                                gas gas_remaining wei
                               args currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, currentPositionInfo[arg1].field_0
                        mem[ceil32(ceil32(arg3.length)) + 97] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97
                        require return_data.size >= 32
                        mem[0] = arg1
                        mem[32] = 141
                        s = 0
                        idx = stor4[sha3(mem[0 len 64])]
                        t = 0
                        while idx:
                            if not bool(idx):
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                idx = uint255(idx) * 0.5
                                t = t
                                continue 
                            if s >= allBanks.length:
                                revert with 0, 50
                            mem[0] = allBanks[s]
                            mem[32] = 139
                            if currentPositionInfo[arg1][5][stor138[s]].field_0 and banks[stor138[s]].field_512 > -1 / currentPositionInfo[arg1][5][stor138[s]].field_0:
                                revert with 0, 17
                            if not banks[stor138[s]].field_768:
                                revert with 0, 18
                            if not banks[stor138[s]].field_768:
                                revert with 0, 18
                            if not currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 % banks[stor138[s]].field_768:
                                if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -1:
                                    revert with 0, 17
                                mem[mem[64] + 4] = allBanks[s]
                                mem[mem[64] + 36] = currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768
                                mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                                require ext_code.size(oracleAddress)
                                staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                        gas gas_remaining wei
                                       args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1342 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if t > !mem[_1342]:
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                idx = uint255(idx) * 0.5
                                t = t + mem[_1342]
                                continue 
                            if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                                revert with 0, 17
                            mem[mem[64] + 4] = allBanks[s]
                            mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                            mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                            require ext_code.size(oracleAddress)
                            staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1343 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1343]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1343]
                            continue 
                        if ext_call.return_data[0] < t:
                            revert with 0, 'insufficient collateral'
                POSITION_ID = -1
                uint8(stor133.field_0) = 1
                Mask(152, 0, stor133.field_8) = 0
                emit 0x3714216f: msg.sender, arg1, arg2
                _GENERAL_LOCK = 1
                return arg1
            if nextPositionId == -1:
                revert with 0, 17
            nextPositionId++
            currentPositionInfo[stor137].field_0 = msg.sender or Mask(96, 160, currentPositionInfo[stor137].field_0)
            POSITION_ID = nextPositionId
            SPELLAddress = arg2
            mem[ceil32(ceil32(arg3.length)) + 97] = 0xcfc40a2e00000000000000000000000000000000000000000000000000000000
            mem[ceil32(ceil32(arg3.length)) + 101] = arg2
            mem[ceil32(ceil32(arg3.length)) + 133] = 64
            mem[ceil32(ceil32(arg3.length)) + 165] = arg3.length
            mem[ceil32(ceil32(arg3.length)) + 197 len ceil32(arg3.length)] = arg3[all], 0
            if ceil32(arg3.length) <= arg3.length:
                require ext_code.size(casterAddress)
                call casterAddress.0xcfc40a2e with:
                   value msg.value wei
                     gas gas_remaining wei
                    args address(arg2), 64, arg3.length, arg3[all], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not currentPositionInfo[stor137].field_768:
                    mem[0] = nextPositionId
                    mem[32] = 141
                    s = 0
                    idx = stor4[sha3(mem[0 len 64])]
                    t = 0
                    while idx:
                        if not bool(idx):
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t
                            continue 
                        if s >= allBanks.length:
                            revert with 0, 50
                        mem[0] = allBanks[s]
                        mem[32] = 139
                        if currentPositionInfo[stor137][5][stor138[s]].field_0 and banks[stor138[s]].field_512 > -1 / currentPositionInfo[stor137][5][stor138[s]].field_0:
                            revert with 0, 17
                        if not banks[stor138[s]].field_768:
                            revert with 0, 18
                        if not banks[stor138[s]].field_768:
                            revert with 0, 18
                        if not currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 % banks[stor138[s]].field_768:
                            if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -1:
                                revert with 0, 17
                            mem[mem[64] + 4] = allBanks[s]
                            mem[mem[64] + 36] = currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768
                            mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                            require ext_code.size(oracleAddress)
                            staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[stor137].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1348 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1348]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1348]
                            continue 
                        if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                            revert with 0, 17
                        mem[mem[64] + 4] = allBanks[s]
                        mem[mem[64] + 36] = (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                        mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                gas gas_remaining wei
                               args allBanks[s], (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[stor137].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1349 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_1349]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_1349]
                        continue 
                    if 0 < t:
                        revert with 0, 'insufficient collateral'
                else:
                    if not currentPositionInfo[stor137].field_256:
                        revert with 0, 'bad collateral token'
                    mem[ceil32(ceil32(arg3.length)) + 101] = currentPositionInfo[stor137].field_256
                    mem[ceil32(ceil32(arg3.length)) + 133] = currentPositionInfo[stor137].field_512
                    mem[ceil32(ceil32(arg3.length)) + 165] = currentPositionInfo[stor137].field_768
                    mem[ceil32(ceil32(arg3.length)) + 197] = currentPositionInfo[stor137].field_0
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.asETHCollateral(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                            gas gas_remaining wei
                           args currentPositionInfo[stor137].field_256, currentPositionInfo[stor137].field_512, currentPositionInfo[stor137].field_768, currentPositionInfo[stor137].field_0
                    mem[ceil32(ceil32(arg3.length)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97
                    require return_data.size >= 32
                    mem[0] = nextPositionId
                    mem[32] = 141
                    s = 0
                    idx = stor4[sha3(mem[0 len 64])]
                    t = 0
                    while idx:
                        if not bool(idx):
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t
                            continue 
                        if s >= allBanks.length:
                            revert with 0, 50
                        mem[0] = allBanks[s]
                        mem[32] = 139
                        if currentPositionInfo[stor137][5][stor138[s]].field_0 and banks[stor138[s]].field_512 > -1 / currentPositionInfo[stor137][5][stor138[s]].field_0:
                            revert with 0, 17
                        if not banks[stor138[s]].field_768:
                            revert with 0, 18
                        if not banks[stor138[s]].field_768:
                            revert with 0, 18
                        if not currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 % banks[stor138[s]].field_768:
                            if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -1:
                                revert with 0, 17
                            mem[mem[64] + 4] = allBanks[s]
                            mem[mem[64] + 36] = currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768
                            mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                            require ext_code.size(oracleAddress)
                            staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[stor137].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1346 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1346]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1346]
                            continue 
                        if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                            revert with 0, 17
                        mem[mem[64] + 4] = allBanks[s]
                        mem[mem[64] + 36] = (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                        mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                gas gas_remaining wei
                               args allBanks[s], (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[stor137].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1347 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_1347]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_1347]
                        continue 
                    if ext_call.return_data[0] < t:
                        revert with 0, 'insufficient collateral'
            else:
                mem[arg3.length + ceil32(ceil32(arg3.length)) + 197] = 0
                require ext_code.size(casterAddress)
                call casterAddress.0xcfc40a2e with:
                   value msg.value wei
                     gas gas_remaining wei
                    args address(arg2), 64, arg3.length, arg3[all], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not currentPositionInfo[stor137].field_768:
                    mem[0] = nextPositionId
                    mem[32] = 141
                    s = 0
                    idx = stor4[sha3(mem[0 len 64])]
                    t = 0
                    while idx:
                        if not bool(idx):
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t
                            continue 
                        if s >= allBanks.length:
                            revert with 0, 50
                        mem[0] = allBanks[s]
                        mem[32] = 139
                        if currentPositionInfo[stor137][5][stor138[s]].field_0 and banks[stor138[s]].field_512 > -1 / currentPositionInfo[stor137][5][stor138[s]].field_0:
                            revert with 0, 17
                        if not banks[stor138[s]].field_768:
                            revert with 0, 18
                        if not banks[stor138[s]].field_768:
                            revert with 0, 18
                        if not currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 % banks[stor138[s]].field_768:
                            if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -1:
                                revert with 0, 17
                            mem[mem[64] + 4] = allBanks[s]
                            mem[mem[64] + 36] = currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768
                            mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                            require ext_code.size(oracleAddress)
                            staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[stor137].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1352 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1352]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1352]
                            continue 
                        if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                            revert with 0, 17
                        mem[mem[64] + 4] = allBanks[s]
                        mem[mem[64] + 36] = (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                        mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                gas gas_remaining wei
                               args allBanks[s], (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[stor137].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1353 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_1353]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_1353]
                        continue 
                    if 0 < t:
                        revert with 0, 'insufficient collateral'
                else:
                    if not currentPositionInfo[stor137].field_256:
                        revert with 0, 'bad collateral token'
                    mem[ceil32(ceil32(arg3.length)) + 101] = currentPositionInfo[stor137].field_256
                    mem[ceil32(ceil32(arg3.length)) + 133] = currentPositionInfo[stor137].field_512
                    mem[ceil32(ceil32(arg3.length)) + 165] = currentPositionInfo[stor137].field_768
                    mem[ceil32(ceil32(arg3.length)) + 197] = currentPositionInfo[stor137].field_0
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.asETHCollateral(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                            gas gas_remaining wei
                           args currentPositionInfo[stor137].field_256, currentPositionInfo[stor137].field_512, currentPositionInfo[stor137].field_768, currentPositionInfo[stor137].field_0
                    mem[ceil32(ceil32(arg3.length)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97
                    require return_data.size >= 32
                    mem[0] = nextPositionId
                    mem[32] = 141
                    s = 0
                    idx = stor4[sha3(mem[0 len 64])]
                    t = 0
                    while idx:
                        if not bool(idx):
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t
                            continue 
                        if s >= allBanks.length:
                            revert with 0, 50
                        mem[0] = allBanks[s]
                        mem[32] = 139
                        if currentPositionInfo[stor137][5][stor138[s]].field_0 and banks[stor138[s]].field_512 > -1 / currentPositionInfo[stor137][5][stor138[s]].field_0:
                            revert with 0, 17
                        if not banks[stor138[s]].field_768:
                            revert with 0, 18
                        if not banks[stor138[s]].field_768:
                            revert with 0, 18
                        if not currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 % banks[stor138[s]].field_768:
                            if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -1:
                                revert with 0, 17
                            mem[mem[64] + 4] = allBanks[s]
                            mem[mem[64] + 36] = currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768
                            mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                            require ext_code.size(oracleAddress)
                            staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[stor137].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1350 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1350]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1350]
                            continue 
                        if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                            revert with 0, 17
                        mem[mem[64] + 4] = allBanks[s]
                        mem[mem[64] + 36] = (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                        mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                gas gas_remaining wei
                               args allBanks[s], (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[stor137].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1351 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_1351]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_1351]
                        continue 
                    if ext_call.return_data[0] < t:
                        revert with 0, 'insufficient collateral'
    POSITION_ID = -1
    uint8(stor133.field_0) = 1
    Mask(152, 0, stor133.field_8) = 0
    emit 0x3714216f: msg.sender, nextPositionId, arg2
    _GENERAL_LOCK = 1
    return nextPositionId
}

function liquidate(uint256 arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    if _GENERAL_LOCK != 1:
        revert with 0, 'general lock'
    _GENERAL_LOCK = 2
    if not banks[address(arg2)].field_0:
        revert with 0, 'bank not exist'
    mem[100] = this.address
    require ext_code.size(banks[address(arg2)].field_16)
    call banks[address(arg2)].field_16.borrowBalanceCurrent(address arg1) with:
         gas gas_remaining wei
        args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if ext_call.return_data[0] <= banks[address(arg2)].field_512:
        if banks[address(arg2)].field_512 == ext_call.return_data[0]:
            if not currentPositionInfo[arg1].field_768:
                mem[0] = arg1
                mem[32] = 141
                s = 0
                idx = stor4[sha3(mem[0 len 64])]
                t = 0
                while idx:
                    if not bool(idx):
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t
                        continue 
                    if s >= allBanks.length:
                        revert with 0, 50
                    mem[0] = allBanks[s]
                    mem[32] = 139
                    if currentPositionInfo[arg1][5][stor138[s]].field_0 and banks[stor138[s]].field_512 > -1 / currentPositionInfo[arg1][5][stor138[s]].field_0:
                        revert with 0, 17
                    if not banks[stor138[s]].field_768:
                        revert with 0, 18
                    if not banks[stor138[s]].field_768:
                        revert with 0, 18
                    if not currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 % banks[stor138[s]].field_768:
                        if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -1:
                            revert with 0, 17
                        mem[mem[64] + 4] = allBanks[s]
                        mem[mem[64] + 36] = currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768
                        mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                gas gas_remaining wei
                               args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11466 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_11466]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_11466]
                        continue 
                    if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                        revert with 0, 17
                    mem[mem[64] + 4] = allBanks[s]
                    mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                    mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                            gas gas_remaining wei
                           args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11467 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_11467]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = uint255(idx) * 0.5
                    t = t + mem[_11467]
                    continue 
                if 0 >= t:
                    revert with 0, 'position still healthy'
                mem[0] = arg2
                mem[32] = sha3(arg1, 141) + 5
                if currentPositionInfo[arg1][5][address(arg2)].field_0 and banks[address(arg2)].field_512 > -1 / currentPositionInfo[arg1][5][address(arg2)].field_0:
                    revert with 0, 17
                if not banks[address(arg2)].field_768:
                    revert with 0, 18
                if not banks[address(arg2)].field_768:
                    revert with 0, 18
                if not currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 % banks[address(arg2)].field_768:
                    if currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768 > -1:
                        revert with 0, 17
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != -1:
                        _11538 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11562 = mem[_11538]
                        _11586 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg3
                        _11602 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_11586 + 132] = 32
                        mem[_11586 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        _11712 = mem[_11602]
                        mem[_11586 + 196 len ceil32(mem[_11602])] = mem[_11602 + 32 len ceil32(mem[_11602])]
                        if ceil32(_11712) > _11712:
                            mem[_11712 + _11586 + 196] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[_11586 + 200 len _11712 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_11586 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_11586 + 228] == bool(mem[_11586 + 228])
                                if not mem[_11586 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < _11562:
                            revert with 0, 17
                        require ext_code.size(banks[address(arg2)].field_16)
                        call banks[address(arg2)].field_16.repayBorrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - _11562)
                    else:
                        _11550 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11574 = mem[_11550]
                        _11604 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768
                        _11639 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_11604 + 132] = 32
                        mem[_11604 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        _11756 = mem[_11639]
                        mem[_11604 + 196 len ceil32(mem[_11639])] = mem[_11639 + 32 len ceil32(mem[_11639])]
                        if ceil32(_11756) > _11756:
                            mem[_11756 + _11604 + 196] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[_11604 + 200 len _11756 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_11604 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_11604 + 228] == bool(mem[_11604 + 228])
                                if not mem[_11604 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < _11574:
                            revert with 0, 17
                        require ext_code.size(banks[address(arg2)].field_16)
                        call banks[address(arg2)].field_16.repayBorrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - _11574)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'bad repay'
                    require ext_code.size(banks[address(arg2)].field_16)
                    staticcall banks[address(arg2)].field_16.borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    banks[address(arg2)].field_512 = ext_call.return_data[0]
                    if banks[address(arg2)].field_512 < ext_call.return_data[0]:
                        revert with 0, 17
                    if banks[address(arg2)].field_512 - ext_call.return_data[0] > currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768:
                        revert with 0, 'paid exceeds debt'
                    if banks[address(arg2)].field_512 - ext_call.return_data[0] == currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768:
                        if banks[address(arg2)].field_768 < currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 17
                        banks[address(arg2)].field_768 -= currentPositionInfo[arg1][5][address(arg2)].field_0
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 < currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 17
                        currentPositionInfo[arg1][5][address(arg2)].field_0 = 0
                        if stor149[stor141[arg1].field_0]:
                            if sub_85986a0e[stor141[arg1].field_0][address(arg2)] < currentPositionInfo[arg1][5][address(arg2)].field_0:
                                revert with 0, 17
                            sub_85986a0e[stor141[arg1].field_0][address(arg2)] -= currentPositionInfo[arg1][5][address(arg2)].field_0
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, banks[address(arg2)].field_512 - ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if currentPositionInfo[arg1].field_768 < ext_call.return_data[0]:
                                revert with 0, 17
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], currentPositionInfo[arg1][5][address(arg2)].field_0, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 < currentPositionInfo[arg1].field_768:
                                revert with 0, 17
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], currentPositionInfo[arg1][5][address(arg2)].field_0, currentPositionInfo[arg1].field_768);
                    else:
                        if banks[address(arg2)].field_512 - ext_call.return_data[0] and banks[address(arg2)].field_768 > -1 / banks[address(arg2)].field_512 - ext_call.return_data[0]:
                            revert with 0, 17
                        if not banks[address(arg2)].field_512:
                            revert with 0, 18
                        if banks[address(arg2)].field_768 < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                            revert with 0, 17
                        banks[address(arg2)].field_768 -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                            revert with 0, 17
                        currentPositionInfo[arg1][5][address(arg2)].field_0 -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                        if stor149[stor141[arg1].field_0]:
                            if sub_85986a0e[stor141[arg1].field_0][address(arg2)] < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                                revert with 0, 17
                            sub_85986a0e[stor141[arg1].field_0][address(arg2)] -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                        if not currentPositionInfo[arg1][5][address(arg2)].field_0 - ((banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512):
                            currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, banks[address(arg2)].field_512 - ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if currentPositionInfo[arg1].field_768 < ext_call.return_data[0]:
                                revert with 0, 17
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 < currentPositionInfo[arg1].field_768:
                                revert with 0, 17
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512, currentPositionInfo[arg1].field_768);
                else:
                    if currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768 > -2:
                        revert with 0, 17
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != -1:
                        _11539 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11563 = mem[_11539]
                        _11587 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg3
                        _11605 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_11587 + 132] = 32
                        mem[_11587 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        _11716 = mem[_11605]
                        mem[_11587 + 196 len ceil32(mem[_11605])] = mem[_11605 + 32 len ceil32(mem[_11605])]
                        if ceil32(_11716) > _11716:
                            mem[_11716 + _11587 + 196] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[_11587 + 200 len _11716 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_11587 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_11587 + 228] == bool(mem[_11587 + 228])
                                if not mem[_11587 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < _11563:
                            revert with 0, 17
                        require ext_code.size(banks[address(arg2)].field_16)
                        call banks[address(arg2)].field_16.repayBorrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - _11563)
                    else:
                        _11551 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11575 = mem[_11551]
                        _11607 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = (currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768) + 1
                        _11642 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_11607 + 132] = 32
                        mem[_11607 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        _11758 = mem[_11642]
                        mem[_11607 + 196 len ceil32(mem[_11642])] = mem[_11642 + 32 len ceil32(mem[_11642])]
                        if ceil32(_11758) > _11758:
                            mem[_11758 + _11607 + 196] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[_11607 + 200 len _11758 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_11607 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_11607 + 228] == bool(mem[_11607 + 228])
                                if not mem[_11607 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < _11575:
                            revert with 0, 17
                        require ext_code.size(banks[address(arg2)].field_16)
                        call banks[address(arg2)].field_16.repayBorrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - _11575)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'bad repay'
                    require ext_code.size(banks[address(arg2)].field_16)
                    staticcall banks[address(arg2)].field_16.borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    banks[address(arg2)].field_512 = ext_call.return_data[0]
                    if banks[address(arg2)].field_512 < ext_call.return_data[0]:
                        revert with 0, 17
                    if banks[address(arg2)].field_512 - ext_call.return_data[0] > (currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768) + 1:
                        revert with 0, 'paid exceeds debt'
                    if banks[address(arg2)].field_512 - ext_call.return_data[0] == (currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768) + 1:
                        if banks[address(arg2)].field_768 < currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 17
                        banks[address(arg2)].field_768 -= currentPositionInfo[arg1][5][address(arg2)].field_0
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 < currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 17
                        currentPositionInfo[arg1][5][address(arg2)].field_0 = 0
                        if stor149[stor141[arg1].field_0]:
                            if sub_85986a0e[stor141[arg1].field_0][address(arg2)] < currentPositionInfo[arg1][5][address(arg2)].field_0:
                                revert with 0, 17
                            sub_85986a0e[stor141[arg1].field_0][address(arg2)] -= currentPositionInfo[arg1][5][address(arg2)].field_0
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, banks[address(arg2)].field_512 - ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if currentPositionInfo[arg1].field_768 < ext_call.return_data[0]:
                                revert with 0, 17
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], currentPositionInfo[arg1][5][address(arg2)].field_0, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 < currentPositionInfo[arg1].field_768:
                                revert with 0, 17
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], currentPositionInfo[arg1][5][address(arg2)].field_0, currentPositionInfo[arg1].field_768);
                    else:
                        if banks[address(arg2)].field_512 - ext_call.return_data[0] and banks[address(arg2)].field_768 > -1 / banks[address(arg2)].field_512 - ext_call.return_data[0]:
                            revert with 0, 17
                        if not banks[address(arg2)].field_512:
                            revert with 0, 18
                        if banks[address(arg2)].field_768 < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                            revert with 0, 17
                        banks[address(arg2)].field_768 -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                            revert with 0, 17
                        currentPositionInfo[arg1][5][address(arg2)].field_0 -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                        if stor149[stor141[arg1].field_0]:
                            if sub_85986a0e[stor141[arg1].field_0][address(arg2)] < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                                revert with 0, 17
                            sub_85986a0e[stor141[arg1].field_0][address(arg2)] -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                        if not currentPositionInfo[arg1][5][address(arg2)].field_0 - ((banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512):
                            currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, banks[address(arg2)].field_512 - ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if currentPositionInfo[arg1].field_768 < ext_call.return_data[0]:
                                revert with 0, 17
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 < currentPositionInfo[arg1].field_768:
                                revert with 0, 17
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512, currentPositionInfo[arg1].field_768);
            else:
                if not currentPositionInfo[arg1].field_256:
                    revert with 0, 'bad collateral token'
                mem[ceil32(return_data.size) + 100] = currentPositionInfo[arg1].field_256
                mem[ceil32(return_data.size) + 132] = currentPositionInfo[arg1].field_512
                mem[ceil32(return_data.size) + 164] = currentPositionInfo[arg1].field_768
                mem[ceil32(return_data.size) + 196] = currentPositionInfo[arg1].field_0
                require ext_code.size(oracleAddress)
                staticcall oracleAddress.asETHCollateral(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                        gas gas_remaining wei
                       args currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, currentPositionInfo[arg1].field_0
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                mem[0] = arg1
                mem[32] = 141
                s = 0
                idx = stor4[sha3(mem[0 len 64])]
                t = 0
                while idx:
                    if not bool(idx):
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t
                        continue 
                    if s >= allBanks.length:
                        revert with 0, 50
                    mem[0] = allBanks[s]
                    mem[32] = 139
                    if currentPositionInfo[arg1][5][stor138[s]].field_0 and banks[stor138[s]].field_512 > -1 / currentPositionInfo[arg1][5][stor138[s]].field_0:
                        revert with 0, 17
                    if not banks[stor138[s]].field_768:
                        revert with 0, 18
                    if not banks[stor138[s]].field_768:
                        revert with 0, 18
                    if not currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 % banks[stor138[s]].field_768:
                        if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -1:
                            revert with 0, 17
                        mem[mem[64] + 4] = allBanks[s]
                        mem[mem[64] + 36] = currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768
                        mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                gas gas_remaining wei
                               args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11464 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_11464]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_11464]
                        continue 
                    if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                        revert with 0, 17
                    mem[mem[64] + 4] = allBanks[s]
                    mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                    mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                            gas gas_remaining wei
                           args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11465 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_11465]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = uint255(idx) * 0.5
                    t = t + mem[_11465]
                    continue 
                if ext_call.return_data[0] >= t:
                    revert with 0, 'position still healthy'
                mem[0] = arg2
                mem[32] = sha3(arg1, 141) + 5
                if currentPositionInfo[arg1][5][address(arg2)].field_0 and banks[address(arg2)].field_512 > -1 / currentPositionInfo[arg1][5][address(arg2)].field_0:
                    revert with 0, 17
                if not banks[address(arg2)].field_768:
                    revert with 0, 18
                if not banks[address(arg2)].field_768:
                    revert with 0, 18
                if not currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 % banks[address(arg2)].field_768:
                    if currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768 > -1:
                        revert with 0, 17
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != -1:
                        _11536 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11560 = mem[_11536]
                        _11584 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg3
                        _11596 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_11584 + 132] = 32
                        mem[_11584 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        _11704 = mem[_11596]
                        mem[_11584 + 196 len ceil32(mem[_11596])] = mem[_11596 + 32 len ceil32(mem[_11596])]
                        if ceil32(_11704) > _11704:
                            mem[_11704 + _11584 + 196] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[_11584 + 200 len _11704 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_11584 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_11584 + 228] == bool(mem[_11584 + 228])
                                if not mem[_11584 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < _11560:
                            revert with 0, 17
                        require ext_code.size(banks[address(arg2)].field_16)
                        call banks[address(arg2)].field_16.repayBorrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - _11560)
                    else:
                        _11548 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11572 = mem[_11548]
                        _11598 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768
                        _11633 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_11598 + 132] = 32
                        mem[_11598 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        _11752 = mem[_11633]
                        mem[_11598 + 196 len ceil32(mem[_11633])] = mem[_11633 + 32 len ceil32(mem[_11633])]
                        if ceil32(_11752) > _11752:
                            mem[_11752 + _11598 + 196] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[_11598 + 200 len _11752 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_11598 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_11598 + 228] == bool(mem[_11598 + 228])
                                if not mem[_11598 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < _11572:
                            revert with 0, 17
                        require ext_code.size(banks[address(arg2)].field_16)
                        call banks[address(arg2)].field_16.repayBorrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - _11572)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'bad repay'
                    require ext_code.size(banks[address(arg2)].field_16)
                    staticcall banks[address(arg2)].field_16.borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    banks[address(arg2)].field_512 = ext_call.return_data[0]
                    if banks[address(arg2)].field_512 < ext_call.return_data[0]:
                        revert with 0, 17
                    if banks[address(arg2)].field_512 - ext_call.return_data[0] > currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768:
                        revert with 0, 'paid exceeds debt'
                    if banks[address(arg2)].field_512 - ext_call.return_data[0] == currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768:
                        if banks[address(arg2)].field_768 < currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 17
                        banks[address(arg2)].field_768 -= currentPositionInfo[arg1][5][address(arg2)].field_0
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 < currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 17
                        currentPositionInfo[arg1][5][address(arg2)].field_0 = 0
                        if stor149[stor141[arg1].field_0]:
                            if sub_85986a0e[stor141[arg1].field_0][address(arg2)] < currentPositionInfo[arg1][5][address(arg2)].field_0:
                                revert with 0, 17
                            sub_85986a0e[stor141[arg1].field_0][address(arg2)] -= currentPositionInfo[arg1][5][address(arg2)].field_0
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, banks[address(arg2)].field_512 - ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if currentPositionInfo[arg1].field_768 < ext_call.return_data[0]:
                                revert with 0, 17
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], currentPositionInfo[arg1][5][address(arg2)].field_0, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 < currentPositionInfo[arg1].field_768:
                                revert with 0, 17
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], currentPositionInfo[arg1][5][address(arg2)].field_0, currentPositionInfo[arg1].field_768);
                    else:
                        if banks[address(arg2)].field_512 - ext_call.return_data[0] and banks[address(arg2)].field_768 > -1 / banks[address(arg2)].field_512 - ext_call.return_data[0]:
                            revert with 0, 17
                        if not banks[address(arg2)].field_512:
                            revert with 0, 18
                        if banks[address(arg2)].field_768 < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                            revert with 0, 17
                        banks[address(arg2)].field_768 -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                            revert with 0, 17
                        currentPositionInfo[arg1][5][address(arg2)].field_0 -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                        if stor149[stor141[arg1].field_0]:
                            if sub_85986a0e[stor141[arg1].field_0][address(arg2)] < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                                revert with 0, 17
                            sub_85986a0e[stor141[arg1].field_0][address(arg2)] -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                        if not currentPositionInfo[arg1][5][address(arg2)].field_0 - ((banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512):
                            currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, banks[address(arg2)].field_512 - ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if currentPositionInfo[arg1].field_768 < ext_call.return_data[0]:
                                revert with 0, 17
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 < currentPositionInfo[arg1].field_768:
                                revert with 0, 17
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512, currentPositionInfo[arg1].field_768);
                else:
                    if currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768 > -2:
                        revert with 0, 17
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != -1:
                        _11537 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11561 = mem[_11537]
                        _11585 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg3
                        _11599 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_11585 + 132] = 32
                        mem[_11585 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        _11708 = mem[_11599]
                        mem[_11585 + 196 len ceil32(mem[_11599])] = mem[_11599 + 32 len ceil32(mem[_11599])]
                        if ceil32(_11708) > _11708:
                            mem[_11708 + _11585 + 196] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[_11585 + 200 len _11708 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_11585 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_11585 + 228] == bool(mem[_11585 + 228])
                                if not mem[_11585 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < _11561:
                            revert with 0, 17
                        require ext_code.size(banks[address(arg2)].field_16)
                        call banks[address(arg2)].field_16.repayBorrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - _11561)
                    else:
                        _11549 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11573 = mem[_11549]
                        _11601 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = (currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768) + 1
                        _11636 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_11601 + 132] = 32
                        mem[_11601 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        _11754 = mem[_11636]
                        mem[_11601 + 196 len ceil32(mem[_11636])] = mem[_11636 + 32 len ceil32(mem[_11636])]
                        if ceil32(_11754) > _11754:
                            mem[_11754 + _11601 + 196] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[_11601 + 200 len _11754 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_11601 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_11601 + 228] == bool(mem[_11601 + 228])
                                if not mem[_11601 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < _11573:
                            revert with 0, 17
                        require ext_code.size(banks[address(arg2)].field_16)
                        call banks[address(arg2)].field_16.repayBorrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - _11573)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'bad repay'
                    require ext_code.size(banks[address(arg2)].field_16)
                    staticcall banks[address(arg2)].field_16.borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    banks[address(arg2)].field_512 = ext_call.return_data[0]
                    if banks[address(arg2)].field_512 < ext_call.return_data[0]:
                        revert with 0, 17
                    if banks[address(arg2)].field_512 - ext_call.return_data[0] > (currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768) + 1:
                        revert with 0, 'paid exceeds debt'
                    if banks[address(arg2)].field_512 - ext_call.return_data[0] == (currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768) + 1:
                        if banks[address(arg2)].field_768 < currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 17
                        banks[address(arg2)].field_768 -= currentPositionInfo[arg1][5][address(arg2)].field_0
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 < currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 17
                        currentPositionInfo[arg1][5][address(arg2)].field_0 = 0
                        if stor149[stor141[arg1].field_0]:
                            if sub_85986a0e[stor141[arg1].field_0][address(arg2)] < currentPositionInfo[arg1][5][address(arg2)].field_0:
                                revert with 0, 17
                            sub_85986a0e[stor141[arg1].field_0][address(arg2)] -= currentPositionInfo[arg1][5][address(arg2)].field_0
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, banks[address(arg2)].field_512 - ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if currentPositionInfo[arg1].field_768 < ext_call.return_data[0]:
                                revert with 0, 17
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], currentPositionInfo[arg1][5][address(arg2)].field_0, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 < currentPositionInfo[arg1].field_768:
                                revert with 0, 17
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], currentPositionInfo[arg1][5][address(arg2)].field_0, currentPositionInfo[arg1].field_768);
                    else:
                        if banks[address(arg2)].field_512 - ext_call.return_data[0] and banks[address(arg2)].field_768 > -1 / banks[address(arg2)].field_512 - ext_call.return_data[0]:
                            revert with 0, 17
                        if not banks[address(arg2)].field_512:
                            revert with 0, 18
                        if banks[address(arg2)].field_768 < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                            revert with 0, 17
                        banks[address(arg2)].field_768 -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                            revert with 0, 17
                        currentPositionInfo[arg1][5][address(arg2)].field_0 -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                        if stor149[stor141[arg1].field_0]:
                            if sub_85986a0e[stor141[arg1].field_0][address(arg2)] < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                                revert with 0, 17
                            sub_85986a0e[stor141[arg1].field_0][address(arg2)] -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                        if not currentPositionInfo[arg1][5][address(arg2)].field_0 - ((banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512):
                            currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, banks[address(arg2)].field_512 - ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if currentPositionInfo[arg1].field_768 < ext_call.return_data[0]:
                                revert with 0, 17
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 < currentPositionInfo[arg1].field_768:
                                revert with 0, 17
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512, currentPositionInfo[arg1].field_768);
        else:
            banks[address(arg2)].field_512 = ext_call.return_data[0]
            if not currentPositionInfo[arg1].field_768:
                mem[0] = arg1
                mem[32] = 141
                s = 0
                idx = stor4[sha3(mem[0 len 64])]
                t = 0
                while idx:
                    if not bool(idx):
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t
                        continue 
                    if s >= allBanks.length:
                        revert with 0, 50
                    mem[0] = allBanks[s]
                    mem[32] = 139
                    if currentPositionInfo[arg1][5][stor138[s]].field_0 and banks[stor138[s]].field_512 > -1 / currentPositionInfo[arg1][5][stor138[s]].field_0:
                        revert with 0, 17
                    if not banks[stor138[s]].field_768:
                        revert with 0, 18
                    if not banks[stor138[s]].field_768:
                        revert with 0, 18
                    if not currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 % banks[stor138[s]].field_768:
                        if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -1:
                            revert with 0, 17
                        mem[mem[64] + 4] = allBanks[s]
                        mem[mem[64] + 36] = currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768
                        mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                gas gas_remaining wei
                               args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11470 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_11470]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_11470]
                        continue 
                    if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                        revert with 0, 17
                    mem[mem[64] + 4] = allBanks[s]
                    mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                    mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                            gas gas_remaining wei
                           args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11471 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_11471]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = uint255(idx) * 0.5
                    t = t + mem[_11471]
                    continue 
                if 0 >= t:
                    revert with 0, 'position still healthy'
                mem[0] = arg2
                mem[32] = sha3(arg1, 141) + 5
                if currentPositionInfo[arg1][5][address(arg2)].field_0 and banks[address(arg2)].field_512 > -1 / currentPositionInfo[arg1][5][address(arg2)].field_0:
                    revert with 0, 17
                if not banks[address(arg2)].field_768:
                    revert with 0, 18
                if not banks[address(arg2)].field_768:
                    revert with 0, 18
                if not currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 % banks[address(arg2)].field_768:
                    if currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768 > -1:
                        revert with 0, 17
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != -1:
                        _11542 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11566 = mem[_11542]
                        _11590 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg3
                        _11614 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_11590 + 132] = 32
                        mem[_11590 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        _11728 = mem[_11614]
                        mem[_11590 + 196 len ceil32(mem[_11614])] = mem[_11614 + 32 len ceil32(mem[_11614])]
                        if ceil32(_11728) > _11728:
                            mem[_11728 + _11590 + 196] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[_11590 + 200 len _11728 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_11590 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_11590 + 228] == bool(mem[_11590 + 228])
                                if not mem[_11590 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < _11566:
                            revert with 0, 17
                        require ext_code.size(banks[address(arg2)].field_16)
                        call banks[address(arg2)].field_16.repayBorrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - _11566)
                    else:
                        _11554 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11578 = mem[_11554]
                        _11616 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768
                        _11651 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_11616 + 132] = 32
                        mem[_11616 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        _11764 = mem[_11651]
                        mem[_11616 + 196 len ceil32(mem[_11651])] = mem[_11651 + 32 len ceil32(mem[_11651])]
                        if ceil32(_11764) > _11764:
                            mem[_11764 + _11616 + 196] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[_11616 + 200 len _11764 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_11616 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_11616 + 228] == bool(mem[_11616 + 228])
                                if not mem[_11616 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < _11578:
                            revert with 0, 17
                        require ext_code.size(banks[address(arg2)].field_16)
                        call banks[address(arg2)].field_16.repayBorrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - _11578)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'bad repay'
                    require ext_code.size(banks[address(arg2)].field_16)
                    staticcall banks[address(arg2)].field_16.borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    banks[address(arg2)].field_512 = ext_call.return_data[0]
                    if banks[address(arg2)].field_512 < ext_call.return_data[0]:
                        revert with 0, 17
                    if banks[address(arg2)].field_512 - ext_call.return_data[0] > currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768:
                        revert with 0, 'paid exceeds debt'
                    if banks[address(arg2)].field_512 - ext_call.return_data[0] == currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768:
                        if banks[address(arg2)].field_768 < currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 17
                        banks[address(arg2)].field_768 -= currentPositionInfo[arg1][5][address(arg2)].field_0
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 < currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 17
                        currentPositionInfo[arg1][5][address(arg2)].field_0 = 0
                        if stor149[stor141[arg1].field_0]:
                            if sub_85986a0e[stor141[arg1].field_0][address(arg2)] < currentPositionInfo[arg1][5][address(arg2)].field_0:
                                revert with 0, 17
                            sub_85986a0e[stor141[arg1].field_0][address(arg2)] -= currentPositionInfo[arg1][5][address(arg2)].field_0
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, banks[address(arg2)].field_512 - ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if currentPositionInfo[arg1].field_768 < ext_call.return_data[0]:
                                revert with 0, 17
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], currentPositionInfo[arg1][5][address(arg2)].field_0, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 < currentPositionInfo[arg1].field_768:
                                revert with 0, 17
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], currentPositionInfo[arg1][5][address(arg2)].field_0, currentPositionInfo[arg1].field_768);
                    else:
                        if banks[address(arg2)].field_512 - ext_call.return_data[0] and banks[address(arg2)].field_768 > -1 / banks[address(arg2)].field_512 - ext_call.return_data[0]:
                            revert with 0, 17
                        if not banks[address(arg2)].field_512:
                            revert with 0, 18
                        if banks[address(arg2)].field_768 < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                            revert with 0, 17
                        banks[address(arg2)].field_768 -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                            revert with 0, 17
                        currentPositionInfo[arg1][5][address(arg2)].field_0 -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                        if stor149[stor141[arg1].field_0]:
                            if sub_85986a0e[stor141[arg1].field_0][address(arg2)] < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                                revert with 0, 17
                            sub_85986a0e[stor141[arg1].field_0][address(arg2)] -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                        if not currentPositionInfo[arg1][5][address(arg2)].field_0 - ((banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512):
                            currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, banks[address(arg2)].field_512 - ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if currentPositionInfo[arg1].field_768 < ext_call.return_data[0]:
                                revert with 0, 17
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 < currentPositionInfo[arg1].field_768:
                                revert with 0, 17
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512, currentPositionInfo[arg1].field_768);
                else:
                    if currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768 > -2:
                        revert with 0, 17
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != -1:
                        _11543 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11567 = mem[_11543]
                        _11591 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg3
                        _11617 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_11591 + 132] = 32
                        mem[_11591 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        _11732 = mem[_11617]
                        mem[_11591 + 196 len ceil32(mem[_11617])] = mem[_11617 + 32 len ceil32(mem[_11617])]
                        if ceil32(_11732) > _11732:
                            mem[_11732 + _11591 + 196] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[_11591 + 200 len _11732 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_11591 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_11591 + 228] == bool(mem[_11591 + 228])
                                if not mem[_11591 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < _11567:
                            revert with 0, 17
                        require ext_code.size(banks[address(arg2)].field_16)
                        call banks[address(arg2)].field_16.repayBorrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - _11567)
                    else:
                        _11555 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11579 = mem[_11555]
                        _11619 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = (currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768) + 1
                        _11654 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_11619 + 132] = 32
                        mem[_11619 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        _11766 = mem[_11654]
                        mem[_11619 + 196 len ceil32(mem[_11654])] = mem[_11654 + 32 len ceil32(mem[_11654])]
                        if ceil32(_11766) > _11766:
                            mem[_11766 + _11619 + 196] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[_11619 + 200 len _11766 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_11619 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_11619 + 228] == bool(mem[_11619 + 228])
                                if not mem[_11619 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < _11579:
                            revert with 0, 17
                        require ext_code.size(banks[address(arg2)].field_16)
                        call banks[address(arg2)].field_16.repayBorrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - _11579)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'bad repay'
                    require ext_code.size(banks[address(arg2)].field_16)
                    staticcall banks[address(arg2)].field_16.borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    banks[address(arg2)].field_512 = ext_call.return_data[0]
                    if banks[address(arg2)].field_512 < ext_call.return_data[0]:
                        revert with 0, 17
                    if banks[address(arg2)].field_512 - ext_call.return_data[0] > (currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768) + 1:
                        revert with 0, 'paid exceeds debt'
                    if banks[address(arg2)].field_512 - ext_call.return_data[0] == (currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768) + 1:
                        if banks[address(arg2)].field_768 < currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 17
                        banks[address(arg2)].field_768 -= currentPositionInfo[arg1][5][address(arg2)].field_0
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 < currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 17
                        currentPositionInfo[arg1][5][address(arg2)].field_0 = 0
                        if stor149[stor141[arg1].field_0]:
                            if sub_85986a0e[stor141[arg1].field_0][address(arg2)] < currentPositionInfo[arg1][5][address(arg2)].field_0:
                                revert with 0, 17
                            sub_85986a0e[stor141[arg1].field_0][address(arg2)] -= currentPositionInfo[arg1][5][address(arg2)].field_0
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, banks[address(arg2)].field_512 - ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if currentPositionInfo[arg1].field_768 < ext_call.return_data[0]:
                                revert with 0, 17
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], currentPositionInfo[arg1][5][address(arg2)].field_0, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 < currentPositionInfo[arg1].field_768:
                                revert with 0, 17
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], currentPositionInfo[arg1][5][address(arg2)].field_0, currentPositionInfo[arg1].field_768);
                    else:
                        if banks[address(arg2)].field_512 - ext_call.return_data[0] and banks[address(arg2)].field_768 > -1 / banks[address(arg2)].field_512 - ext_call.return_data[0]:
                            revert with 0, 17
                        if not banks[address(arg2)].field_512:
                            revert with 0, 18
                        if banks[address(arg2)].field_768 < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                            revert with 0, 17
                        banks[address(arg2)].field_768 -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                            revert with 0, 17
                        currentPositionInfo[arg1][5][address(arg2)].field_0 -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                        if stor149[stor141[arg1].field_0]:
                            if sub_85986a0e[stor141[arg1].field_0][address(arg2)] < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                                revert with 0, 17
                            sub_85986a0e[stor141[arg1].field_0][address(arg2)] -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                        if not currentPositionInfo[arg1][5][address(arg2)].field_0 - ((banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512):
                            currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, banks[address(arg2)].field_512 - ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if currentPositionInfo[arg1].field_768 < ext_call.return_data[0]:
                                revert with 0, 17
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 < currentPositionInfo[arg1].field_768:
                                revert with 0, 17
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512, currentPositionInfo[arg1].field_768);
            else:
                if not currentPositionInfo[arg1].field_256:
                    revert with 0, 'bad collateral token'
                mem[ceil32(return_data.size) + 100] = currentPositionInfo[arg1].field_256
                mem[ceil32(return_data.size) + 132] = currentPositionInfo[arg1].field_512
                mem[ceil32(return_data.size) + 164] = currentPositionInfo[arg1].field_768
                mem[ceil32(return_data.size) + 196] = currentPositionInfo[arg1].field_0
                require ext_code.size(oracleAddress)
                staticcall oracleAddress.asETHCollateral(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                        gas gas_remaining wei
                       args currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, currentPositionInfo[arg1].field_0
                mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                mem[0] = arg1
                mem[32] = 141
                s = 0
                idx = stor4[sha3(mem[0 len 64])]
                t = 0
                while idx:
                    if not bool(idx):
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t
                        continue 
                    if s >= allBanks.length:
                        revert with 0, 50
                    mem[0] = allBanks[s]
                    mem[32] = 139
                    if currentPositionInfo[arg1][5][stor138[s]].field_0 and banks[stor138[s]].field_512 > -1 / currentPositionInfo[arg1][5][stor138[s]].field_0:
                        revert with 0, 17
                    if not banks[stor138[s]].field_768:
                        revert with 0, 18
                    if not banks[stor138[s]].field_768:
                        revert with 0, 18
                    if not currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 % banks[stor138[s]].field_768:
                        if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -1:
                            revert with 0, 17
                        mem[mem[64] + 4] = allBanks[s]
                        mem[mem[64] + 36] = currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768
                        mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                                gas gas_remaining wei
                               args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11468 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_11468]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_11468]
                        continue 
                    if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                        revert with 0, 17
                    mem[mem[64] + 4] = allBanks[s]
                    mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                    mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                            gas gas_remaining wei
                           args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11469 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_11469]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = uint255(idx) * 0.5
                    t = t + mem[_11469]
                    continue 
                if ext_call.return_data[0] >= t:
                    revert with 0, 'position still healthy'
                mem[0] = arg2
                mem[32] = sha3(arg1, 141) + 5
                if currentPositionInfo[arg1][5][address(arg2)].field_0 and banks[address(arg2)].field_512 > -1 / currentPositionInfo[arg1][5][address(arg2)].field_0:
                    revert with 0, 17
                if not banks[address(arg2)].field_768:
                    revert with 0, 18
                if not banks[address(arg2)].field_768:
                    revert with 0, 18
                if not currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 % banks[address(arg2)].field_768:
                    if currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768 > -1:
                        revert with 0, 17
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != -1:
                        _11540 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11564 = mem[_11540]
                        _11588 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg3
                        _11608 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_11588 + 132] = 32
                        mem[_11588 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        _11720 = mem[_11608]
                        mem[_11588 + 196 len ceil32(mem[_11608])] = mem[_11608 + 32 len ceil32(mem[_11608])]
                        if ceil32(_11720) > _11720:
                            mem[_11720 + _11588 + 196] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[_11588 + 200 len _11720 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_11588 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_11588 + 228] == bool(mem[_11588 + 228])
                                if not mem[_11588 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < _11564:
                            revert with 0, 17
                        require ext_code.size(banks[address(arg2)].field_16)
                        call banks[address(arg2)].field_16.repayBorrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - _11564)
                    else:
                        _11552 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11576 = mem[_11552]
                        _11610 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768
                        _11645 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_11610 + 132] = 32
                        mem[_11610 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        _11760 = mem[_11645]
                        mem[_11610 + 196 len ceil32(mem[_11645])] = mem[_11645 + 32 len ceil32(mem[_11645])]
                        if ceil32(_11760) > _11760:
                            mem[_11760 + _11610 + 196] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[_11610 + 200 len _11760 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_11610 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_11610 + 228] == bool(mem[_11610 + 228])
                                if not mem[_11610 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < _11576:
                            revert with 0, 17
                        require ext_code.size(banks[address(arg2)].field_16)
                        call banks[address(arg2)].field_16.repayBorrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - _11576)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'bad repay'
                    require ext_code.size(banks[address(arg2)].field_16)
                    staticcall banks[address(arg2)].field_16.borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    banks[address(arg2)].field_512 = ext_call.return_data[0]
                    if banks[address(arg2)].field_512 < ext_call.return_data[0]:
                        revert with 0, 17
                    if banks[address(arg2)].field_512 - ext_call.return_data[0] > currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768:
                        revert with 0, 'paid exceeds debt'
                    if banks[address(arg2)].field_512 - ext_call.return_data[0] == currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768:
                        if banks[address(arg2)].field_768 < currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 17
                        banks[address(arg2)].field_768 -= currentPositionInfo[arg1][5][address(arg2)].field_0
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 < currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 17
                        currentPositionInfo[arg1][5][address(arg2)].field_0 = 0
                        if stor149[stor141[arg1].field_0]:
                            if sub_85986a0e[stor141[arg1].field_0][address(arg2)] < currentPositionInfo[arg1][5][address(arg2)].field_0:
                                revert with 0, 17
                            sub_85986a0e[stor141[arg1].field_0][address(arg2)] -= currentPositionInfo[arg1][5][address(arg2)].field_0
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, banks[address(arg2)].field_512 - ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if currentPositionInfo[arg1].field_768 < ext_call.return_data[0]:
                                revert with 0, 17
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], currentPositionInfo[arg1][5][address(arg2)].field_0, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 < currentPositionInfo[arg1].field_768:
                                revert with 0, 17
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], currentPositionInfo[arg1][5][address(arg2)].field_0, currentPositionInfo[arg1].field_768);
                    else:
                        if banks[address(arg2)].field_512 - ext_call.return_data[0] and banks[address(arg2)].field_768 > -1 / banks[address(arg2)].field_512 - ext_call.return_data[0]:
                            revert with 0, 17
                        if not banks[address(arg2)].field_512:
                            revert with 0, 18
                        if banks[address(arg2)].field_768 < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                            revert with 0, 17
                        banks[address(arg2)].field_768 -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                            revert with 0, 17
                        currentPositionInfo[arg1][5][address(arg2)].field_0 -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                        if stor149[stor141[arg1].field_0]:
                            if sub_85986a0e[stor141[arg1].field_0][address(arg2)] < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                                revert with 0, 17
                            sub_85986a0e[stor141[arg1].field_0][address(arg2)] -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                        if not currentPositionInfo[arg1][5][address(arg2)].field_0 - ((banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512):
                            currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, banks[address(arg2)].field_512 - ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if currentPositionInfo[arg1].field_768 < ext_call.return_data[0]:
                                revert with 0, 17
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 < currentPositionInfo[arg1].field_768:
                                revert with 0, 17
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512, currentPositionInfo[arg1].field_768);
                else:
                    if currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768 > -2:
                        revert with 0, 17
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if arg3 != -1:
                        _11541 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11565 = mem[_11541]
                        _11589 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg3
                        _11611 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_11589 + 132] = 32
                        mem[_11589 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        _11724 = mem[_11611]
                        mem[_11589 + 196 len ceil32(mem[_11611])] = mem[_11611 + 32 len ceil32(mem[_11611])]
                        if ceil32(_11724) > _11724:
                            mem[_11724 + _11589 + 196] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[_11589 + 200 len _11724 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_11589 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_11589 + 228] == bool(mem[_11589 + 228])
                                if not mem[_11589 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < _11565:
                            revert with 0, 17
                        require ext_code.size(banks[address(arg2)].field_16)
                        call banks[address(arg2)].field_16.repayBorrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - _11565)
                    else:
                        _11553 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _11577 = mem[_11553]
                        _11613 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = (currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768) + 1
                        _11648 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_11613 + 132] = 32
                        mem[_11613 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        _11762 = mem[_11648]
                        mem[_11613 + 196 len ceil32(mem[_11648])] = mem[_11648 + 32 len ceil32(mem[_11648])]
                        if ceil32(_11762) > _11762:
                            mem[_11762 + _11613 + 196] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[_11613 + 200 len _11762 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[_11613 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_11613 + 228] == bool(mem[_11613 + 228])
                                if not mem[_11613 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < _11577:
                            revert with 0, 17
                        require ext_code.size(banks[address(arg2)].field_16)
                        call banks[address(arg2)].field_16.repayBorrow(uint256 arg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - _11577)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'bad repay'
                    require ext_code.size(banks[address(arg2)].field_16)
                    staticcall banks[address(arg2)].field_16.borrowBalanceStored(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    banks[address(arg2)].field_512 = ext_call.return_data[0]
                    if banks[address(arg2)].field_512 < ext_call.return_data[0]:
                        revert with 0, 17
                    if banks[address(arg2)].field_512 - ext_call.return_data[0] > (currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768) + 1:
                        revert with 0, 'paid exceeds debt'
                    if banks[address(arg2)].field_512 - ext_call.return_data[0] == (currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768) + 1:
                        if banks[address(arg2)].field_768 < currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 17
                        banks[address(arg2)].field_768 -= currentPositionInfo[arg1][5][address(arg2)].field_0
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 < currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 17
                        currentPositionInfo[arg1][5][address(arg2)].field_0 = 0
                        if stor149[stor141[arg1].field_0]:
                            if sub_85986a0e[stor141[arg1].field_0][address(arg2)] < currentPositionInfo[arg1][5][address(arg2)].field_0:
                                revert with 0, 17
                            sub_85986a0e[stor141[arg1].field_0][address(arg2)] -= currentPositionInfo[arg1][5][address(arg2)].field_0
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, banks[address(arg2)].field_512 - ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if currentPositionInfo[arg1].field_768 < ext_call.return_data[0]:
                                revert with 0, 17
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], currentPositionInfo[arg1][5][address(arg2)].field_0, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 < currentPositionInfo[arg1].field_768:
                                revert with 0, 17
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], currentPositionInfo[arg1][5][address(arg2)].field_0, currentPositionInfo[arg1].field_768);
                    else:
                        if banks[address(arg2)].field_512 - ext_call.return_data[0] and banks[address(arg2)].field_768 > -1 / banks[address(arg2)].field_512 - ext_call.return_data[0]:
                            revert with 0, 17
                        if not banks[address(arg2)].field_512:
                            revert with 0, 18
                        if banks[address(arg2)].field_768 < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                            revert with 0, 17
                        banks[address(arg2)].field_768 -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                            revert with 0, 17
                        currentPositionInfo[arg1][5][address(arg2)].field_0 -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                        if stor149[stor141[arg1].field_0]:
                            if sub_85986a0e[stor141[arg1].field_0][address(arg2)] < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                                revert with 0, 17
                            sub_85986a0e[stor141[arg1].field_0][address(arg2)] -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                        if not currentPositionInfo[arg1][5][address(arg2)].field_0 - ((banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512):
                            currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, banks[address(arg2)].field_512 - ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if currentPositionInfo[arg1].field_768 < ext_call.return_data[0]:
                                revert with 0, 17
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 < currentPositionInfo[arg1].field_768:
                                revert with 0, 17
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                                 gas gas_remaining wei
                                args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512, currentPositionInfo[arg1].field_768);
    else:
        if ext_call.return_data[0] < banks[address(arg2)].field_512:
            revert with 0, 17
        if ext_call.return_data[0] - banks[address(arg2)].field_512 and feeBps > -1 / ext_call.return_data[0] - banks[address(arg2)].field_512:
            revert with 0, 17
        banks[address(arg2)].field_512 = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 100] = (ext_call.return_data[0] * feeBps) - (banks[address(arg2)].field_512 * feeBps) / 10000
        require ext_code.size(banks[address(arg2)].field_16)
        call banks[address(arg2)].field_16.borrow(uint256 arg1) with:
             gas gas_remaining wei
            args ((ext_call.return_data[0] * feeBps) - (banks[address(arg2)].field_512 * feeBps) / 10000)
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'bad borrow'
        mem[(4 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        if banks[address(arg2)].field_512 > !((ext_call.return_data[0] * feeBps) - (banks[address(arg2)].field_512 * feeBps) / 10000):
            revert with 0, 17
        banks[address(arg2)].field_512 += (ext_call.return_data[0] * feeBps) - (banks[address(arg2)].field_512 * feeBps) / 10000
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 17
        if banks[address(arg2)].field_256 > !0:
            revert with 0, 17
        if not currentPositionInfo[arg1].field_768:
            mem[0] = arg1
            mem[32] = 141
            s = 0
            idx = stor4[sha3(mem[0 len 64])]
            t = 0
            while idx:
                if not bool(idx):
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = uint255(idx) * 0.5
                    t = t
                    continue 
                if s >= allBanks.length:
                    revert with 0, 50
                mem[0] = allBanks[s]
                mem[32] = 139
                if currentPositionInfo[arg1][5][stor138[s]].field_0 and banks[stor138[s]].field_512 > -1 / currentPositionInfo[arg1][5][stor138[s]].field_0:
                    revert with 0, 17
                if not banks[stor138[s]].field_768:
                    revert with 0, 18
                if not banks[stor138[s]].field_768:
                    revert with 0, 18
                if not currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 % banks[stor138[s]].field_768:
                    if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -1:
                        revert with 0, 17
                    mem[mem[64] + 4] = allBanks[s]
                    mem[mem[64] + 36] = currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768
                    mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                            gas gas_remaining wei
                           args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11474 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_11474]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = uint255(idx) * 0.5
                    t = t + mem[_11474]
                    continue 
                if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                    revert with 0, 17
                mem[mem[64] + 4] = allBanks[s]
                mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                require ext_code.size(oracleAddress)
                staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                        gas gas_remaining wei
                       args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11475 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if t > !mem[_11475]:
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = uint255(idx) * 0.5
                t = t + mem[_11475]
                continue 
            if 0 >= t:
                revert with 0, 'position still healthy'
            mem[0] = arg2
            mem[32] = sha3(arg1, 141) + 5
            if currentPositionInfo[arg1][5][address(arg2)].field_0 and banks[address(arg2)].field_512 > -1 / currentPositionInfo[arg1][5][address(arg2)].field_0:
                revert with 0, 17
            if not banks[address(arg2)].field_768:
                revert with 0, 18
            if not banks[address(arg2)].field_768:
                revert with 0, 18
            if not currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 % banks[address(arg2)].field_768:
                if currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768 > -1:
                    revert with 0, 17
                mem[mem[64] + 4] = this.address
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg3 != -1:
                    _11546 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11570 = mem[_11546]
                    _11594 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = arg3
                    _11626 = mem[64]
                    mem[mem[64]] = 100
                    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                    mem[64] = mem[64] + 196
                    mem[_11594 + 132] = 32
                    mem[_11594 + 164] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    _11744 = mem[_11626]
                    mem[_11594 + 196 len ceil32(mem[_11626])] = mem[_11626 + 32 len ceil32(mem[_11626])]
                    if ceil32(_11744) > _11744:
                        mem[_11744 + _11594 + 196] = 0
                    call arg2 with:
                         gas gas_remaining wei
                        args mem[_11594 + 200 len _11744 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_11594 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_11594 + 228] == bool(mem[_11594 + 228])
                            if not mem[_11594 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < _11570:
                        revert with 0, 17
                    require ext_code.size(banks[address(arg2)].field_16)
                    call banks[address(arg2)].field_16.repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] - _11570)
                else:
                    _11558 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11582 = mem[_11558]
                    _11628 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768
                    _11663 = mem[64]
                    mem[mem[64]] = 100
                    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                    mem[64] = mem[64] + 196
                    mem[_11628 + 132] = 32
                    mem[_11628 + 164] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    _11772 = mem[_11663]
                    mem[_11628 + 196 len ceil32(mem[_11663])] = mem[_11663 + 32 len ceil32(mem[_11663])]
                    if ceil32(_11772) > _11772:
                        mem[_11772 + _11628 + 196] = 0
                    call arg2 with:
                         gas gas_remaining wei
                        args mem[_11628 + 200 len _11772 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_11628 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_11628 + 228] == bool(mem[_11628 + 228])
                            if not mem[_11628 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < _11582:
                        revert with 0, 17
                    require ext_code.size(banks[address(arg2)].field_16)
                    call banks[address(arg2)].field_16.repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] - _11582)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'bad repay'
                require ext_code.size(banks[address(arg2)].field_16)
                staticcall banks[address(arg2)].field_16.borrowBalanceStored(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                banks[address(arg2)].field_512 = ext_call.return_data[0]
                if banks[address(arg2)].field_512 < ext_call.return_data[0]:
                    revert with 0, 17
                if banks[address(arg2)].field_512 - ext_call.return_data[0] > currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768:
                    revert with 0, 'paid exceeds debt'
                if banks[address(arg2)].field_512 - ext_call.return_data[0] == currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768:
                    if banks[address(arg2)].field_768 < currentPositionInfo[arg1][5][address(arg2)].field_0:
                        revert with 0, 17
                    banks[address(arg2)].field_768 -= currentPositionInfo[arg1][5][address(arg2)].field_0
                    if currentPositionInfo[arg1][5][address(arg2)].field_0 < currentPositionInfo[arg1][5][address(arg2)].field_0:
                        revert with 0, 17
                    currentPositionInfo[arg1][5][address(arg2)].field_0 = 0
                    if stor149[stor141[arg1].field_0]:
                        if sub_85986a0e[stor141[arg1].field_0][address(arg2)] < currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 17
                        sub_85986a0e[stor141[arg1].field_0][address(arg2)] -= currentPositionInfo[arg1][5][address(arg2)].field_0
                    currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                    if not currentPositionInfo[arg1].field_256:
                        revert with 0, 'bad collateral token'
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.convertForLiquidation(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                            gas gas_remaining wei
                           args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, banks[address(arg2)].field_512 - ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                        if currentPositionInfo[arg1].field_768 < ext_call.return_data[0]:
                            revert with 0, 17
                        currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                        require ext_code.size(currentPositionInfo[arg1].field_256)
                        call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], currentPositionInfo[arg1][5][address(arg2)].field_0, ext_call.return_data[0]);
                    else:
                        if currentPositionInfo[arg1].field_768 < currentPositionInfo[arg1].field_768:
                            revert with 0, 17
                        currentPositionInfo[arg1].field_768 = 0
                        require ext_code.size(currentPositionInfo[arg1].field_256)
                        call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], currentPositionInfo[arg1][5][address(arg2)].field_0, currentPositionInfo[arg1].field_768);
                else:
                    if banks[address(arg2)].field_512 - ext_call.return_data[0] and banks[address(arg2)].field_768 > -1 / banks[address(arg2)].field_512 - ext_call.return_data[0]:
                        revert with 0, 17
                    if not banks[address(arg2)].field_512:
                        revert with 0, 18
                    if banks[address(arg2)].field_768 < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                        revert with 0, 17
                    banks[address(arg2)].field_768 -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                    if currentPositionInfo[arg1][5][address(arg2)].field_0 < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                        revert with 0, 17
                    currentPositionInfo[arg1][5][address(arg2)].field_0 -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                    if stor149[stor141[arg1].field_0]:
                        if sub_85986a0e[stor141[arg1].field_0][address(arg2)] < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                            revert with 0, 17
                        sub_85986a0e[stor141[arg1].field_0][address(arg2)] -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                    if not currentPositionInfo[arg1][5][address(arg2)].field_0 - ((banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512):
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                    if not currentPositionInfo[arg1].field_256:
                        revert with 0, 'bad collateral token'
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.convertForLiquidation(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                            gas gas_remaining wei
                           args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, banks[address(arg2)].field_512 - ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                        if currentPositionInfo[arg1].field_768 < ext_call.return_data[0]:
                            revert with 0, 17
                        currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                        require ext_code.size(currentPositionInfo[arg1].field_256)
                        call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512, ext_call.return_data[0]);
                    else:
                        if currentPositionInfo[arg1].field_768 < currentPositionInfo[arg1].field_768:
                            revert with 0, 17
                        currentPositionInfo[arg1].field_768 = 0
                        require ext_code.size(currentPositionInfo[arg1].field_256)
                        call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512, currentPositionInfo[arg1].field_768);
            else:
                if currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768 > -2:
                    revert with 0, 17
                mem[mem[64] + 4] = this.address
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg3 != -1:
                    _11547 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11571 = mem[_11547]
                    _11595 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = arg3
                    _11629 = mem[64]
                    mem[mem[64]] = 100
                    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                    mem[64] = mem[64] + 196
                    mem[_11595 + 132] = 32
                    mem[_11595 + 164] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    _11748 = mem[_11629]
                    mem[_11595 + 196 len ceil32(mem[_11629])] = mem[_11629 + 32 len ceil32(mem[_11629])]
                    if ceil32(_11748) > _11748:
                        mem[_11748 + _11595 + 196] = 0
                    call arg2 with:
                         gas gas_remaining wei
                        args mem[_11595 + 200 len _11748 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_11595 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_11595 + 228] == bool(mem[_11595 + 228])
                            if not mem[_11595 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < _11571:
                        revert with 0, 17
                    require ext_code.size(banks[address(arg2)].field_16)
                    call banks[address(arg2)].field_16.repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] - _11571)
                else:
                    _11559 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11583 = mem[_11559]
                    _11631 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = (currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768) + 1
                    _11666 = mem[64]
                    mem[mem[64]] = 100
                    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                    mem[64] = mem[64] + 196
                    mem[_11631 + 132] = 32
                    mem[_11631 + 164] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    _11774 = mem[_11666]
                    mem[_11631 + 196 len ceil32(mem[_11666])] = mem[_11666 + 32 len ceil32(mem[_11666])]
                    if ceil32(_11774) > _11774:
                        mem[_11774 + _11631 + 196] = 0
                    call arg2 with:
                         gas gas_remaining wei
                        args mem[_11631 + 200 len _11774 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_11631 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_11631 + 228] == bool(mem[_11631 + 228])
                            if not mem[_11631 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < _11583:
                        revert with 0, 17
                    require ext_code.size(banks[address(arg2)].field_16)
                    call banks[address(arg2)].field_16.repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] - _11583)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'bad repay'
                require ext_code.size(banks[address(arg2)].field_16)
                staticcall banks[address(arg2)].field_16.borrowBalanceStored(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                banks[address(arg2)].field_512 = ext_call.return_data[0]
                if banks[address(arg2)].field_512 < ext_call.return_data[0]:
                    revert with 0, 17
                if banks[address(arg2)].field_512 - ext_call.return_data[0] > (currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768) + 1:
                    revert with 0, 'paid exceeds debt'
                if banks[address(arg2)].field_512 - ext_call.return_data[0] == (currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768) + 1:
                    if banks[address(arg2)].field_768 < currentPositionInfo[arg1][5][address(arg2)].field_0:
                        revert with 0, 17
                    banks[address(arg2)].field_768 -= currentPositionInfo[arg1][5][address(arg2)].field_0
                    if currentPositionInfo[arg1][5][address(arg2)].field_0 < currentPositionInfo[arg1][5][address(arg2)].field_0:
                        revert with 0, 17
                    currentPositionInfo[arg1][5][address(arg2)].field_0 = 0
                    if stor149[stor141[arg1].field_0]:
                        if sub_85986a0e[stor141[arg1].field_0][address(arg2)] < currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 17
                        sub_85986a0e[stor141[arg1].field_0][address(arg2)] -= currentPositionInfo[arg1][5][address(arg2)].field_0
                    currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                    if not currentPositionInfo[arg1].field_256:
                        revert with 0, 'bad collateral token'
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.convertForLiquidation(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                            gas gas_remaining wei
                           args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, banks[address(arg2)].field_512 - ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                        if currentPositionInfo[arg1].field_768 < ext_call.return_data[0]:
                            revert with 0, 17
                        currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                        require ext_code.size(currentPositionInfo[arg1].field_256)
                        call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], currentPositionInfo[arg1][5][address(arg2)].field_0, ext_call.return_data[0]);
                    else:
                        if currentPositionInfo[arg1].field_768 < currentPositionInfo[arg1].field_768:
                            revert with 0, 17
                        currentPositionInfo[arg1].field_768 = 0
                        require ext_code.size(currentPositionInfo[arg1].field_256)
                        call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], currentPositionInfo[arg1][5][address(arg2)].field_0, currentPositionInfo[arg1].field_768);
                else:
                    if banks[address(arg2)].field_512 - ext_call.return_data[0] and banks[address(arg2)].field_768 > -1 / banks[address(arg2)].field_512 - ext_call.return_data[0]:
                        revert with 0, 17
                    if not banks[address(arg2)].field_512:
                        revert with 0, 18
                    if banks[address(arg2)].field_768 < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                        revert with 0, 17
                    banks[address(arg2)].field_768 -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                    if currentPositionInfo[arg1][5][address(arg2)].field_0 < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                        revert with 0, 17
                    currentPositionInfo[arg1][5][address(arg2)].field_0 -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                    if stor149[stor141[arg1].field_0]:
                        if sub_85986a0e[stor141[arg1].field_0][address(arg2)] < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                            revert with 0, 17
                        sub_85986a0e[stor141[arg1].field_0][address(arg2)] -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                    if not currentPositionInfo[arg1][5][address(arg2)].field_0 - ((banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512):
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                    if not currentPositionInfo[arg1].field_256:
                        revert with 0, 'bad collateral token'
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.convertForLiquidation(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                            gas gas_remaining wei
                           args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, banks[address(arg2)].field_512 - ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                        if currentPositionInfo[arg1].field_768 < ext_call.return_data[0]:
                            revert with 0, 17
                        currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                        require ext_code.size(currentPositionInfo[arg1].field_256)
                        call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512, ext_call.return_data[0]);
                    else:
                        if currentPositionInfo[arg1].field_768 < currentPositionInfo[arg1].field_768:
                            revert with 0, 17
                        currentPositionInfo[arg1].field_768 = 0
                        require ext_code.size(currentPositionInfo[arg1].field_256)
                        call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512, currentPositionInfo[arg1].field_768);
        else:
            if not currentPositionInfo[arg1].field_256:
                revert with 0, 'bad collateral token'
            mem[(6 * ceil32(return_data.size)) + 100] = currentPositionInfo[arg1].field_256
            mem[(6 * ceil32(return_data.size)) + 132] = currentPositionInfo[arg1].field_512
            mem[(6 * ceil32(return_data.size)) + 164] = currentPositionInfo[arg1].field_768
            mem[(6 * ceil32(return_data.size)) + 196] = currentPositionInfo[arg1].field_0
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.asETHCollateral(address arg1, uint256 arg2, uint256 arg3, address arg4) with:
                    gas gas_remaining wei
                   args currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, currentPositionInfo[arg1].field_0
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (7 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            mem[0] = arg1
            mem[32] = 141
            s = 0
            idx = stor4[sha3(mem[0 len 64])]
            t = 0
            while idx:
                if not bool(idx):
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = uint255(idx) * 0.5
                    t = t
                    continue 
                if s >= allBanks.length:
                    revert with 0, 50
                mem[0] = allBanks[s]
                mem[32] = 139
                if currentPositionInfo[arg1][5][stor138[s]].field_0 and banks[stor138[s]].field_512 > -1 / currentPositionInfo[arg1][5][stor138[s]].field_0:
                    revert with 0, 17
                if not banks[stor138[s]].field_768:
                    revert with 0, 18
                if not banks[stor138[s]].field_768:
                    revert with 0, 18
                if not currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 % banks[stor138[s]].field_768:
                    if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -1:
                        revert with 0, 17
                    mem[mem[64] + 4] = allBanks[s]
                    mem[mem[64] + 36] = currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768
                    mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                            gas gas_remaining wei
                           args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _11472 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_11472]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = uint255(idx) * 0.5
                    t = t + mem[_11472]
                    continue 
                if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                    revert with 0, 17
                mem[mem[64] + 4] = allBanks[s]
                mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                require ext_code.size(oracleAddress)
                staticcall oracleAddress.asETHBorrow(address arg1, uint256 arg2, address arg3) with:
                        gas gas_remaining wei
                       args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _11473 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if t > !mem[_11473]:
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = uint255(idx) * 0.5
                t = t + mem[_11473]
                continue 
            if ext_call.return_data[0] >= t:
                revert with 0, 'position still healthy'
            mem[0] = arg2
            mem[32] = sha3(arg1, 141) + 5
            if currentPositionInfo[arg1][5][address(arg2)].field_0 and banks[address(arg2)].field_512 > -1 / currentPositionInfo[arg1][5][address(arg2)].field_0:
                revert with 0, 17
            if not banks[address(arg2)].field_768:
                revert with 0, 18
            if not banks[address(arg2)].field_768:
                revert with 0, 18
            if not currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 % banks[address(arg2)].field_768:
                if currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768 > -1:
                    revert with 0, 17
                mem[mem[64] + 4] = this.address
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg3 != -1:
                    _11544 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11568 = mem[_11544]
                    _11592 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = arg3
                    _11620 = mem[64]
                    mem[mem[64]] = 100
                    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                    mem[64] = mem[64] + 196
                    mem[_11592 + 132] = 32
                    mem[_11592 + 164] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    _11736 = mem[_11620]
                    mem[_11592 + 196 len ceil32(mem[_11620])] = mem[_11620 + 32 len ceil32(mem[_11620])]
                    if ceil32(_11736) > _11736:
                        mem[_11736 + _11592 + 196] = 0
                    call arg2 with:
                         gas gas_remaining wei
                        args mem[_11592 + 200 len _11736 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_11592 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_11592 + 228] == bool(mem[_11592 + 228])
                            if not mem[_11592 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < _11568:
                        revert with 0, 17
                    require ext_code.size(banks[address(arg2)].field_16)
                    call banks[address(arg2)].field_16.repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] - _11568)
                else:
                    _11556 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11580 = mem[_11556]
                    _11622 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768
                    _11657 = mem[64]
                    mem[mem[64]] = 100
                    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                    mem[64] = mem[64] + 196
                    mem[_11622 + 132] = 32
                    mem[_11622 + 164] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    _11768 = mem[_11657]
                    mem[_11622 + 196 len ceil32(mem[_11657])] = mem[_11657 + 32 len ceil32(mem[_11657])]
                    if ceil32(_11768) > _11768:
                        mem[_11768 + _11622 + 196] = 0
                    call arg2 with:
                         gas gas_remaining wei
                        args mem[_11622 + 200 len _11768 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_11622 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_11622 + 228] == bool(mem[_11622 + 228])
                            if not mem[_11622 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < _11580:
                        revert with 0, 17
                    require ext_code.size(banks[address(arg2)].field_16)
                    call banks[address(arg2)].field_16.repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] - _11580)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'bad repay'
                require ext_code.size(banks[address(arg2)].field_16)
                staticcall banks[address(arg2)].field_16.borrowBalanceStored(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                banks[address(arg2)].field_512 = ext_call.return_data[0]
                if banks[address(arg2)].field_512 < ext_call.return_data[0]:
                    revert with 0, 17
                if banks[address(arg2)].field_512 - ext_call.return_data[0] > currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768:
                    revert with 0, 'paid exceeds debt'
                if banks[address(arg2)].field_512 - ext_call.return_data[0] == currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768:
                    if banks[address(arg2)].field_768 < currentPositionInfo[arg1][5][address(arg2)].field_0:
                        revert with 0, 17
                    banks[address(arg2)].field_768 -= currentPositionInfo[arg1][5][address(arg2)].field_0
                    if currentPositionInfo[arg1][5][address(arg2)].field_0 < currentPositionInfo[arg1][5][address(arg2)].field_0:
                        revert with 0, 17
                    currentPositionInfo[arg1][5][address(arg2)].field_0 = 0
                    if stor149[stor141[arg1].field_0]:
                        if sub_85986a0e[stor141[arg1].field_0][address(arg2)] < currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 17
                        sub_85986a0e[stor141[arg1].field_0][address(arg2)] -= currentPositionInfo[arg1][5][address(arg2)].field_0
                    currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                    if not currentPositionInfo[arg1].field_256:
                        revert with 0, 'bad collateral token'
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.convertForLiquidation(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                            gas gas_remaining wei
                           args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, banks[address(arg2)].field_512 - ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                        if currentPositionInfo[arg1].field_768 < ext_call.return_data[0]:
                            revert with 0, 17
                        currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                        require ext_code.size(currentPositionInfo[arg1].field_256)
                        call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], currentPositionInfo[arg1][5][address(arg2)].field_0, ext_call.return_data[0]);
                    else:
                        if currentPositionInfo[arg1].field_768 < currentPositionInfo[arg1].field_768:
                            revert with 0, 17
                        currentPositionInfo[arg1].field_768 = 0
                        require ext_code.size(currentPositionInfo[arg1].field_256)
                        call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], currentPositionInfo[arg1][5][address(arg2)].field_0, currentPositionInfo[arg1].field_768);
                else:
                    if banks[address(arg2)].field_512 - ext_call.return_data[0] and banks[address(arg2)].field_768 > -1 / banks[address(arg2)].field_512 - ext_call.return_data[0]:
                        revert with 0, 17
                    if not banks[address(arg2)].field_512:
                        revert with 0, 18
                    if banks[address(arg2)].field_768 < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                        revert with 0, 17
                    banks[address(arg2)].field_768 -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                    if currentPositionInfo[arg1][5][address(arg2)].field_0 < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                        revert with 0, 17
                    currentPositionInfo[arg1][5][address(arg2)].field_0 -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                    if stor149[stor141[arg1].field_0]:
                        if sub_85986a0e[stor141[arg1].field_0][address(arg2)] < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                            revert with 0, 17
                        sub_85986a0e[stor141[arg1].field_0][address(arg2)] -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                    if not currentPositionInfo[arg1][5][address(arg2)].field_0 - ((banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512):
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                    if not currentPositionInfo[arg1].field_256:
                        revert with 0, 'bad collateral token'
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.convertForLiquidation(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                            gas gas_remaining wei
                           args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, banks[address(arg2)].field_512 - ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                        if currentPositionInfo[arg1].field_768 < ext_call.return_data[0]:
                            revert with 0, 17
                        currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                        require ext_code.size(currentPositionInfo[arg1].field_256)
                        call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512, ext_call.return_data[0]);
                    else:
                        if currentPositionInfo[arg1].field_768 < currentPositionInfo[arg1].field_768:
                            revert with 0, 17
                        currentPositionInfo[arg1].field_768 = 0
                        require ext_code.size(currentPositionInfo[arg1].field_256)
                        call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512, currentPositionInfo[arg1].field_768);
            else:
                if currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768 > -2:
                    revert with 0, 17
                mem[mem[64] + 4] = this.address
                require ext_code.size(arg2)
                staticcall arg2.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if arg3 != -1:
                    _11545 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11569 = mem[_11545]
                    _11593 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = arg3
                    _11623 = mem[64]
                    mem[mem[64]] = 100
                    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                    mem[64] = mem[64] + 196
                    mem[_11593 + 132] = 32
                    mem[_11593 + 164] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    _11740 = mem[_11623]
                    mem[_11593 + 196 len ceil32(mem[_11623])] = mem[_11623 + 32 len ceil32(mem[_11623])]
                    if ceil32(_11740) > _11740:
                        mem[_11740 + _11593 + 196] = 0
                    call arg2 with:
                         gas gas_remaining wei
                        args mem[_11593 + 200 len _11740 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_11593 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_11593 + 228] == bool(mem[_11593 + 228])
                            if not mem[_11593 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < _11569:
                        revert with 0, 17
                    require ext_code.size(banks[address(arg2)].field_16)
                    call banks[address(arg2)].field_16.repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] - _11569)
                else:
                    _11557 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _11581 = mem[_11557]
                    _11625 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = (currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768) + 1
                    _11660 = mem[64]
                    mem[mem[64]] = 100
                    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                    mem[64] = mem[64] + 196
                    mem[_11625 + 132] = 32
                    mem[_11625 + 164] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    _11770 = mem[_11660]
                    mem[_11625 + 196 len ceil32(mem[_11660])] = mem[_11660 + 32 len ceil32(mem[_11660])]
                    if ceil32(_11770) > _11770:
                        mem[_11770 + _11625 + 196] = 0
                    call arg2 with:
                         gas gas_remaining wei
                        args mem[_11625 + 200 len _11770 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[_11625 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_11625 + 228] == bool(mem[_11625 + 228])
                            if not mem[_11625 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < _11581:
                        revert with 0, 17
                    require ext_code.size(banks[address(arg2)].field_16)
                    call banks[address(arg2)].field_16.repayBorrow(uint256 arg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] - _11581)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'bad repay'
                require ext_code.size(banks[address(arg2)].field_16)
                staticcall banks[address(arg2)].field_16.borrowBalanceStored(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                banks[address(arg2)].field_512 = ext_call.return_data[0]
                if banks[address(arg2)].field_512 < ext_call.return_data[0]:
                    revert with 0, 17
                if banks[address(arg2)].field_512 - ext_call.return_data[0] > (currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768) + 1:
                    revert with 0, 'paid exceeds debt'
                if banks[address(arg2)].field_512 - ext_call.return_data[0] == (currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768) + 1:
                    if banks[address(arg2)].field_768 < currentPositionInfo[arg1][5][address(arg2)].field_0:
                        revert with 0, 17
                    banks[address(arg2)].field_768 -= currentPositionInfo[arg1][5][address(arg2)].field_0
                    if currentPositionInfo[arg1][5][address(arg2)].field_0 < currentPositionInfo[arg1][5][address(arg2)].field_0:
                        revert with 0, 17
                    currentPositionInfo[arg1][5][address(arg2)].field_0 = 0
                    if stor149[stor141[arg1].field_0]:
                        if sub_85986a0e[stor141[arg1].field_0][address(arg2)] < currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 17
                        sub_85986a0e[stor141[arg1].field_0][address(arg2)] -= currentPositionInfo[arg1][5][address(arg2)].field_0
                    currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                    if not currentPositionInfo[arg1].field_256:
                        revert with 0, 'bad collateral token'
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.convertForLiquidation(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                            gas gas_remaining wei
                           args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, banks[address(arg2)].field_512 - ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                        if currentPositionInfo[arg1].field_768 < ext_call.return_data[0]:
                            revert with 0, 17
                        currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                        require ext_code.size(currentPositionInfo[arg1].field_256)
                        call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], currentPositionInfo[arg1][5][address(arg2)].field_0, ext_call.return_data[0]);
                    else:
                        if currentPositionInfo[arg1].field_768 < currentPositionInfo[arg1].field_768:
                            revert with 0, 17
                        currentPositionInfo[arg1].field_768 = 0
                        require ext_code.size(currentPositionInfo[arg1].field_256)
                        call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], currentPositionInfo[arg1][5][address(arg2)].field_0, currentPositionInfo[arg1].field_768);
                else:
                    if banks[address(arg2)].field_512 - ext_call.return_data[0] and banks[address(arg2)].field_768 > -1 / banks[address(arg2)].field_512 - ext_call.return_data[0]:
                        revert with 0, 17
                    if not banks[address(arg2)].field_512:
                        revert with 0, 18
                    if banks[address(arg2)].field_768 < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                        revert with 0, 17
                    banks[address(arg2)].field_768 -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                    if currentPositionInfo[arg1][5][address(arg2)].field_0 < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                        revert with 0, 17
                    currentPositionInfo[arg1][5][address(arg2)].field_0 -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                    if stor149[stor141[arg1].field_0]:
                        if sub_85986a0e[stor141[arg1].field_0][address(arg2)] < (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512:
                            revert with 0, 17
                        sub_85986a0e[stor141[arg1].field_0][address(arg2)] -= (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512
                    if not currentPositionInfo[arg1][5][address(arg2)].field_0 - ((banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512):
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                    if not currentPositionInfo[arg1].field_256:
                        revert with 0, 'bad collateral token'
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.convertForLiquidation(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                            gas gas_remaining wei
                           args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, banks[address(arg2)].field_512 - ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                        if currentPositionInfo[arg1].field_768 < ext_call.return_data[0]:
                            revert with 0, 17
                        currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                        require ext_code.size(currentPositionInfo[arg1].field_256)
                        call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512, ext_call.return_data[0]);
                    else:
                        if currentPositionInfo[arg1].field_768 < currentPositionInfo[arg1].field_768:
                            revert with 0, 17
                        currentPositionInfo[arg1].field_768 = 0
                        require ext_code.size(currentPositionInfo[arg1].field_256)
                        call currentPositionInfo[arg1].field_256.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512, currentPositionInfo[arg1].field_768);
    _GENERAL_LOCK = 1
}



}
