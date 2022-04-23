contract main {




// =====================  Runtime code  =====================


#
#  - withdrawReserve(address arg1, uint256 arg2)
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
    staticcall oracleAddress.asETHCollateral(address rg1, uint256 rg2, uint256 rg3, address rg4) with:
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
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[36] + 36)] == bool(cd[((32 * idx) + cd[36] + 36)])
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 145
        stor145[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[((32 * idx) + cd[36] + 36)]))
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
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
        call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
        call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                    code: code.data[17666 len 492]
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
    call banks[address(arg1)].field_16.borrowBalanceCurrent(address rg1) with:
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
        call banks[address(arg1)].field_16.borrow(uint256 rg1) with:
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
        staticcall oracleAddress.supportWrappedToken(address rg1, uint256 rg2) with:
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
            staticcall oracleAddress.supportWrappedToken(address rg1, uint256 rg2) with:
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
    staticcall arg1.balanceOf(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2, arg3, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1, uint256 rg2) with:
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
            staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
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
        staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
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
    call banks[address(arg2)].field_16.borrowBalanceCurrent(address rg1) with:
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
        call banks[address(arg2)].field_16.borrow(uint256 rg1) with:
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
        call banks[mem[0]].field_16.borrowBalanceCurrent(address rg1) with:
             gas gas_remaining wei
            args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _60 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _61 = mem[_60]
        if mem[_60] <= banks[mem[0]].field_512:
            if banks[mem[0]].field_512 != mem[_60]:
                banks[mem[0]].field_512 = mem[_60]
        else:
            if mem[_60] < banks[mem[0]].field_512:
                revert with 0, 17
            if mem[_60] - banks[mem[0]].field_512 and feeBps > -1 / mem[_60] - banks[mem[0]].field_512:
                revert with 0, 17
            banks[mem[0]].field_512 = mem[_60]
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
            call banks[address(_54)].field_16.borrow(uint256 rg1) with:
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
    call banks[address(arg1)].field_16.borrowBalanceCurrent(address rg1) with:
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
            call banks[address(arg1)].field_16.borrow(uint256 rg1) with:
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
                call banks[address(arg1)].field_16.borrow(uint256 rg1) with:
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
                call banks[address(arg1)].field_16.borrow(uint256 rg1) with:
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
        call banks[address(arg1)].field_16.borrow(uint256 rg1) with:
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
            call banks[address(arg1)].field_16.borrow(uint256 rg1) with:
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
                call banks[address(arg1)].field_16.borrow(uint256 rg1) with:
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
                call banks[address(arg1)].field_16.borrow(uint256 rg1) with:
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

function repay(address arg1, uint256 arg2) {
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
    call banks[address(arg1)].field_16.borrowBalanceCurrent(address rg1) with:
         gas gas_remaining wei
        args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= banks[address(arg1)].field_512:
        if banks[address(arg1)].field_512 != ext_call.return_data[0]:
            banks[address(arg1)].field_512 = ext_call.return_data[0]
        if not Mask(1, 1, uint256(sub_0e5641e6)):
            revert with 0, 'repay not allowed'
        if not stor143[address(arg1)]:
            revert with 0, 'token not whitelisted'
        if currentPositionInfo[stor132][5][address(arg1)].field_0 and banks[address(arg1)].field_512 > -1 / currentPositionInfo[stor132][5][address(arg1)].field_0:
            revert with 0, 17
        if not banks[address(arg1)].field_768:
            revert with 0, 18
        if not banks[address(arg1)].field_768:
            revert with 0, 18
        if not currentPositionInfo[stor132][5][address(arg1)].field_0 * banks[address(arg1)].field_512 % banks[address(arg1)].field_768:
            if currentPositionInfo[stor132][5][address(arg1)].field_0 * banks[address(arg1)].field_512 / banks[address(arg1)].field_768 > -1:
                revert with 0, 17
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 164] = this.address
            if arg2 != -1:
                mem[(2 * ceil32(return_data.size)) + 196] = arg2
                mem[(2 * ceil32(return_data.size)) + 96] = 100
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                mem[(2 * ceil32(return_data.size)) + 228] = 32
                mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                mem[(2 * ceil32(return_data.size)) + 392] = 0
                call arg1 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
            else:
                mem[(2 * ceil32(return_data.size)) + 196] = currentPositionInfo[stor132][5][address(arg1)].field_0 * banks[address(arg1)].field_512 / banks[address(arg1)].field_768
                mem[(2 * ceil32(return_data.size)) + 96] = 100
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                mem[(2 * ceil32(return_data.size)) + 228] = 32
                mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), currentPositionInfo[stor132][5][address(arg1)].field_0 * banks[address(arg1)].field_512 / banks[address(arg1)].field_768, 0
                mem[(2 * ceil32(return_data.size)) + 392] = 0
                call arg1 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), currentPositionInfo[stor132][5][address(arg1)].field_0 * banks[address(arg1)].field_512 / banks[address(arg1)].field_768, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), currentPositionInfo[stor132][5][address(arg1)].field_0 * banks[address(arg1)].field_512 / banks[address(arg1)].field_768, 0) << 544)
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
                mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
                    if not mem[(2 * ceil32(return_data.size)) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(banks[address(arg1)].field_16)
            call banks[address(arg1)].field_16.repayBorrow(uint256 rg1) with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'bad repay'
            require ext_code.size(banks[address(arg1)].field_16)
            staticcall banks[address(arg1)].field_16.borrowBalanceStored(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            banks[address(arg1)].field_512 = ext_call.return_data[0]
            if banks[address(arg1)].field_512 < ext_call.return_data[0]:
                revert with 0, 17
            if banks[address(arg1)].field_512 - ext_call.return_data[0] > currentPositionInfo[stor132][5][address(arg1)].field_0 * banks[address(arg1)].field_512 / banks[address(arg1)].field_768:
                revert with 0, 'paid exceeds debt'
            if banks[address(arg1)].field_512 - ext_call.return_data[0] == currentPositionInfo[stor132][5][address(arg1)].field_0 * banks[address(arg1)].field_512 / banks[address(arg1)].field_768:
                if banks[address(arg1)].field_768 < currentPositionInfo[stor132][5][address(arg1)].field_0:
                    revert with 0, 17
                banks[address(arg1)].field_768 -= currentPositionInfo[stor132][5][address(arg1)].field_0
                if currentPositionInfo[stor132][5][address(arg1)].field_0 < currentPositionInfo[stor132][5][address(arg1)].field_0:
                    revert with 0, 17
                currentPositionInfo[stor132][5][address(arg1)].field_0 = 0
                currentPositionInfo[stor132].field_1024 = currentPositionInfo[stor132].field_1024 and !(1 << banks[address(arg1)].field_8)
                emit Repay(POSITION_ID, msg.sender, address(arg1), banks[address(arg1)].field_512 - ext_call.return_data[0], currentPositionInfo[stor132][5][address(arg1)].field_0);
            else:
                if banks[address(arg1)].field_512 - ext_call.return_data[0] and banks[address(arg1)].field_768 > -1 / banks[address(arg1)].field_512 - ext_call.return_data[0]:
                    revert with 0, 17
                if not banks[address(arg1)].field_512:
                    revert with 0, 18
                if banks[address(arg1)].field_768 < (banks[address(arg1)].field_512 * banks[address(arg1)].field_768) - (ext_call.return_data[0] * banks[address(arg1)].field_768) / banks[address(arg1)].field_512:
                    revert with 0, 17
                banks[address(arg1)].field_768 -= (banks[address(arg1)].field_512 * banks[address(arg1)].field_768) - (ext_call.return_data[0] * banks[address(arg1)].field_768) / banks[address(arg1)].field_512
                if currentPositionInfo[stor132][5][address(arg1)].field_0 < (banks[address(arg1)].field_512 * banks[address(arg1)].field_768) - (ext_call.return_data[0] * banks[address(arg1)].field_768) / banks[address(arg1)].field_512:
                    revert with 0, 17
                currentPositionInfo[stor132][5][address(arg1)].field_0 -= (banks[address(arg1)].field_512 * banks[address(arg1)].field_768) - (ext_call.return_data[0] * banks[address(arg1)].field_768) / banks[address(arg1)].field_512
                if not currentPositionInfo[stor132][5][address(arg1)].field_0 - ((banks[address(arg1)].field_512 * banks[address(arg1)].field_768) - (ext_call.return_data[0] * banks[address(arg1)].field_768) / banks[address(arg1)].field_512):
                    currentPositionInfo[stor132].field_1024 = currentPositionInfo[stor132].field_1024 and !(1 << banks[address(arg1)].field_8)
                emit Repay(POSITION_ID, msg.sender, address(arg1), banks[address(arg1)].field_512 - ext_call.return_data[0], (banks[address(arg1)].field_512 * banks[address(arg1)].field_768) - (ext_call.return_data[0] * banks[address(arg1)].field_768) / banks[address(arg1)].field_512);
        else:
            if currentPositionInfo[stor132][5][address(arg1)].field_0 * banks[address(arg1)].field_512 / banks[address(arg1)].field_768 > -2:
                revert with 0, 17
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 164] = this.address
            if arg2 != -1:
                mem[(2 * ceil32(return_data.size)) + 196] = arg2
                mem[(2 * ceil32(return_data.size)) + 96] = 100
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                mem[(2 * ceil32(return_data.size)) + 228] = 32
                mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                mem[(2 * ceil32(return_data.size)) + 392] = 0
                call arg1 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
            else:
                mem[(2 * ceil32(return_data.size)) + 196] = (currentPositionInfo[stor132][5][address(arg1)].field_0 * banks[address(arg1)].field_512 / banks[address(arg1)].field_768) + 1
                mem[(2 * ceil32(return_data.size)) + 96] = 100
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                mem[(2 * ceil32(return_data.size)) + 228] = 32
                mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), (currentPositionInfo[stor132][5][address(arg1)].field_0 * banks[address(arg1)].field_512 / banks[address(arg1)].field_768) + 1, 0
                mem[(2 * ceil32(return_data.size)) + 392] = 0
                call arg1 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), (currentPositionInfo[stor132][5][address(arg1)].field_0 * banks[address(arg1)].field_512 / banks[address(arg1)].field_768) + 1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), (currentPositionInfo[stor132][5][address(arg1)].field_0 * banks[address(arg1)].field_512 / banks[address(arg1)].field_768) + 1, 0) << 544)
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
                mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
                    if not mem[(2 * ceil32(return_data.size)) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(banks[address(arg1)].field_16)
            call banks[address(arg1)].field_16.repayBorrow(uint256 rg1) with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'bad repay'
            require ext_code.size(banks[address(arg1)].field_16)
            staticcall banks[address(arg1)].field_16.borrowBalanceStored(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            banks[address(arg1)].field_512 = ext_call.return_data[0]
            if banks[address(arg1)].field_512 < ext_call.return_data[0]:
                revert with 0, 17
            if banks[address(arg1)].field_512 - ext_call.return_data[0] > (currentPositionInfo[stor132][5][address(arg1)].field_0 * banks[address(arg1)].field_512 / banks[address(arg1)].field_768) + 1:
                revert with 0, 'paid exceeds debt'
            if banks[address(arg1)].field_512 - ext_call.return_data[0] == (currentPositionInfo[stor132][5][address(arg1)].field_0 * banks[address(arg1)].field_512 / banks[address(arg1)].field_768) + 1:
                if banks[address(arg1)].field_768 < currentPositionInfo[stor132][5][address(arg1)].field_0:
                    revert with 0, 17
                banks[address(arg1)].field_768 -= currentPositionInfo[stor132][5][address(arg1)].field_0
                if currentPositionInfo[stor132][5][address(arg1)].field_0 < currentPositionInfo[stor132][5][address(arg1)].field_0:
                    revert with 0, 17
                currentPositionInfo[stor132][5][address(arg1)].field_0 = 0
                currentPositionInfo[stor132].field_1024 = currentPositionInfo[stor132].field_1024 and !(1 << banks[address(arg1)].field_8)
                emit Repay(POSITION_ID, msg.sender, address(arg1), banks[address(arg1)].field_512 - ext_call.return_data[0], currentPositionInfo[stor132][5][address(arg1)].field_0);
            else:
                if banks[address(arg1)].field_512 - ext_call.return_data[0] and banks[address(arg1)].field_768 > -1 / banks[address(arg1)].field_512 - ext_call.return_data[0]:
                    revert with 0, 17
                if not banks[address(arg1)].field_512:
                    revert with 0, 18
                if banks[address(arg1)].field_768 < (banks[address(arg1)].field_512 * banks[address(arg1)].field_768) - (ext_call.return_data[0] * banks[address(arg1)].field_768) / banks[address(arg1)].field_512:
                    revert with 0, 17
                banks[address(arg1)].field_768 -= (banks[address(arg1)].field_512 * banks[address(arg1)].field_768) - (ext_call.return_data[0] * banks[address(arg1)].field_768) / banks[address(arg1)].field_512
                if currentPositionInfo[stor132][5][address(arg1)].field_0 < (banks[address(arg1)].field_512 * banks[address(arg1)].field_768) - (ext_call.return_data[0] * banks[address(arg1)].field_768) / banks[address(arg1)].field_512:
                    revert with 0, 17
                currentPositionInfo[stor132][5][address(arg1)].field_0 -= (banks[address(arg1)].field_512 * banks[address(arg1)].field_768) - (ext_call.return_data[0] * banks[address(arg1)].field_768) / banks[address(arg1)].field_512
                if not currentPositionInfo[stor132][5][address(arg1)].field_0 - ((banks[address(arg1)].field_512 * banks[address(arg1)].field_768) - (ext_call.return_data[0] * banks[address(arg1)].field_768) / banks[address(arg1)].field_512):
                    currentPositionInfo[stor132].field_1024 = currentPositionInfo[stor132].field_1024 and !(1 << banks[address(arg1)].field_8)
                emit Repay(POSITION_ID, msg.sender, address(arg1), banks[address(arg1)].field_512 - ext_call.return_data[0], (banks[address(arg1)].field_512 * banks[address(arg1)].field_768) - (ext_call.return_data[0] * banks[address(arg1)].field_768) / banks[address(arg1)].field_512);
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
        call banks[address(arg1)].field_16.borrow(uint256 rg1) with:
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
        if not Mask(1, 1, uint256(sub_0e5641e6)):
            revert with 0, 'repay not allowed'
        if not stor143[address(arg1)]:
            revert with 0, 'token not whitelisted'
        if currentPositionInfo[stor132][5][address(arg1)].field_0 and banks[address(arg1)].field_512 > -1 / currentPositionInfo[stor132][5][address(arg1)].field_0:
            revert with 0, 17
        if not banks[address(arg1)].field_768:
            revert with 0, 18
        if not banks[address(arg1)].field_768:
            revert with 0, 18
        if not currentPositionInfo[stor132][5][address(arg1)].field_0 * banks[address(arg1)].field_512 % banks[address(arg1)].field_768:
            if currentPositionInfo[stor132][5][address(arg1)].field_0 * banks[address(arg1)].field_512 / banks[address(arg1)].field_768 > -1:
                revert with 0, 17
            mem[(6 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(7 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(7 * ceil32(return_data.size)) + 164] = this.address
            if arg2 != -1:
                mem[(7 * ceil32(return_data.size)) + 196] = arg2
                mem[(7 * ceil32(return_data.size)) + 96] = 100
                mem[(7 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                mem[(7 * ceil32(return_data.size)) + 228] = 32
                mem[(7 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                mem[(7 * ceil32(return_data.size)) + 392] = 0
                call arg1 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
            else:
                mem[(7 * ceil32(return_data.size)) + 196] = currentPositionInfo[stor132][5][address(arg1)].field_0 * banks[address(arg1)].field_512 / banks[address(arg1)].field_768
                mem[(7 * ceil32(return_data.size)) + 96] = 100
                mem[(7 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                mem[(7 * ceil32(return_data.size)) + 228] = 32
                mem[(7 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), currentPositionInfo[stor132][5][address(arg1)].field_0 * banks[address(arg1)].field_512 / banks[address(arg1)].field_768, 0
                mem[(7 * ceil32(return_data.size)) + 392] = 0
                call arg1 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), currentPositionInfo[stor132][5][address(arg1)].field_0 * banks[address(arg1)].field_512 / banks[address(arg1)].field_768, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), currentPositionInfo[stor132][5][address(arg1)].field_0 * banks[address(arg1)].field_512 / banks[address(arg1)].field_768, 0) << 544)
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
                mem[(7 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(7 * ceil32(return_data.size)) + 324] == bool(mem[(7 * ceil32(return_data.size)) + 324])
                    if not mem[(7 * ceil32(return_data.size)) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(banks[address(arg1)].field_16)
            call banks[address(arg1)].field_16.repayBorrow(uint256 rg1) with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'bad repay'
            require ext_code.size(banks[address(arg1)].field_16)
            staticcall banks[address(arg1)].field_16.borrowBalanceStored(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            banks[address(arg1)].field_512 = ext_call.return_data[0]
            if banks[address(arg1)].field_512 < ext_call.return_data[0]:
                revert with 0, 17
            if banks[address(arg1)].field_512 - ext_call.return_data[0] > currentPositionInfo[stor132][5][address(arg1)].field_0 * banks[address(arg1)].field_512 / banks[address(arg1)].field_768:
                revert with 0, 'paid exceeds debt'
            if banks[address(arg1)].field_512 - ext_call.return_data[0] == currentPositionInfo[stor132][5][address(arg1)].field_0 * banks[address(arg1)].field_512 / banks[address(arg1)].field_768:
                if banks[address(arg1)].field_768 < currentPositionInfo[stor132][5][address(arg1)].field_0:
                    revert with 0, 17
                banks[address(arg1)].field_768 -= currentPositionInfo[stor132][5][address(arg1)].field_0
                if currentPositionInfo[stor132][5][address(arg1)].field_0 < currentPositionInfo[stor132][5][address(arg1)].field_0:
                    revert with 0, 17
                currentPositionInfo[stor132][5][address(arg1)].field_0 = 0
                currentPositionInfo[stor132].field_1024 = currentPositionInfo[stor132].field_1024 and !(1 << banks[address(arg1)].field_8)
                emit Repay(POSITION_ID, msg.sender, address(arg1), banks[address(arg1)].field_512 - ext_call.return_data[0], currentPositionInfo[stor132][5][address(arg1)].field_0);
            else:
                if banks[address(arg1)].field_512 - ext_call.return_data[0] and banks[address(arg1)].field_768 > -1 / banks[address(arg1)].field_512 - ext_call.return_data[0]:
                    revert with 0, 17
                if not banks[address(arg1)].field_512:
                    revert with 0, 18
                if banks[address(arg1)].field_768 < (banks[address(arg1)].field_512 * banks[address(arg1)].field_768) - (ext_call.return_data[0] * banks[address(arg1)].field_768) / banks[address(arg1)].field_512:
                    revert with 0, 17
                banks[address(arg1)].field_768 -= (banks[address(arg1)].field_512 * banks[address(arg1)].field_768) - (ext_call.return_data[0] * banks[address(arg1)].field_768) / banks[address(arg1)].field_512
                if currentPositionInfo[stor132][5][address(arg1)].field_0 < (banks[address(arg1)].field_512 * banks[address(arg1)].field_768) - (ext_call.return_data[0] * banks[address(arg1)].field_768) / banks[address(arg1)].field_512:
                    revert with 0, 17
                currentPositionInfo[stor132][5][address(arg1)].field_0 -= (banks[address(arg1)].field_512 * banks[address(arg1)].field_768) - (ext_call.return_data[0] * banks[address(arg1)].field_768) / banks[address(arg1)].field_512
                if not currentPositionInfo[stor132][5][address(arg1)].field_0 - ((banks[address(arg1)].field_512 * banks[address(arg1)].field_768) - (ext_call.return_data[0] * banks[address(arg1)].field_768) / banks[address(arg1)].field_512):
                    currentPositionInfo[stor132].field_1024 = currentPositionInfo[stor132].field_1024 and !(1 << banks[address(arg1)].field_8)
                emit Repay(POSITION_ID, msg.sender, address(arg1), banks[address(arg1)].field_512 - ext_call.return_data[0], (banks[address(arg1)].field_512 * banks[address(arg1)].field_768) - (ext_call.return_data[0] * banks[address(arg1)].field_768) / banks[address(arg1)].field_512);
        else:
            if currentPositionInfo[stor132][5][address(arg1)].field_0 * banks[address(arg1)].field_512 / banks[address(arg1)].field_768 > -2:
                revert with 0, 17
            mem[(6 * ceil32(return_data.size)) + 100] = this.address
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(7 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(7 * ceil32(return_data.size)) + 164] = this.address
            if arg2 != -1:
                mem[(7 * ceil32(return_data.size)) + 196] = arg2
                mem[(7 * ceil32(return_data.size)) + 96] = 100
                mem[(7 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                mem[(7 * ceil32(return_data.size)) + 228] = 32
                mem[(7 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
                mem[(7 * ceil32(return_data.size)) + 392] = 0
                call arg1 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
            else:
                mem[(7 * ceil32(return_data.size)) + 196] = (currentPositionInfo[stor132][5][address(arg1)].field_0 * banks[address(arg1)].field_512 / banks[address(arg1)].field_768) + 1
                mem[(7 * ceil32(return_data.size)) + 96] = 100
                mem[(7 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                mem[(7 * ceil32(return_data.size)) + 228] = 32
                mem[(7 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[(7 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), (currentPositionInfo[stor132][5][address(arg1)].field_0 * banks[address(arg1)].field_512 / banks[address(arg1)].field_768) + 1, 0
                mem[(7 * ceil32(return_data.size)) + 392] = 0
                call arg1 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), (currentPositionInfo[stor132][5][address(arg1)].field_0 * banks[address(arg1)].field_512 / banks[address(arg1)].field_768) + 1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), (currentPositionInfo[stor132][5][address(arg1)].field_0 * banks[address(arg1)].field_512 / banks[address(arg1)].field_768) + 1, 0) << 544)
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
                mem[(7 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(7 * ceil32(return_data.size)) + 324] == bool(mem[(7 * ceil32(return_data.size)) + 324])
                    if not mem[(7 * ceil32(return_data.size)) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(banks[address(arg1)].field_16)
            call banks[address(arg1)].field_16.repayBorrow(uint256 rg1) with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'bad repay'
            require ext_code.size(banks[address(arg1)].field_16)
            staticcall banks[address(arg1)].field_16.borrowBalanceStored(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            banks[address(arg1)].field_512 = ext_call.return_data[0]
            if banks[address(arg1)].field_512 < ext_call.return_data[0]:
                revert with 0, 17
            if banks[address(arg1)].field_512 - ext_call.return_data[0] > (currentPositionInfo[stor132][5][address(arg1)].field_0 * banks[address(arg1)].field_512 / banks[address(arg1)].field_768) + 1:
                revert with 0, 'paid exceeds debt'
            if banks[address(arg1)].field_512 - ext_call.return_data[0] == (currentPositionInfo[stor132][5][address(arg1)].field_0 * banks[address(arg1)].field_512 / banks[address(arg1)].field_768) + 1:
                if banks[address(arg1)].field_768 < currentPositionInfo[stor132][5][address(arg1)].field_0:
                    revert with 0, 17
                banks[address(arg1)].field_768 -= currentPositionInfo[stor132][5][address(arg1)].field_0
                if currentPositionInfo[stor132][5][address(arg1)].field_0 < currentPositionInfo[stor132][5][address(arg1)].field_0:
                    revert with 0, 17
                currentPositionInfo[stor132][5][address(arg1)].field_0 = 0
                currentPositionInfo[stor132].field_1024 = currentPositionInfo[stor132].field_1024 and !(1 << banks[address(arg1)].field_8)
                emit Repay(POSITION_ID, msg.sender, address(arg1), banks[address(arg1)].field_512 - ext_call.return_data[0], currentPositionInfo[stor132][5][address(arg1)].field_0);
            else:
                if banks[address(arg1)].field_512 - ext_call.return_data[0] and banks[address(arg1)].field_768 > -1 / banks[address(arg1)].field_512 - ext_call.return_data[0]:
                    revert with 0, 17
                if not banks[address(arg1)].field_512:
                    revert with 0, 18
                if banks[address(arg1)].field_768 < (banks[address(arg1)].field_512 * banks[address(arg1)].field_768) - (ext_call.return_data[0] * banks[address(arg1)].field_768) / banks[address(arg1)].field_512:
                    revert with 0, 17
                banks[address(arg1)].field_768 -= (banks[address(arg1)].field_512 * banks[address(arg1)].field_768) - (ext_call.return_data[0] * banks[address(arg1)].field_768) / banks[address(arg1)].field_512
                if currentPositionInfo[stor132][5][address(arg1)].field_0 < (banks[address(arg1)].field_512 * banks[address(arg1)].field_768) - (ext_call.return_data[0] * banks[address(arg1)].field_768) / banks[address(arg1)].field_512:
                    revert with 0, 17
                currentPositionInfo[stor132][5][address(arg1)].field_0 -= (banks[address(arg1)].field_512 * banks[address(arg1)].field_768) - (ext_call.return_data[0] * banks[address(arg1)].field_768) / banks[address(arg1)].field_512
                if not currentPositionInfo[stor132][5][address(arg1)].field_0 - ((banks[address(arg1)].field_512 * banks[address(arg1)].field_768) - (ext_call.return_data[0] * banks[address(arg1)].field_768) / banks[address(arg1)].field_512):
                    currentPositionInfo[stor132].field_1024 = currentPositionInfo[stor132].field_1024 and !(1 << banks[address(arg1)].field_8)
                emit Repay(POSITION_ID, msg.sender, address(arg1), banks[address(arg1)].field_512 - ext_call.return_data[0], (banks[address(arg1)].field_512 * banks[address(arg1)].field_768) - (ext_call.return_data[0] * banks[address(arg1)].field_768) / banks[address(arg1)].field_512);
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
                            staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1236 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1236]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1236]
                            continue 
                        if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                            revert with 0, 17
                        mem[mem[64] + 4] = allBanks[s]
                        mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                        mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                gas gas_remaining wei
                               args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1237 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_1237]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_1237]
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
                    staticcall oracleAddress.asETHCollateral(address rg1, uint256 rg2, uint256 rg3, address rg4) with:
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
                            staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1234 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1234]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1234]
                            continue 
                        if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                            revert with 0, 17
                        mem[mem[64] + 4] = allBanks[s]
                        mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                        mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                gas gas_remaining wei
                               args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1235 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_1235]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_1235]
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
                            staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1240 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1240]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1240]
                            continue 
                        if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                            revert with 0, 17
                        mem[mem[64] + 4] = allBanks[s]
                        mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                        mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                gas gas_remaining wei
                               args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1241 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_1241]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_1241]
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
                    staticcall oracleAddress.asETHCollateral(address rg1, uint256 rg2, uint256 rg3, address rg4) with:
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
                            staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1238 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1238]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1238]
                            continue 
                        if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                            revert with 0, 17
                        mem[mem[64] + 4] = allBanks[s]
                        mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                        mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                gas gas_remaining wei
                               args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1239 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_1239]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_1239]
                        continue 
                    if ext_call.return_data[0] < t:
                        revert with 0, 'insufficient collateral'
            POSITION_ID = -1
            uint8(stor133.field_0) = 1
            Mask(152, 0, stor133.field_8) = 0
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
                        staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                gas gas_remaining wei
                               args allBanks[s], currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[stor137].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1244 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_1244]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_1244]
                        continue 
                    if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                        revert with 0, 17
                    mem[mem[64] + 4] = allBanks[s]
                    mem[mem[64] + 36] = (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                    mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                            gas gas_remaining wei
                           args allBanks[s], (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[stor137].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1245 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_1245]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = uint255(idx) * 0.5
                    t = t + mem[_1245]
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
                staticcall oracleAddress.asETHCollateral(address rg1, uint256 rg2, uint256 rg3, address rg4) with:
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
                        staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                gas gas_remaining wei
                               args allBanks[s], currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[stor137].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1242 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_1242]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_1242]
                        continue 
                    if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                        revert with 0, 17
                    mem[mem[64] + 4] = allBanks[s]
                    mem[mem[64] + 36] = (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                    mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                            gas gas_remaining wei
                           args allBanks[s], (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[stor137].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1243 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_1243]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = uint255(idx) * 0.5
                    t = t + mem[_1243]
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
                        staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                gas gas_remaining wei
                               args allBanks[s], currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[stor137].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1248 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_1248]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_1248]
                        continue 
                    if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                        revert with 0, 17
                    mem[mem[64] + 4] = allBanks[s]
                    mem[mem[64] + 36] = (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                    mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                            gas gas_remaining wei
                           args allBanks[s], (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[stor137].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1249 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_1249]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = uint255(idx) * 0.5
                    t = t + mem[_1249]
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
                staticcall oracleAddress.asETHCollateral(address rg1, uint256 rg2, uint256 rg3, address rg4) with:
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
                        staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                gas gas_remaining wei
                               args allBanks[s], currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[stor137].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1246 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_1246]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_1246]
                        continue 
                    if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                        revert with 0, 17
                    mem[mem[64] + 4] = allBanks[s]
                    mem[mem[64] + 36] = (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                    mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                            gas gas_remaining wei
                           args allBanks[s], (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[stor137].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1247 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_1247]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = uint255(idx) * 0.5
                    t = t + mem[_1247]
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
                                staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                        gas gas_remaining wei
                                       args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1252 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if t > !mem[_1252]:
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                idx = uint255(idx) * 0.5
                                t = t + mem[_1252]
                                continue 
                            if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                                revert with 0, 17
                            mem[mem[64] + 4] = allBanks[s]
                            mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                            mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                            require ext_code.size(oracleAddress)
                            staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1253 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1253]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1253]
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
                        staticcall oracleAddress.asETHCollateral(address rg1, uint256 rg2, uint256 rg3, address rg4) with:
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
                                staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                        gas gas_remaining wei
                                       args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1250 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if t > !mem[_1250]:
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                idx = uint255(idx) * 0.5
                                t = t + mem[_1250]
                                continue 
                            if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                                revert with 0, 17
                            mem[mem[64] + 4] = allBanks[s]
                            mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                            mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                            require ext_code.size(oracleAddress)
                            staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1251 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1251]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1251]
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
                                staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                        gas gas_remaining wei
                                       args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1256 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if t > !mem[_1256]:
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                idx = uint255(idx) * 0.5
                                t = t + mem[_1256]
                                continue 
                            if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                                revert with 0, 17
                            mem[mem[64] + 4] = allBanks[s]
                            mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                            mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                            require ext_code.size(oracleAddress)
                            staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1257 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1257]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1257]
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
                        staticcall oracleAddress.asETHCollateral(address rg1, uint256 rg2, uint256 rg3, address rg4) with:
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
                                staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                        gas gas_remaining wei
                                       args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1254 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if t > !mem[_1254]:
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                idx = uint255(idx) * 0.5
                                t = t + mem[_1254]
                                continue 
                            if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                                revert with 0, 17
                            mem[mem[64] + 4] = allBanks[s]
                            mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                            mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                            require ext_code.size(oracleAddress)
                            staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1255 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1255]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1255]
                            continue 
                        if ext_call.return_data[0] < t:
                            revert with 0, 'insufficient collateral'
                POSITION_ID = -1
                uint8(stor133.field_0) = 1
                Mask(152, 0, stor133.field_8) = 0
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
                            staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[stor137].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1260 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1260]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1260]
                            continue 
                        if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                            revert with 0, 17
                        mem[mem[64] + 4] = allBanks[s]
                        mem[mem[64] + 36] = (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                        mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                gas gas_remaining wei
                               args allBanks[s], (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[stor137].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1261 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_1261]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_1261]
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
                    staticcall oracleAddress.asETHCollateral(address rg1, uint256 rg2, uint256 rg3, address rg4) with:
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
                            staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[stor137].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1258 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1258]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1258]
                            continue 
                        if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                            revert with 0, 17
                        mem[mem[64] + 4] = allBanks[s]
                        mem[mem[64] + 36] = (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                        mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                gas gas_remaining wei
                               args allBanks[s], (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[stor137].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1259 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_1259]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_1259]
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
                            staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[stor137].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1264 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1264]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1264]
                            continue 
                        if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                            revert with 0, 17
                        mem[mem[64] + 4] = allBanks[s]
                        mem[mem[64] + 36] = (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                        mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                gas gas_remaining wei
                               args allBanks[s], (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[stor137].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1265 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_1265]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_1265]
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
                    staticcall oracleAddress.asETHCollateral(address rg1, uint256 rg2, uint256 rg3, address rg4) with:
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
                            staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[stor137].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1262 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1262]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1262]
                            continue 
                        if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                            revert with 0, 17
                        mem[mem[64] + 4] = allBanks[s]
                        mem[mem[64] + 36] = (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                        mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                gas gas_remaining wei
                               args allBanks[s], (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[stor137].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1263 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_1263]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_1263]
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
                                staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                        gas gas_remaining wei
                                       args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1268 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if t > !mem[_1268]:
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                idx = uint255(idx) * 0.5
                                t = t + mem[_1268]
                                continue 
                            if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                                revert with 0, 17
                            mem[mem[64] + 4] = allBanks[s]
                            mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                            mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                            require ext_code.size(oracleAddress)
                            staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1269 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1269]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1269]
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
                        staticcall oracleAddress.asETHCollateral(address rg1, uint256 rg2, uint256 rg3, address rg4) with:
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
                                staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                        gas gas_remaining wei
                                       args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1266 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if t > !mem[_1266]:
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                idx = uint255(idx) * 0.5
                                t = t + mem[_1266]
                                continue 
                            if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                                revert with 0, 17
                            mem[mem[64] + 4] = allBanks[s]
                            mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                            mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                            require ext_code.size(oracleAddress)
                            staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1267 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1267]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1267]
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
                                staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                        gas gas_remaining wei
                                       args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1272 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if t > !mem[_1272]:
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                idx = uint255(idx) * 0.5
                                t = t + mem[_1272]
                                continue 
                            if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                                revert with 0, 17
                            mem[mem[64] + 4] = allBanks[s]
                            mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                            mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                            require ext_code.size(oracleAddress)
                            staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1273 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1273]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1273]
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
                        staticcall oracleAddress.asETHCollateral(address rg1, uint256 rg2, uint256 rg3, address rg4) with:
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
                                staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                        gas gas_remaining wei
                                       args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1270 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if t > !mem[_1270]:
                                    revert with 0, 17
                                if s == -1:
                                    revert with 0, 17
                                s = s + 1
                                idx = uint255(idx) * 0.5
                                t = t + mem[_1270]
                                continue 
                            if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                                revert with 0, 17
                            mem[mem[64] + 4] = allBanks[s]
                            mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                            mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                            require ext_code.size(oracleAddress)
                            staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1271 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1271]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1271]
                            continue 
                        if ext_call.return_data[0] < t:
                            revert with 0, 'insufficient collateral'
                POSITION_ID = -1
                uint8(stor133.field_0) = 1
                Mask(152, 0, stor133.field_8) = 0
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
                            staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[stor137].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1276 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1276]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1276]
                            continue 
                        if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                            revert with 0, 17
                        mem[mem[64] + 4] = allBanks[s]
                        mem[mem[64] + 36] = (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                        mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                gas gas_remaining wei
                               args allBanks[s], (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[stor137].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1277 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_1277]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_1277]
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
                    staticcall oracleAddress.asETHCollateral(address rg1, uint256 rg2, uint256 rg3, address rg4) with:
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
                            staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[stor137].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1274 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1274]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1274]
                            continue 
                        if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                            revert with 0, 17
                        mem[mem[64] + 4] = allBanks[s]
                        mem[mem[64] + 36] = (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                        mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                gas gas_remaining wei
                               args allBanks[s], (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[stor137].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1275 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_1275]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_1275]
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
                            staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[stor137].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1280 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1280]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1280]
                            continue 
                        if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                            revert with 0, 17
                        mem[mem[64] + 4] = allBanks[s]
                        mem[mem[64] + 36] = (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                        mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                gas gas_remaining wei
                               args allBanks[s], (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[stor137].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1281 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_1281]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_1281]
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
                    staticcall oracleAddress.asETHCollateral(address rg1, uint256 rg2, uint256 rg3, address rg4) with:
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
                            staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                    gas gas_remaining wei
                                   args allBanks[s], currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[stor137].field_0
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1278 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if t > !mem[_1278]:
                                revert with 0, 17
                            if s == -1:
                                revert with 0, 17
                            s = s + 1
                            idx = uint255(idx) * 0.5
                            t = t + mem[_1278]
                            continue 
                        if currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                            revert with 0, 17
                        mem[mem[64] + 4] = allBanks[s]
                        mem[mem[64] + 36] = (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                        mem[mem[64] + 68] = currentPositionInfo[stor137].field_0
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                gas gas_remaining wei
                               args allBanks[s], (currentPositionInfo[stor137][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[stor137].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1279 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_1279]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_1279]
                        continue 
                    if ext_call.return_data[0] < t:
                        revert with 0, 'insufficient collateral'
    POSITION_ID = -1
    uint8(stor133.field_0) = 1
    Mask(152, 0, stor133.field_8) = 0
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
    call banks[address(arg2)].field_16.borrowBalanceCurrent(address rg1) with:
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
                        staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                gas gas_remaining wei
                               args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6858 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_6858]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_6858]
                        continue 
                    if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                        revert with 0, 17
                    mem[mem[64] + 4] = allBanks[s]
                    mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                    mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                            gas gas_remaining wei
                           args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6859 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_6859]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = uint255(idx) * 0.5
                    t = t + mem[_6859]
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
                        _6930 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6954 = mem[_6930]
                        _6978 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg3
                        _6994 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_6978 + 132] = 32
                        mem[_6978 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        _7104 = mem[_6994]
                        mem[_6978 + 196 len ceil32(mem[_6994])] = mem[_6994 + 32 len ceil32(mem[_6994])]
                        if ceil32(_7104) > _7104:
                            mem[_7104 + _6978 + 196] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[_6978 + 200 len _7104 - 4]
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
                            mem[_6978 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_6978 + 228] == bool(mem[_6978 + 228])
                                if not mem[_6978 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < _6954:
                            revert with 0, 17
                        require ext_code.size(banks[address(arg2)].field_16)
                        call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - _6954)
                    else:
                        _6942 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6966 = mem[_6942]
                        _6996 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768
                        _7031 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_6996 + 132] = 32
                        mem[_6996 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        _7148 = mem[_7031]
                        mem[_6996 + 196 len ceil32(mem[_7031])] = mem[_7031 + 32 len ceil32(mem[_7031])]
                        if ceil32(_7148) > _7148:
                            mem[_7148 + _6996 + 196] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[_6996 + 200 len _7148 - 4]
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
                            mem[_6996 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_6996 + 228] == bool(mem[_6996 + 228])
                                if not mem[_6996 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < _6966:
                            revert with 0, 17
                        require ext_code.size(banks[address(arg2)].field_16)
                        call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - _6966)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'bad repay'
                    require ext_code.size(banks[address(arg2)].field_16)
                    staticcall banks[address(arg2)].field_16.borrowBalanceStored(address rg1) with:
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
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
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
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                        if not currentPositionInfo[arg1][5][address(arg2)].field_0 - ((banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512):
                            currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
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
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                        _6931 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6955 = mem[_6931]
                        _6979 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg3
                        _6997 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_6979 + 132] = 32
                        mem[_6979 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        _7108 = mem[_6997]
                        mem[_6979 + 196 len ceil32(mem[_6997])] = mem[_6997 + 32 len ceil32(mem[_6997])]
                        if ceil32(_7108) > _7108:
                            mem[_7108 + _6979 + 196] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[_6979 + 200 len _7108 - 4]
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
                            mem[_6979 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_6979 + 228] == bool(mem[_6979 + 228])
                                if not mem[_6979 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < _6955:
                            revert with 0, 17
                        require ext_code.size(banks[address(arg2)].field_16)
                        call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - _6955)
                    else:
                        _6943 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6967 = mem[_6943]
                        _6999 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = (currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768) + 1
                        _7034 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_6999 + 132] = 32
                        mem[_6999 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        _7150 = mem[_7034]
                        mem[_6999 + 196 len ceil32(mem[_7034])] = mem[_7034 + 32 len ceil32(mem[_7034])]
                        if ceil32(_7150) > _7150:
                            mem[_7150 + _6999 + 196] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[_6999 + 200 len _7150 - 4]
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
                            mem[_6999 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_6999 + 228] == bool(mem[_6999 + 228])
                                if not mem[_6999 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < _6967:
                            revert with 0, 17
                        require ext_code.size(banks[address(arg2)].field_16)
                        call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - _6967)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'bad repay'
                    require ext_code.size(banks[address(arg2)].field_16)
                    staticcall banks[address(arg2)].field_16.borrowBalanceStored(address rg1) with:
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
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
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
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                        if not currentPositionInfo[arg1][5][address(arg2)].field_0 - ((banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512):
                            currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
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
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                staticcall oracleAddress.asETHCollateral(address rg1, uint256 rg2, uint256 rg3, address rg4) with:
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
                        staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                gas gas_remaining wei
                               args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6856 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_6856]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_6856]
                        continue 
                    if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                        revert with 0, 17
                    mem[mem[64] + 4] = allBanks[s]
                    mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                    mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                            gas gas_remaining wei
                           args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6857 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_6857]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = uint255(idx) * 0.5
                    t = t + mem[_6857]
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
                        _6928 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6952 = mem[_6928]
                        _6976 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg3
                        _6988 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_6976 + 132] = 32
                        mem[_6976 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        _7096 = mem[_6988]
                        mem[_6976 + 196 len ceil32(mem[_6988])] = mem[_6988 + 32 len ceil32(mem[_6988])]
                        if ceil32(_7096) > _7096:
                            mem[_7096 + _6976 + 196] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[_6976 + 200 len _7096 - 4]
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
                            mem[_6976 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_6976 + 228] == bool(mem[_6976 + 228])
                                if not mem[_6976 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < _6952:
                            revert with 0, 17
                        require ext_code.size(banks[address(arg2)].field_16)
                        call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - _6952)
                    else:
                        _6940 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6964 = mem[_6940]
                        _6990 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768
                        _7025 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_6990 + 132] = 32
                        mem[_6990 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        _7144 = mem[_7025]
                        mem[_6990 + 196 len ceil32(mem[_7025])] = mem[_7025 + 32 len ceil32(mem[_7025])]
                        if ceil32(_7144) > _7144:
                            mem[_7144 + _6990 + 196] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[_6990 + 200 len _7144 - 4]
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
                            mem[_6990 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_6990 + 228] == bool(mem[_6990 + 228])
                                if not mem[_6990 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < _6964:
                            revert with 0, 17
                        require ext_code.size(banks[address(arg2)].field_16)
                        call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - _6964)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'bad repay'
                    require ext_code.size(banks[address(arg2)].field_16)
                    staticcall banks[address(arg2)].field_16.borrowBalanceStored(address rg1) with:
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
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
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
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                        if not currentPositionInfo[arg1][5][address(arg2)].field_0 - ((banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512):
                            currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
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
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                        _6929 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6953 = mem[_6929]
                        _6977 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg3
                        _6991 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_6977 + 132] = 32
                        mem[_6977 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        _7100 = mem[_6991]
                        mem[_6977 + 196 len ceil32(mem[_6991])] = mem[_6991 + 32 len ceil32(mem[_6991])]
                        if ceil32(_7100) > _7100:
                            mem[_7100 + _6977 + 196] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[_6977 + 200 len _7100 - 4]
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
                            mem[_6977 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_6977 + 228] == bool(mem[_6977 + 228])
                                if not mem[_6977 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < _6953:
                            revert with 0, 17
                        require ext_code.size(banks[address(arg2)].field_16)
                        call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - _6953)
                    else:
                        _6941 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6965 = mem[_6941]
                        _6993 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = (currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768) + 1
                        _7028 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_6993 + 132] = 32
                        mem[_6993 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        _7146 = mem[_7028]
                        mem[_6993 + 196 len ceil32(mem[_7028])] = mem[_7028 + 32 len ceil32(mem[_7028])]
                        if ceil32(_7146) > _7146:
                            mem[_7146 + _6993 + 196] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[_6993 + 200 len _7146 - 4]
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
                            mem[_6993 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_6993 + 228] == bool(mem[_6993 + 228])
                                if not mem[_6993 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < _6965:
                            revert with 0, 17
                        require ext_code.size(banks[address(arg2)].field_16)
                        call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - _6965)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'bad repay'
                    require ext_code.size(banks[address(arg2)].field_16)
                    staticcall banks[address(arg2)].field_16.borrowBalanceStored(address rg1) with:
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
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
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
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                        if not currentPositionInfo[arg1][5][address(arg2)].field_0 - ((banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512):
                            currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
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
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                        staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                gas gas_remaining wei
                               args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6862 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_6862]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_6862]
                        continue 
                    if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                        revert with 0, 17
                    mem[mem[64] + 4] = allBanks[s]
                    mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                    mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                            gas gas_remaining wei
                           args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6863 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_6863]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = uint255(idx) * 0.5
                    t = t + mem[_6863]
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
                        _6934 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6958 = mem[_6934]
                        _6982 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg3
                        _7006 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_6982 + 132] = 32
                        mem[_6982 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        _7120 = mem[_7006]
                        mem[_6982 + 196 len ceil32(mem[_7006])] = mem[_7006 + 32 len ceil32(mem[_7006])]
                        if ceil32(_7120) > _7120:
                            mem[_7120 + _6982 + 196] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[_6982 + 200 len _7120 - 4]
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
                            mem[_6982 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_6982 + 228] == bool(mem[_6982 + 228])
                                if not mem[_6982 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < _6958:
                            revert with 0, 17
                        require ext_code.size(banks[address(arg2)].field_16)
                        call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - _6958)
                    else:
                        _6946 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6970 = mem[_6946]
                        _7008 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768
                        _7043 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_7008 + 132] = 32
                        mem[_7008 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        _7156 = mem[_7043]
                        mem[_7008 + 196 len ceil32(mem[_7043])] = mem[_7043 + 32 len ceil32(mem[_7043])]
                        if ceil32(_7156) > _7156:
                            mem[_7156 + _7008 + 196] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[_7008 + 200 len _7156 - 4]
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
                            mem[_7008 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_7008 + 228] == bool(mem[_7008 + 228])
                                if not mem[_7008 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < _6970:
                            revert with 0, 17
                        require ext_code.size(banks[address(arg2)].field_16)
                        call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - _6970)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'bad repay'
                    require ext_code.size(banks[address(arg2)].field_16)
                    staticcall banks[address(arg2)].field_16.borrowBalanceStored(address rg1) with:
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
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
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
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                        if not currentPositionInfo[arg1][5][address(arg2)].field_0 - ((banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512):
                            currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
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
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                        _6935 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6959 = mem[_6935]
                        _6983 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg3
                        _7009 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_6983 + 132] = 32
                        mem[_6983 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        _7124 = mem[_7009]
                        mem[_6983 + 196 len ceil32(mem[_7009])] = mem[_7009 + 32 len ceil32(mem[_7009])]
                        if ceil32(_7124) > _7124:
                            mem[_7124 + _6983 + 196] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[_6983 + 200 len _7124 - 4]
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
                            mem[_6983 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_6983 + 228] == bool(mem[_6983 + 228])
                                if not mem[_6983 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < _6959:
                            revert with 0, 17
                        require ext_code.size(banks[address(arg2)].field_16)
                        call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - _6959)
                    else:
                        _6947 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6971 = mem[_6947]
                        _7011 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = (currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768) + 1
                        _7046 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_7011 + 132] = 32
                        mem[_7011 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        _7158 = mem[_7046]
                        mem[_7011 + 196 len ceil32(mem[_7046])] = mem[_7046 + 32 len ceil32(mem[_7046])]
                        if ceil32(_7158) > _7158:
                            mem[_7158 + _7011 + 196] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[_7011 + 200 len _7158 - 4]
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
                            mem[_7011 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_7011 + 228] == bool(mem[_7011 + 228])
                                if not mem[_7011 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < _6971:
                            revert with 0, 17
                        require ext_code.size(banks[address(arg2)].field_16)
                        call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - _6971)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'bad repay'
                    require ext_code.size(banks[address(arg2)].field_16)
                    staticcall banks[address(arg2)].field_16.borrowBalanceStored(address rg1) with:
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
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
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
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                        if not currentPositionInfo[arg1][5][address(arg2)].field_0 - ((banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512):
                            currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
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
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                staticcall oracleAddress.asETHCollateral(address rg1, uint256 rg2, uint256 rg3, address rg4) with:
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
                        staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                                gas gas_remaining wei
                               args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _6860 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if t > !mem[_6860]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        idx = uint255(idx) * 0.5
                        t = t + mem[_6860]
                        continue 
                    if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                        revert with 0, 17
                    mem[mem[64] + 4] = allBanks[s]
                    mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                    mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                            gas gas_remaining wei
                           args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6861 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_6861]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = uint255(idx) * 0.5
                    t = t + mem[_6861]
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
                        _6932 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6956 = mem[_6932]
                        _6980 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg3
                        _7000 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_6980 + 132] = 32
                        mem[_6980 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        _7112 = mem[_7000]
                        mem[_6980 + 196 len ceil32(mem[_7000])] = mem[_7000 + 32 len ceil32(mem[_7000])]
                        if ceil32(_7112) > _7112:
                            mem[_7112 + _6980 + 196] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[_6980 + 200 len _7112 - 4]
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
                            mem[_6980 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_6980 + 228] == bool(mem[_6980 + 228])
                                if not mem[_6980 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < _6956:
                            revert with 0, 17
                        require ext_code.size(banks[address(arg2)].field_16)
                        call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - _6956)
                    else:
                        _6944 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6968 = mem[_6944]
                        _7002 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768
                        _7037 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_7002 + 132] = 32
                        mem[_7002 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        _7152 = mem[_7037]
                        mem[_7002 + 196 len ceil32(mem[_7037])] = mem[_7037 + 32 len ceil32(mem[_7037])]
                        if ceil32(_7152) > _7152:
                            mem[_7152 + _7002 + 196] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[_7002 + 200 len _7152 - 4]
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
                            mem[_7002 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_7002 + 228] == bool(mem[_7002 + 228])
                                if not mem[_7002 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < _6968:
                            revert with 0, 17
                        require ext_code.size(banks[address(arg2)].field_16)
                        call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - _6968)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'bad repay'
                    require ext_code.size(banks[address(arg2)].field_16)
                    staticcall banks[address(arg2)].field_16.borrowBalanceStored(address rg1) with:
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
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
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
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                        if not currentPositionInfo[arg1][5][address(arg2)].field_0 - ((banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512):
                            currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
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
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                        _6933 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6957 = mem[_6933]
                        _6981 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = arg3
                        _7003 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_6981 + 132] = 32
                        mem[_6981 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        _7116 = mem[_7003]
                        mem[_6981 + 196 len ceil32(mem[_7003])] = mem[_7003 + 32 len ceil32(mem[_7003])]
                        if ceil32(_7116) > _7116:
                            mem[_7116 + _6981 + 196] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[_6981 + 200 len _7116 - 4]
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
                            mem[_6981 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_6981 + 228] == bool(mem[_6981 + 228])
                                if not mem[_6981 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < _6957:
                            revert with 0, 17
                        require ext_code.size(banks[address(arg2)].field_16)
                        call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - _6957)
                    else:
                        _6945 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _6969 = mem[_6945]
                        _7005 = mem[64]
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = this.address
                        mem[mem[64] + 100] = (currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768) + 1
                        _7040 = mem[64]
                        mem[mem[64]] = 100
                        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                        mem[64] = mem[64] + 196
                        mem[_7005 + 132] = 32
                        mem[_7005 + 164] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(arg2):
                            revert with 0, 'Address: call to non-contract'
                        _7154 = mem[_7040]
                        mem[_7005 + 196 len ceil32(mem[_7040])] = mem[_7040 + 32 len ceil32(mem[_7040])]
                        if ceil32(_7154) > _7154:
                            mem[_7154 + _7005 + 196] = 0
                        call arg2 with:
                             gas gas_remaining wei
                            args mem[_7005 + 200 len _7154 - 4]
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
                            mem[_7005 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_7005 + 228] == bool(mem[_7005 + 228])
                                if not mem[_7005 + 228]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        require ext_code.size(arg2)
                        staticcall arg2.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < _6969:
                            revert with 0, 17
                        require ext_code.size(banks[address(arg2)].field_16)
                        call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] - _6969)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'bad repay'
                    require ext_code.size(banks[address(arg2)].field_16)
                    staticcall banks[address(arg2)].field_16.borrowBalanceStored(address rg1) with:
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
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
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
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                        if not currentPositionInfo[arg1][5][address(arg2)].field_0 - ((banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512):
                            currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
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
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
        call banks[address(arg2)].field_16.borrow(uint256 rg1) with:
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
                    staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                            gas gas_remaining wei
                           args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6866 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_6866]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = uint255(idx) * 0.5
                    t = t + mem[_6866]
                    continue 
                if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                    revert with 0, 17
                mem[mem[64] + 4] = allBanks[s]
                mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                require ext_code.size(oracleAddress)
                staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                        gas gas_remaining wei
                       args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6867 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if t > !mem[_6867]:
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = uint255(idx) * 0.5
                t = t + mem[_6867]
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
                    _6938 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6962 = mem[_6938]
                    _6986 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = arg3
                    _7018 = mem[64]
                    mem[mem[64]] = 100
                    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                    mem[64] = mem[64] + 196
                    mem[_6986 + 132] = 32
                    mem[_6986 + 164] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    _7136 = mem[_7018]
                    mem[_6986 + 196 len ceil32(mem[_7018])] = mem[_7018 + 32 len ceil32(mem[_7018])]
                    if ceil32(_7136) > _7136:
                        mem[_7136 + _6986 + 196] = 0
                    call arg2 with:
                         gas gas_remaining wei
                        args mem[_6986 + 200 len _7136 - 4]
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
                        mem[_6986 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_6986 + 228] == bool(mem[_6986 + 228])
                            if not mem[_6986 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < _6962:
                        revert with 0, 17
                    require ext_code.size(banks[address(arg2)].field_16)
                    call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] - _6962)
                else:
                    _6950 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6974 = mem[_6950]
                    _7020 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768
                    _7055 = mem[64]
                    mem[mem[64]] = 100
                    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                    mem[64] = mem[64] + 196
                    mem[_7020 + 132] = 32
                    mem[_7020 + 164] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    _7164 = mem[_7055]
                    mem[_7020 + 196 len ceil32(mem[_7055])] = mem[_7055 + 32 len ceil32(mem[_7055])]
                    if ceil32(_7164) > _7164:
                        mem[_7164 + _7020 + 196] = 0
                    call arg2 with:
                         gas gas_remaining wei
                        args mem[_7020 + 200 len _7164 - 4]
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
                        mem[_7020 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_7020 + 228] == bool(mem[_7020 + 228])
                            if not mem[_7020 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < _6974:
                        revert with 0, 17
                    require ext_code.size(banks[address(arg2)].field_16)
                    call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] - _6974)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'bad repay'
                require ext_code.size(banks[address(arg2)].field_16)
                staticcall banks[address(arg2)].field_16.borrowBalanceStored(address rg1) with:
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
                    currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                    if not currentPositionInfo[arg1].field_256:
                        revert with 0, 'bad collateral token'
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
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
                        call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                        call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                    if not currentPositionInfo[arg1][5][address(arg2)].field_0 - ((banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512):
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                    if not currentPositionInfo[arg1].field_256:
                        revert with 0, 'bad collateral token'
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
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
                        call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                        call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                    _6939 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6963 = mem[_6939]
                    _6987 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = arg3
                    _7021 = mem[64]
                    mem[mem[64]] = 100
                    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                    mem[64] = mem[64] + 196
                    mem[_6987 + 132] = 32
                    mem[_6987 + 164] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    _7140 = mem[_7021]
                    mem[_6987 + 196 len ceil32(mem[_7021])] = mem[_7021 + 32 len ceil32(mem[_7021])]
                    if ceil32(_7140) > _7140:
                        mem[_7140 + _6987 + 196] = 0
                    call arg2 with:
                         gas gas_remaining wei
                        args mem[_6987 + 200 len _7140 - 4]
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
                        mem[_6987 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_6987 + 228] == bool(mem[_6987 + 228])
                            if not mem[_6987 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < _6963:
                        revert with 0, 17
                    require ext_code.size(banks[address(arg2)].field_16)
                    call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] - _6963)
                else:
                    _6951 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6975 = mem[_6951]
                    _7023 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = (currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768) + 1
                    _7058 = mem[64]
                    mem[mem[64]] = 100
                    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                    mem[64] = mem[64] + 196
                    mem[_7023 + 132] = 32
                    mem[_7023 + 164] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    _7166 = mem[_7058]
                    mem[_7023 + 196 len ceil32(mem[_7058])] = mem[_7058 + 32 len ceil32(mem[_7058])]
                    if ceil32(_7166) > _7166:
                        mem[_7166 + _7023 + 196] = 0
                    call arg2 with:
                         gas gas_remaining wei
                        args mem[_7023 + 200 len _7166 - 4]
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
                        mem[_7023 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_7023 + 228] == bool(mem[_7023 + 228])
                            if not mem[_7023 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < _6975:
                        revert with 0, 17
                    require ext_code.size(banks[address(arg2)].field_16)
                    call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] - _6975)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'bad repay'
                require ext_code.size(banks[address(arg2)].field_16)
                staticcall banks[address(arg2)].field_16.borrowBalanceStored(address rg1) with:
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
                    currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                    if not currentPositionInfo[arg1].field_256:
                        revert with 0, 'bad collateral token'
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
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
                        call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                        call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                    if not currentPositionInfo[arg1][5][address(arg2)].field_0 - ((banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512):
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                    if not currentPositionInfo[arg1].field_256:
                        revert with 0, 'bad collateral token'
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
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
                        call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                        call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
            staticcall oracleAddress.asETHCollateral(address rg1, uint256 rg2, uint256 rg3, address rg4) with:
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
                    staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                            gas gas_remaining wei
                           args allBanks[s], currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768, currentPositionInfo[arg1].field_0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _6864 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if t > !mem[_6864]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    idx = uint255(idx) * 0.5
                    t = t + mem[_6864]
                    continue 
                if currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768 > -2:
                    revert with 0, 17
                mem[mem[64] + 4] = allBanks[s]
                mem[mem[64] + 36] = (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1
                mem[mem[64] + 68] = currentPositionInfo[arg1].field_0
                require ext_code.size(oracleAddress)
                staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                        gas gas_remaining wei
                       args allBanks[s], (currentPositionInfo[arg1][5][stor138[s]].field_0 * banks[stor138[s]].field_512 / banks[stor138[s]].field_768) + 1, currentPositionInfo[arg1].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6865 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if t > !mem[_6865]:
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                idx = uint255(idx) * 0.5
                t = t + mem[_6865]
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
                    _6936 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6960 = mem[_6936]
                    _6984 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = arg3
                    _7012 = mem[64]
                    mem[mem[64]] = 100
                    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                    mem[64] = mem[64] + 196
                    mem[_6984 + 132] = 32
                    mem[_6984 + 164] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    _7128 = mem[_7012]
                    mem[_6984 + 196 len ceil32(mem[_7012])] = mem[_7012 + 32 len ceil32(mem[_7012])]
                    if ceil32(_7128) > _7128:
                        mem[_7128 + _6984 + 196] = 0
                    call arg2 with:
                         gas gas_remaining wei
                        args mem[_6984 + 200 len _7128 - 4]
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
                        mem[_6984 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_6984 + 228] == bool(mem[_6984 + 228])
                            if not mem[_6984 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < _6960:
                        revert with 0, 17
                    require ext_code.size(banks[address(arg2)].field_16)
                    call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] - _6960)
                else:
                    _6948 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6972 = mem[_6948]
                    _7014 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768
                    _7049 = mem[64]
                    mem[mem[64]] = 100
                    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                    mem[64] = mem[64] + 196
                    mem[_7014 + 132] = 32
                    mem[_7014 + 164] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    _7160 = mem[_7049]
                    mem[_7014 + 196 len ceil32(mem[_7049])] = mem[_7049 + 32 len ceil32(mem[_7049])]
                    if ceil32(_7160) > _7160:
                        mem[_7160 + _7014 + 196] = 0
                    call arg2 with:
                         gas gas_remaining wei
                        args mem[_7014 + 200 len _7160 - 4]
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
                        mem[_7014 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_7014 + 228] == bool(mem[_7014 + 228])
                            if not mem[_7014 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < _6972:
                        revert with 0, 17
                    require ext_code.size(banks[address(arg2)].field_16)
                    call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] - _6972)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'bad repay'
                require ext_code.size(banks[address(arg2)].field_16)
                staticcall banks[address(arg2)].field_16.borrowBalanceStored(address rg1) with:
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
                    currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                    if not currentPositionInfo[arg1].field_256:
                        revert with 0, 'bad collateral token'
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
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
                        call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                        call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                    if not currentPositionInfo[arg1][5][address(arg2)].field_0 - ((banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512):
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                    if not currentPositionInfo[arg1].field_256:
                        revert with 0, 'bad collateral token'
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
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
                        call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                        call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                    _6937 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6961 = mem[_6937]
                    _6985 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = arg3
                    _7015 = mem[64]
                    mem[mem[64]] = 100
                    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                    mem[64] = mem[64] + 196
                    mem[_6985 + 132] = 32
                    mem[_6985 + 164] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    _7132 = mem[_7015]
                    mem[_6985 + 196 len ceil32(mem[_7015])] = mem[_7015 + 32 len ceil32(mem[_7015])]
                    if ceil32(_7132) > _7132:
                        mem[_7132 + _6985 + 196] = 0
                    call arg2 with:
                         gas gas_remaining wei
                        args mem[_6985 + 200 len _7132 - 4]
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
                        mem[_6985 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_6985 + 228] == bool(mem[_6985 + 228])
                            if not mem[_6985 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < _6961:
                        revert with 0, 17
                    require ext_code.size(banks[address(arg2)].field_16)
                    call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] - _6961)
                else:
                    _6949 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _6973 = mem[_6949]
                    _7017 = mem[64]
                    mem[mem[64] + 36] = msg.sender
                    mem[mem[64] + 68] = this.address
                    mem[mem[64] + 100] = (currentPositionInfo[arg1][5][address(arg2)].field_0 * banks[address(arg2)].field_512 / banks[address(arg2)].field_768) + 1
                    _7052 = mem[64]
                    mem[mem[64]] = 100
                    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
                    mem[64] = mem[64] + 196
                    mem[_7017 + 132] = 32
                    mem[_7017 + 164] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(arg2):
                        revert with 0, 'Address: call to non-contract'
                    _7162 = mem[_7052]
                    mem[_7017 + 196 len ceil32(mem[_7052])] = mem[_7052 + 32 len ceil32(mem[_7052])]
                    if ceil32(_7162) > _7162:
                        mem[_7162 + _7017 + 196] = 0
                    call arg2 with:
                         gas gas_remaining wei
                        args mem[_7017 + 200 len _7162 - 4]
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
                        mem[_7017 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_7017 + 228] == bool(mem[_7017 + 228])
                            if not mem[_7017 + 228]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < _6973:
                        revert with 0, 17
                    require ext_code.size(banks[address(arg2)].field_16)
                    call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] - _6973)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'bad repay'
                require ext_code.size(banks[address(arg2)].field_16)
                staticcall banks[address(arg2)].field_16.borrowBalanceStored(address rg1) with:
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
                    currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                    if not currentPositionInfo[arg1].field_256:
                        revert with 0, 'bad collateral token'
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
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
                        call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                        call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                    if not currentPositionInfo[arg1][5][address(arg2)].field_0 - ((banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512):
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                    if not currentPositionInfo[arg1].field_256:
                        revert with 0, 'bad collateral token'
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
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
                        call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
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
                        call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        emit Liquidate(arg1, msg.sender, address(arg2), banks[address(arg2)].field_512 - ext_call.return_data[0], (banks[address(arg2)].field_512 * banks[address(arg2)].field_768) - (ext_call.return_data[0] * banks[address(arg2)].field_768) / banks[address(arg2)].field_512, currentPositionInfo[arg1].field_768);
    _GENERAL_LOCK = 1
}



}
