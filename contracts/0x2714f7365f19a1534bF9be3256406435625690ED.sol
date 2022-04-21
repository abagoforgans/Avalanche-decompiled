contract main {




// =====================  Runtime code  =====================


#
#  - execute(uint256 arg1, address arg2, bytes arg3)
#
address governorAddress; offset 16
uint256 stor0; offset 16
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor4;
mapping of uint8 stor66;
uint256 _GENERAL_LOCK;
uint256 _IN_EXEC_LOCK;
uint256 POSITION_ID;
address SPELLAddress;
address casterAddress;
address oracleAddress;
address comptrollerAddress;
uint256 feeBps;
uint256 nextPositionId;
array of address allBanks;
mapping of struct banks;
mapping of uint8 stor142;
mapping of struct currentPositionInfo;
uint8 sub_d2ffc9f3;
mapping of uint8 stor145;
mapping of uint8 stor146;
mapping of uint8 stor147;
bool allowBorrowStatus;
uint256 sub_0e5641e6;
address wethAddress;
array of address stor43053078455065120525335962598102751911389932349789414909508576696359131627689;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor66[Mask(32, 224, arg1)])
}

function governor() {
    return address(governorAddress)
}

function sub_0e5641e6(?) {
    return uint256(sub_0e5641e6)
}

function feeBps() {
    return feeBps
}

function cTokenInBank(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor142[arg1])
}

function allowBorrowStatus() {
    return bool(bool(allowBorrowStatus))
}

function weth() {
    return wethAddress
}

function getPositionInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    return currentPositionInfo[arg1].field_0, 
           currentPositionInfo[arg1].field_256,
           currentPositionInfo[arg1].field_512,
           currentPositionInfo[arg1].field_768
}

function comptroller() {
    return comptrollerAddress
}

function EXECUTOR() {
    if POSITION_ID == -1:
        revert with 0, 'not under execution'
    return currentPositionInfo[stor133].field_0
}

function SPELL() {
    return SPELLAddress
}

function getBankInfo(address arg1) {
    require calldata.size - 4 >= 32
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
    return bool(banks[arg1].field_0), 
           banks[arg1].field_0,
           banks[arg1].field_0,
           banks[arg1].field_256,
           banks[arg1].field_512,
           banks[arg1].field_768
}

function sub_86c0dc88(?) {
    require calldata.size - 4 >= 32
    return bool(stor146[arg1])
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
    return currentPositionInfo[arg1][5][address(arg2)].field_0
}

function POSITION_ID() {
    return POSITION_ID
}

function whitelistedTokens(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor145[arg1])
}

function allBanks(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < allBanks.length
    return address(allBanks[arg1])
}

function pendingGovernor() {
    return address(stor1.length)
}

function sub_f621cc48(?) {
    require calldata.size - 4 >= 32
    return bool(stor147[arg1])
}

function getCurrentPositionInfo() {
    if POSITION_ID == -1:
        revert with 0, 'no id'
    return currentPositionInfo[stor133].field_0, 
           currentPositionInfo[stor133].field_256,
           currentPositionInfo[stor133].field_512,
           currentPositionInfo[stor133].field_768
}

function _fallback() payable {
    revert
}

function allowRepayStatus() {
    return bool(Mask(1, 1, uint256(sub_0e5641e6)))
}

function setComptroller(address arg1) {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    comptrollerAddress = arg1
}

function setBankStatus(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    uint256(sub_0e5641e6) = arg1
}

function setAllowContractCalls(bool arg1) {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    sub_d2ffc9f3 = uint8(arg1)
}

function setPendingGovernor(address arg1) {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    address(stor1.length) = arg1
    emit SetPendingGovernor(arg1);
}

function acceptGovernor() {
    if address(stor1.length) != msg.sender:
        revert with 0, 'not the pending governor'
    address(stor1.length) = 0
    Mask(240, 0, stor0) = Mask(240, 0, msg.sender)
    emit AcceptGovernor(msg.sender);
}

function setFeeBps(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    if arg1 > 10000:
        revert with 0, 'fee too high'
    feeBps = arg1
    emit SetFeeBps(arg1);
}

function setOracle(address arg1) {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    if not arg1:
        revert with 0, 'cannot set zero address oracle'
    oracleAddress = arg1
    emit SetOracle(arg1);
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function initialize(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    oracleAddress = arg1
    if not arg1:
        revert with 0, 'bad oracle address'
    feeBps = arg2
    wethAddress = arg3
    emit SetOracle(arg1);
    emit SetFeeBps(arg2);
}

function support(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0xe660cc08 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
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

function sub_a20a5906(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7775736572732026207374617475736573206c656e677468206d69736d6174636865,
                    mem[198 len 30]
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 147
        stor147[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[((32 * idx) + cd[36] + 36)]))
        idx = idx + 1
        continue 
}

function sub_4df890f6(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x647370656c6c732026207374617475736573206c656e677468206d69736d6174636865,
                    mem[199 len 29]
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 146
        stor146[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[((32 * idx) + cd[36] + 36)]))
        idx = idx + 1
        continue 
}

function enterMarkets(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    mem[96] = 0xc299823800000000000000000000000000000000000000000000000000000000
    mem[100] = 32
    mem[132] = arg1.length
    mem[164 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 164] = 0
    require ext_code.size(comptrollerAddress)
    call comptrollerAddress.0xc2998238 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[96 len 4], 0 <= 4294967296
    require mem[96 len 4], 0 + 32 <= return_data.size
    require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
}

function sub_331d9364(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x64746f6b656e732026207374617475736573206c656e677468206d69736d6174636865,
                    mem[199 len 29]
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        if cd[((32 * idx) + cd[36] + 36)]:
            require idx < ('cd', 4).length
            mem[100] = address(cd[((32 * idx) + cd[4] + 36)])
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.0xe660cc08 with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[4] + 36)])
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'oracle not support token'
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 145
        stor145[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[((32 * idx) + cd[36] + 36)]))
        idx = idx + 1
        continue 
}

function takeCollateral(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if POSITION_ID == -1:
        revert with 0, 'not within execution'
    if SPELLAddress != msg.sender:
        revert with 0, 'not from spell'
    if _IN_EXEC_LOCK != 1:
        revert with 0, 'in exec lock'
    _IN_EXEC_LOCK = 2
    if currentPositionInfo[stor133].field_256 != arg1:
        revert with 0, 'invalid collateral token'
    if arg2 != currentPositionInfo[stor133].field_512:
        revert with 0, 'invalid collateral token'
    if arg3 != -1:
        if arg3 > currentPositionInfo[stor133].field_768:
            revert with 0, 'SafeMath: subtraction overflow'
        currentPositionInfo[stor133].field_768 -= arg3
        require ext_code.size(arg1)
        call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
             gas gas_remaining wei
            args 0, uint32(this.address), msg.sender, arg2, arg3, 160, 0, mem[292]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit TakeCollateral(POSITION_ID, msg.sender, address(arg1), arg2, arg3);
    else:
        if currentPositionInfo[stor133].field_768 > currentPositionInfo[stor133].field_768:
            revert with 0, 'SafeMath: subtraction overflow'
        currentPositionInfo[stor133].field_768 = 0
        require ext_code.size(arg1)
        call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
             gas gas_remaining wei
            args 0, uint32(this.address), msg.sender, arg2, currentPositionInfo[stor133].field_768, 160, 0, mem[292]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit TakeCollateral(POSITION_ID, msg.sender, address(arg1), arg2, currentPositionInfo[stor133].field_768);
    _IN_EXEC_LOCK = 1
}

function withdrawReserve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    if _GENERAL_LOCK != 1:
        revert with 0, 'general lock'
    _GENERAL_LOCK = 2
    if not banks[address(arg1)].field_0:
        revert with 0, 'bank not exist'
    if arg2 > banks[address(arg1)].field_256:
        revert with 0, 'SafeMath: subtraction overflow'
    banks[address(arg1)].field_256 -= arg2
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address rg1, uint256 rg2), msg.sender, arg2
        if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit WithdrawReserve(msg.sender, address(arg1), arg2);
    _GENERAL_LOCK = 1
}

function borrowBalanceStored(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not currentPositionInfo[arg1][5][address(arg2)].field_0:
        return 0
    if not banks[address(arg2)].field_512:
        return 0
    if not currentPositionInfo[arg1][5][address(arg2)].field_0:
        if banks[address(arg2)].field_768 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if 1 > banks[address(arg2)].field_768:
            revert with 0, 'SafeMath: subtraction overflow'
        if banks[address(arg2)].field_768 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if banks[address(arg2)].field_768:
            return (banks[address(arg2)].field_768 - 1 / banks[address(arg2)].field_768)
    else:
        if banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0 / currentPositionInfo[arg1][5][address(arg2)].field_0 != banks[address(arg2)].field_512:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if banks[address(arg2)].field_768 + (banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0) < banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        if 1 > banks[address(arg2)].field_768 + (banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0):
            revert with 0, 'SafeMath: subtraction overflow'
        if banks[address(arg2)].field_768 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if banks[address(arg2)].field_768:
            return (banks[address(arg2)].field_768 + (banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0) - 1 / banks[address(arg2)].field_768)
    ('iszero', ('field', 768, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'banks', 141)))))
    revert
}

function transmit(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if POSITION_ID == -1:
        revert with 0, 'not within execution'
    if SPELLAddress != msg.sender:
        revert with 0, 'not from spell'
    if _IN_EXEC_LOCK != 1:
        revert with 0, 'in exec lock'
    _IN_EXEC_LOCK = 2
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), currentPositionInfo[stor133].field_0, currentPositionInfo[stor133].field_0, msg.sender, Mask(224, 32, arg2) >> 32
    mem[416 len 4] = 0
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), currentPositionInfo[stor133].field_0, currentPositionInfo[stor133].field_0, msg.sender, arg2
        if not unknown_0x23b872dd(?????), currentPositionInfo[stor133].field_0:
            revert with 0, 
                        32,
                        42,
                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    _IN_EXEC_LOCK = 1
}

function getPositionDebts(uint256 arg1) {
    require calldata.size - 4 >= 32
    idx = currentPositionInfo[arg1].field_1024
    s = 0
    while idx:
        if not bool(idx):
            idx = uint255(idx) * 0.5
            s = s
            continue 
        idx = uint255(idx) * 0.5
        s = s + 1
        continue 
    require s <= test266151307()
    if s:
        mem[128 len 32 * s] = call.data[calldata.size len 32 * s]
    require s <= test266151307()
    mem[(32 * s) + 128] = s
    if s:
        mem[(32 * s) + 160 len 32 * s] = call.data[calldata.size len 32 * s]
    t = 0
    idx = currentPositionInfo[arg1].field_1024
    u = 0
    while idx:
        if not bool(idx):
            t = t + 1
            idx = uint255(idx) * 0.5
            u = u
            continue 
        require t < allBanks.length
        require u < s
        mem[(32 * u) + 128] = address(allBanks[t])
        mem[0] = address(allBanks[t])
        mem[32] = sha3(arg1, 143) + 5
        if not currentPositionInfo[arg1][5][address(stor140[t])].field_0:
            if banks[address(stor140[t])].field_768 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 1 > banks[address(stor140[t])].field_768:
                revert with 0, 'SafeMath: subtraction overflow'
            if banks[address(stor140[t])].field_768 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require banks[address(stor140[t])].field_768
            require u < mem[(32 * s) + 128]
            mem[(32 * u) + (32 * s) + 160] = banks[address(stor140[t])].field_768 - 1 / banks[address(stor140[t])].field_768
        else:
            if banks[address(stor140[t])].field_512 * currentPositionInfo[arg1][5][address(stor140[t])].field_0 / currentPositionInfo[arg1][5][address(stor140[t])].field_0 != banks[address(stor140[t])].field_512:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(64 * s) + 261 len 31]
            if banks[address(stor140[t])].field_768 + (banks[address(stor140[t])].field_512 * currentPositionInfo[arg1][5][address(stor140[t])].field_0) < banks[address(stor140[t])].field_512 * currentPositionInfo[arg1][5][address(stor140[t])].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if 1 > banks[address(stor140[t])].field_768 + (banks[address(stor140[t])].field_512 * currentPositionInfo[arg1][5][address(stor140[t])].field_0):
                revert with 0, 'SafeMath: subtraction overflow'
            if banks[address(stor140[t])].field_768 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require banks[address(stor140[t])].field_768
            require u < mem[(32 * s) + 128]
            mem[(32 * u) + (32 * s) + 160] = banks[address(stor140[t])].field_768 + (banks[address(stor140[t])].field_512 * currentPositionInfo[arg1][5][address(stor140[t])].field_0) - 1 / banks[address(stor140[t])].field_768
        t = t + 1
        idx = uint255(idx) * 0.5
        u = u + 1
        continue 
    mem[(64 * s) + 160] = 64
    mem[(64 * s) + 224] = s
    mem[(64 * s) + 256 len floor32(s)] = mem[128 len floor32(s)]
    mem[(64 * s) + 192] = (32 * s) + 96
    mem[(98 * s) + 256] = mem[(32 * s) + 128]
    mem[(98 * s) + 288 len floor32(mem[(32 * s) + 128])] = mem[(32 * s) + 160 len floor32(mem[(32 * s) + 128])]
    return memory
      from (64 * s) + 160
       len (32 * mem[(32 * s) + 128]) + (161 * s) + 128
}

function putCollateral(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if POSITION_ID == -1:
        revert with 0, 'not within execution'
    if SPELLAddress != msg.sender:
        revert with 0, 'not from spell'
    if _IN_EXEC_LOCK != 1:
        revert with 0, 'in exec lock'
    _IN_EXEC_LOCK = 2
    if currentPositionInfo[stor133].field_256 != arg1:
        require ext_code.size(oracleAddress)
        staticcall oracleAddress.supportWrappedToken(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'collateral not supported'
        if currentPositionInfo[stor133].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0xfe616e6f746865722074797065206f6620636f6c6c61746572616c20616c7265616479206578697374,
                        mem[205 len 23]
        currentPositionInfo[stor133].field_256 = arg1
        currentPositionInfo[stor133].field_512 = arg2
    else:
        if currentPositionInfo[stor133].field_512 != arg2:
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.supportWrappedToken(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args address(arg1), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'collateral not supported'
            if currentPositionInfo[stor133].field_768:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            41,
                            0xfe616e6f746865722074797065206f6620636f6c6c61746572616c20616c7265616479206578697374,
                            mem[205 len 23]
            currentPositionInfo[stor133].field_256 = arg1
            currentPositionInfo[stor133].field_512 = arg2
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), this.address, arg2, arg3, 160, 0, mem[292]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if currentPositionInfo[stor133].field_768 < currentPositionInfo[stor133].field_768:
        revert with 0, 'SafeMath: addition overflow'
    emit PutCollateral(POSITION_ID, msg.sender, address(arg1), arg2, 0);
    _IN_EXEC_LOCK = 1
}

function getBorrowETHValue(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 143
    s = 0
    idx = stor4[sha3(mem[0 len 64])]
    t = 0
    while idx:
        if not bool(idx):
            s = s + 1
            idx = uint255(idx) * 0.5
            t = t
            continue 
        require s < allBanks.length
        mem[0] = address(allBanks[s])
        mem[32] = 141
        if not currentPositionInfo[arg1][5][address(stor140[s])].field_0:
            if banks[address(stor140[s])].field_768 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 1 > banks[address(stor140[s])].field_768:
                revert with 0, 'SafeMath: subtraction overflow'
            if banks[address(stor140[s])].field_768 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require banks[address(stor140[s])].field_768
            mem[100] = address(allBanks[s])
            mem[132] = banks[address(stor140[s])].field_768 - 1 / banks[address(stor140[s])].field_768
            mem[164] = currentPositionInfo[arg1].field_0
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                    gas gas_remaining wei
                   args address(allBanks[s]), banks[address(stor140[s])].field_768 - 1 / banks[address(stor140[s])].field_768, currentPositionInfo[arg1].field_0
        else:
            if banks[address(stor140[s])].field_512 * currentPositionInfo[arg1][5][address(stor140[s])].field_0 / currentPositionInfo[arg1][5][address(stor140[s])].field_0 != banks[address(stor140[s])].field_512:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
            if banks[address(stor140[s])].field_768 + (banks[address(stor140[s])].field_512 * currentPositionInfo[arg1][5][address(stor140[s])].field_0) < banks[address(stor140[s])].field_512 * currentPositionInfo[arg1][5][address(stor140[s])].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if 1 > banks[address(stor140[s])].field_768 + (banks[address(stor140[s])].field_512 * currentPositionInfo[arg1][5][address(stor140[s])].field_0):
                revert with 0, 'SafeMath: subtraction overflow'
            if banks[address(stor140[s])].field_768 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require banks[address(stor140[s])].field_768
            mem[100] = address(allBanks[s])
            mem[132] = banks[address(stor140[s])].field_768 + (banks[address(stor140[s])].field_512 * currentPositionInfo[arg1][5][address(stor140[s])].field_0) - 1 / banks[address(stor140[s])].field_768
            mem[164] = currentPositionInfo[arg1].field_0
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                    gas gas_remaining wei
                   args address(allBanks[s]), banks[address(stor140[s])].field_768 + (banks[address(stor140[s])].field_512 * currentPositionInfo[arg1][5][address(stor140[s])].field_0) - 1 / banks[address(stor140[s])].field_768, currentPositionInfo[arg1].field_0
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + t < t:
            revert with 0, 'SafeMath: addition overflow'
        s = s + 1
        idx = uint255(idx) * 0.5
        t = ext_call.return_data[0] + t
        continue 
    return t
}

function accrue(address arg1) {
    require calldata.size - 4 >= 32
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
        if banks[address(arg1)].field_512 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[0] - banks[address(arg1)].field_512:
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
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if banks[address(arg1)].field_512 < banks[address(arg1)].field_512:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if (ext_call.return_data[0] * feeBps) - (banks[address(arg1)].field_512 * feeBps) / ext_call.return_data[0] - banks[address(arg1)].field_512 != feeBps:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
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
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ((ext_call.return_data[0] * feeBps) - (banks[address(arg1)].field_512 * feeBps) / 10000) + banks[address(arg1)].field_512 < banks[address(arg1)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            banks[address(arg1)].field_512 += (ext_call.return_data[0] * feeBps) - (banks[address(arg1)].field_512 * feeBps) / 10000
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if banks[address(arg1)].field_256 < banks[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
}

function accrueAll(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _52 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 141
        _53 = sha3(mem[(32 * idx) + 140 len 20], 141)
        if not banks[mem[(32 * idx) + 140 len 20]].field_0:
            revert with 0, 'bank not exist'
        mem[(32 * arg1.length) + 132] = this.address
        require ext_code.size(banks[mem[0]].field_16)
        call banks[mem[0]].field_16.borrowBalanceCurrent(address rg1) with:
             gas gas_remaining wei
            args this.address
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= banks[mem[0]].field_512:
            if banks[mem[0]].field_512 != ext_call.return_data[0]:
                banks[mem[0]].field_512 = ext_call.return_data[0]
        else:
            if banks[mem[0]].field_512 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not ext_call.return_data[0] - banks[mem[0]].field_512:
                banks[mem[0]].field_512 = ext_call.return_data[0]
                mem[0] = address(_52)
                mem[32] = 141
                require ext_code.size(address(_52))
                staticcall address(_52).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(banks[address(_52)].field_16)
                call banks[address(_52)].field_16.borrow(uint256 rg1) with:
                     gas gas_remaining wei
                    args 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * arg1.length) + 132] = this.address
                require ext_code.size(address(_52))
                staticcall address(_52).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if banks[address(_52)].field_512 < banks[address(_52)].field_512:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if (ext_call.return_data[0] * feeBps) - (banks[mem[0]].field_512 * feeBps) / ext_call.return_data[0] - banks[mem[0]].field_512 != feeBps:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[(32 * arg1.length) + 229 len 31]
                banks[mem[0]].field_512 = ext_call.return_data[0]
                mem[0] = address(_52)
                mem[32] = 141
                require ext_code.size(address(_52))
                staticcall address(_52).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(banks[address(_52)].field_16)
                call banks[address(_52)].field_16.borrow(uint256 rg1) with:
                     gas gas_remaining wei
                    args ((ext_call.return_data[0] * feeBps) - (stor2[_53] * feeBps) / 10000)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * arg1.length) + 132] = this.address
                require ext_code.size(address(_52))
                staticcall address(_52).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ((ext_call.return_data[0] * feeBps) - (stor2[_53] * feeBps) / 10000) + banks[address(_52)].field_512 < banks[address(_52)].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                banks[address(_52)].field_512 += (ext_call.return_data[0] * feeBps) - (stor2[_53] * feeBps) / 10000
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if uint256(stor1[_53]) < uint256(stor1[_53]):
                revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        continue 
}

function borrowBalanceCurrent(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
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
        if banks[address(arg2)].field_512 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[0] - banks[address(arg2)].field_512:
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
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if banks[address(arg2)].field_512 < banks[address(arg2)].field_512:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if (ext_call.return_data[0] * feeBps) - (banks[address(arg2)].field_512 * feeBps) / ext_call.return_data[0] - banks[address(arg2)].field_512 != feeBps:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
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
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ((ext_call.return_data[0] * feeBps) - (banks[address(arg2)].field_512 * feeBps) / 10000) + banks[address(arg2)].field_512 < banks[address(arg2)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            banks[address(arg2)].field_512 += (ext_call.return_data[0] * feeBps) - (banks[address(arg2)].field_512 * feeBps) / 10000
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if banks[address(arg2)].field_256 < banks[address(arg2)].field_256:
            revert with 0, 'SafeMath: addition overflow'
    if not currentPositionInfo[arg1][5][address(arg2)].field_0:
        return 0
    if not banks[address(arg2)].field_512:
        return 0
    if not currentPositionInfo[arg1][5][address(arg2)].field_0:
        if banks[address(arg2)].field_768 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if 1 > banks[address(arg2)].field_768:
            revert with 0, 'SafeMath: subtraction overflow'
        if banks[address(arg2)].field_768 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if banks[address(arg2)].field_768:
            return (banks[address(arg2)].field_768 - 1 / banks[address(arg2)].field_768)
    else:
        if banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0 / currentPositionInfo[arg1][5][address(arg2)].field_0 != banks[address(arg2)].field_512:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if banks[address(arg2)].field_768 + (banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0) < banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        if 1 > banks[address(arg2)].field_768 + (banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0):
            revert with 0, 'SafeMath: subtraction overflow'
        if banks[address(arg2)].field_768 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if banks[address(arg2)].field_768:
            return (banks[address(arg2)].field_768 + (banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0) - 1 / banks[address(arg2)].field_768)
    ('iszero', ('field', 768, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('name', 'banks', 141)))))
    revert
}

function addBank(address arg1) {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'not the governor'
    require ext_code.size(arg1)
    staticcall arg1.uToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.cToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor142[address(ext_call.return_data[0])]:
        revert with 0, 'cToken already exists'
    if banks[address(ext_call.return_data[0])].field_0:
        revert with 0, 'bank already exists'
    stor142[address(ext_call.return_data[0])] = 1
    banks[address(ext_call.return_data[0])].field_0 = 1
    if 256 <= allBanks.length:
        revert with 0, 'reach bank limit'
    banks[address(ext_call.return_data[0])].field_0 = uint8(allBanks.length)
    banks[address(ext_call.return_data[0])].field_8 = 0
    banks[address(ext_call.return_data[0])].field_16 = address(ext_call.return_data[0])
    banks[address(ext_call.return_data[0])].field_176 = 0
    banks[address(ext_call.return_data[0])].field_176 = 0
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, 0
    mem[324 len 0] = 0
    call address(ext_call.return_data[0]) with:
         gas gas_remaining wei
        args Mask(480, -256, approve(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, 0) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, 0
        if not approve(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64:
            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                gas gas_remaining wei
               args this.address, address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 
                        32,
                        54,
                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                        mem[382 len 10]
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = 0, address(ext_call.return_data[0]), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        call address(ext_call.return_data[0]) with:
             gas gas_remaining wei
            args -1, mem[360 len 28], mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, 0
            if not approve(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64:
                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
        else:
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[456]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args this.address, address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 383 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 531 len 26]
            if not ext_code.size(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, address(ext_call.return_data[0]), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call address(ext_call.return_data[0]) with:
                 gas gas_remaining wei
                args -1, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, 0
                if not approve(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
            else:
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len 22]
        else:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args this.address, address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 
                            32,
                            54,
                            0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                            mem[ceil32(return_data.size) + 383 len 10]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(return_data.size) + 531 len 26]
            if not ext_code.size(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 425 len 64] = 0, address(ext_call.return_data[0]), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            call address(ext_call.return_data[0]) with:
                 gas gas_remaining wei
                args -1, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with approve(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64, 0, 0
                if not approve(address rg1, uint256 rg2), address(ext_call.return_data[0]) << 64:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
            else:
                mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 457]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    allBanks.length++
    stor5F2F[stor140.length] = address(ext_call.return_data[0])
    emit AddBank(address(ext_call.return_data[0]), address(ext_call.return_data[0]));
}

function repay(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if POSITION_ID == -1:
        revert with 0, 'not within execution'
    if SPELLAddress != msg.sender:
        revert with 0, 'not from spell'
    if _IN_EXEC_LOCK != 1:
        revert with 0, 'in exec lock'
    _IN_EXEC_LOCK = 2
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
        if banks[address(arg1)].field_512 == ext_call.return_data[0]:
            if not Mask(1, 1, uint256(sub_0e5641e6)):
                revert with 0, 'repay not allowed'
            if not stor145[address(arg1)]:
                revert with 0, 'token not whitelisted'
            if not currentPositionInfo[stor133][5][address(arg1)].field_0:
                if banks[address(arg1)].field_768 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 1 > banks[address(arg1)].field_768:
                    revert with 0, 'SafeMath: subtraction overflow'
                if banks[address(arg1)].field_768 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require banks[address(arg1)].field_768
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                if arg2 != -1:
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                    mem[416 len 4] = 0
                    call arg1 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                else:
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, banks[address(arg1)].field_768 - 1 / banks[address(arg1)].field_768) >> 32
                    mem[416 len 4] = 0
                    call arg1 with:
                         gas gas_remaining wei
                        args Mask(224, 32, banks[address(arg1)].field_768 - 1 / banks[address(arg1)].field_768) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), 
                                        msg.sender,
                                        address(this.address),
                                        banks[address(arg1)].field_768 - 1 / banks[address(arg1)].field_768
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(banks[address(arg1)].field_16)
                if wethAddress != arg1:
                    call banks[address(arg1)].field_16.repayBorrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args 0
                else:
                    call banks[address(arg1)].field_16.repayBorrow() with:
                         gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(banks[address(arg1)].field_16)
                staticcall banks[address(arg1)].field_16.borrowBalanceStored(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                banks[address(arg1)].field_512 = ext_call.return_data[0]
                if banks[address(arg1)].field_512 > banks[address(arg1)].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > banks[address(arg1)].field_768 - 1 / banks[address(arg1)].field_768:
                    revert with 0, 'paid exceeds debt'
                if 0 == banks[address(arg1)].field_768 - 1 / banks[address(arg1)].field_768:
                    if currentPositionInfo[stor133][5][address(arg1)].field_0 > banks[address(arg1)].field_768:
                        revert with 0, 'SafeMath: subtraction overflow'
                    banks[address(arg1)].field_768 -= currentPositionInfo[stor133][5][address(arg1)].field_0
                    if currentPositionInfo[stor133][5][address(arg1)].field_0 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    currentPositionInfo[stor133][5][address(arg1)].field_0 = 0
                    currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                    emit Repay(POSITION_ID, msg.sender, address(arg1), 0, currentPositionInfo[stor133][5][address(arg1)].field_0);
                else:
                    if banks[address(arg1)].field_512 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require banks[address(arg1)].field_512
                    if 0 / banks[address(arg1)].field_512 > banks[address(arg1)].field_768:
                        revert with 0, 'SafeMath: subtraction overflow'
                    banks[address(arg1)].field_768 -= 0 / banks[address(arg1)].field_512
                    if 0 / banks[address(arg1)].field_512 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    currentPositionInfo[stor133][5][address(arg1)].field_0 -= 0 / banks[address(arg1)].field_512
                    if not currentPositionInfo[stor133][5][address(arg1)].field_0 - (0 / banks[address(arg1)].field_512):
                        currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                    emit Repay(POSITION_ID, msg.sender, address(arg1), 0, 0 / banks[address(arg1)].field_512);
            else:
                if banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0 / currentPositionInfo[stor133][5][address(arg1)].field_0 != banks[address(arg1)].field_512:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) < banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                if 1 > banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0):
                    revert with 0, 'SafeMath: subtraction overflow'
                if banks[address(arg1)].field_768 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require banks[address(arg1)].field_768
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                if arg2 != -1:
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                    mem[416 len 4] = 0
                    call arg1 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(banks[address(arg1)].field_16)
                    if wethAddress != arg1:
                        call banks[address(arg1)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                    else:
                        call banks[address(arg1)].field_16.repayBorrow() with:
                             gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(banks[address(arg1)].field_16)
                    staticcall banks[address(arg1)].field_16.borrowBalanceStored(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    banks[address(arg1)].field_512 = ext_call.return_data[0]
                    if banks[address(arg1)].field_512 > banks[address(arg1)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) - 1 / banks[address(arg1)].field_768:
                        revert with 0, 'paid exceeds debt'
                    if 0 == banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) - 1 / banks[address(arg1)].field_768:
                        if currentPositionInfo[stor133][5][address(arg1)].field_0 > banks[address(arg1)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg1)].field_768 -= currentPositionInfo[stor133][5][address(arg1)].field_0
                        if currentPositionInfo[stor133][5][address(arg1)].field_0 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[stor133][5][address(arg1)].field_0 = 0
                        currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                        emit Repay(POSITION_ID, msg.sender, address(arg1), 0, currentPositionInfo[stor133][5][address(arg1)].field_0);
                    else:
                        if banks[address(arg1)].field_512 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require banks[address(arg1)].field_512
                        if 0 / banks[address(arg1)].field_512 > banks[address(arg1)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg1)].field_768 -= 0 / banks[address(arg1)].field_512
                        if 0 / banks[address(arg1)].field_512 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[stor133][5][address(arg1)].field_0 -= 0 / banks[address(arg1)].field_512
                        if not currentPositionInfo[stor133][5][address(arg1)].field_0 - (0 / banks[address(arg1)].field_512):
                            currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                        emit Repay(POSITION_ID, msg.sender, address(arg1), 0, 0 / banks[address(arg1)].field_512);
                else:
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) - 1 / banks[address(arg1)].field_768) >> 32
                    mem[416 len 4] = 0
                    mem[388 len 0] = 0
                    call arg1 with:
                         gas gas_remaining wei
                        args Mask(224, 32, banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) - 1 / banks[address(arg1)].field_768) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), 
                                        msg.sender,
                                        address(this.address),
                                        banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) - 1 / banks[address(arg1)].field_768
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(banks[address(arg1)].field_16)
                        if wethAddress != arg1:
                            call banks[address(arg1)].field_16.repayBorrow(uint256 rg1) with:
                                 gas gas_remaining wei
                                args 0
                        else:
                            call banks[address(arg1)].field_16.repayBorrow() with:
                                 gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(banks[address(arg1)].field_16)
                        staticcall banks[address(arg1)].field_16.borrowBalanceStored(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        banks[address(arg1)].field_512 = ext_call.return_data[0]
                        if banks[address(arg1)].field_512 > banks[address(arg1)].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) - 1 / banks[address(arg1)].field_768:
                            revert with 0, 'paid exceeds debt'
                        if 0 == banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) - 1 / banks[address(arg1)].field_768:
                            if currentPositionInfo[stor133][5][address(arg1)].field_0 > banks[address(arg1)].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            banks[address(arg1)].field_768 -= currentPositionInfo[stor133][5][address(arg1)].field_0
                            if currentPositionInfo[stor133][5][address(arg1)].field_0 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[stor133][5][address(arg1)].field_0 = 0
                            currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                            emit Repay(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5):
                                       POSITION_ID,
                                       msg.sender,
                                       arg1,
                                       0,
                                       0,
                                       currentPositionInfo[stor133][5][address(arg1)].field_0,
                        else:
                            if banks[address(arg1)].field_512 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require banks[address(arg1)].field_512
                            if 0 / banks[address(arg1)].field_512 > banks[address(arg1)].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            banks[address(arg1)].field_768 -= 0 / banks[address(arg1)].field_512
                            if 0 / banks[address(arg1)].field_512 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[stor133][5][address(arg1)].field_0 -= 0 / banks[address(arg1)].field_512
                            if not currentPositionInfo[stor133][5][address(arg1)].field_0 - (0 / banks[address(arg1)].field_512):
                                currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                            emit Repay(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5):
                                       POSITION_ID,
                                       msg.sender,
                                       arg1,
                                       0,
                                       0,
                                       0 / banks[address(arg1)].field_512,
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(banks[address(arg1)].field_16)
                        if wethAddress != arg1:
                            call banks[address(arg1)].field_16.repayBorrow(uint256 rg1) with:
                                 gas gas_remaining wei
                                args 0
                        else:
                            call banks[address(arg1)].field_16.repayBorrow() with:
                                 gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(banks[address(arg1)].field_16)
                        staticcall banks[address(arg1)].field_16.borrowBalanceStored(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        banks[address(arg1)].field_512 = ext_call.return_data[0]
                        if banks[address(arg1)].field_512 > banks[address(arg1)].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) - 1 / banks[address(arg1)].field_768:
                            revert with 0, 'paid exceeds debt'
                        if 0 == banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) - 1 / banks[address(arg1)].field_768:
                            if currentPositionInfo[stor133][5][address(arg1)].field_0 > banks[address(arg1)].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            banks[address(arg1)].field_768 -= currentPositionInfo[stor133][5][address(arg1)].field_0
                            if currentPositionInfo[stor133][5][address(arg1)].field_0 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[stor133][5][address(arg1)].field_0 = 0
                            currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                            emit Repay(POSITION_ID, msg.sender, address(arg1), 0, currentPositionInfo[stor133][5][address(arg1)].field_0);
                        else:
                            if banks[address(arg1)].field_512 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require banks[address(arg1)].field_512
                            if 0 / banks[address(arg1)].field_512 > banks[address(arg1)].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            banks[address(arg1)].field_768 -= 0 / banks[address(arg1)].field_512
                            if 0 / banks[address(arg1)].field_512 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[stor133][5][address(arg1)].field_0 -= 0 / banks[address(arg1)].field_512
                            if not currentPositionInfo[stor133][5][address(arg1)].field_0 - (0 / banks[address(arg1)].field_512):
                                currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                            emit Repay(POSITION_ID, msg.sender, address(arg1), 0, 0 / banks[address(arg1)].field_512);
        else:
            banks[address(arg1)].field_512 = ext_call.return_data[0]
            if not Mask(1, 1, uint256(sub_0e5641e6)):
                revert with 0, 'repay not allowed'
            if not stor145[address(arg1)]:
                revert with 0, 'token not whitelisted'
            if not currentPositionInfo[stor133][5][address(arg1)].field_0:
                if banks[address(arg1)].field_768 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 1 > banks[address(arg1)].field_768:
                    revert with 0, 'SafeMath: subtraction overflow'
                if banks[address(arg1)].field_768 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require banks[address(arg1)].field_768
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                if arg2 != -1:
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                    mem[416 len 4] = 0
                    mem[388 len 0] = 0
                    call arg1 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(banks[address(arg1)].field_16)
                        if wethAddress != arg1:
                            call banks[address(arg1)].field_16.repayBorrow(uint256 rg1) with:
                                 gas gas_remaining wei
                                args 0
                        else:
                            call banks[address(arg1)].field_16.repayBorrow() with:
                                 gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(banks[address(arg1)].field_16)
                        staticcall banks[address(arg1)].field_16.borrowBalanceStored(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        banks[address(arg1)].field_512 = ext_call.return_data[0]
                        if banks[address(arg1)].field_512 > banks[address(arg1)].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > banks[address(arg1)].field_768 - 1 / banks[address(arg1)].field_768:
                            revert with 0, 'paid exceeds debt'
                        if 0 == banks[address(arg1)].field_768 - 1 / banks[address(arg1)].field_768:
                            if currentPositionInfo[stor133][5][address(arg1)].field_0 > banks[address(arg1)].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            banks[address(arg1)].field_768 -= currentPositionInfo[stor133][5][address(arg1)].field_0
                            if currentPositionInfo[stor133][5][address(arg1)].field_0 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[stor133][5][address(arg1)].field_0 = 0
                            currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                            emit Repay(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5):
                                       POSITION_ID,
                                       msg.sender,
                                       arg1,
                                       0,
                                       0,
                                       currentPositionInfo[stor133][5][address(arg1)].field_0,
                        else:
                            if banks[address(arg1)].field_512 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require banks[address(arg1)].field_512
                            if 0 / banks[address(arg1)].field_512 > banks[address(arg1)].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            banks[address(arg1)].field_768 -= 0 / banks[address(arg1)].field_512
                            if 0 / banks[address(arg1)].field_512 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[stor133][5][address(arg1)].field_0 -= 0 / banks[address(arg1)].field_512
                            if not currentPositionInfo[stor133][5][address(arg1)].field_0 - (0 / banks[address(arg1)].field_512):
                                currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                            emit Repay(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5):
                                       POSITION_ID,
                                       msg.sender,
                                       arg1,
                                       0,
                                       0,
                                       0 / banks[address(arg1)].field_512,
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(banks[address(arg1)].field_16)
                        if wethAddress != arg1:
                            call banks[address(arg1)].field_16.repayBorrow(uint256 rg1) with:
                                 gas gas_remaining wei
                                args 0
                        else:
                            call banks[address(arg1)].field_16.repayBorrow() with:
                                 gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(banks[address(arg1)].field_16)
                        staticcall banks[address(arg1)].field_16.borrowBalanceStored(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        banks[address(arg1)].field_512 = ext_call.return_data[0]
                        if banks[address(arg1)].field_512 > banks[address(arg1)].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > banks[address(arg1)].field_768 - 1 / banks[address(arg1)].field_768:
                            revert with 0, 'paid exceeds debt'
                        if 0 == banks[address(arg1)].field_768 - 1 / banks[address(arg1)].field_768:
                            if currentPositionInfo[stor133][5][address(arg1)].field_0 > banks[address(arg1)].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            banks[address(arg1)].field_768 -= currentPositionInfo[stor133][5][address(arg1)].field_0
                            if currentPositionInfo[stor133][5][address(arg1)].field_0 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[stor133][5][address(arg1)].field_0 = 0
                            currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                            emit Repay(POSITION_ID, msg.sender, address(arg1), 0, currentPositionInfo[stor133][5][address(arg1)].field_0);
                        else:
                            if banks[address(arg1)].field_512 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require banks[address(arg1)].field_512
                            if 0 / banks[address(arg1)].field_512 > banks[address(arg1)].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            banks[address(arg1)].field_768 -= 0 / banks[address(arg1)].field_512
                            if 0 / banks[address(arg1)].field_512 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[stor133][5][address(arg1)].field_0 -= 0 / banks[address(arg1)].field_512
                            if not currentPositionInfo[stor133][5][address(arg1)].field_0 - (0 / banks[address(arg1)].field_512):
                                currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                            emit Repay(POSITION_ID, msg.sender, address(arg1), 0, 0 / banks[address(arg1)].field_512);
                else:
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, banks[address(arg1)].field_768 - 1 / banks[address(arg1)].field_768) >> 32
                    mem[416 len 4] = 0
                    mem[388 len 0] = 0
                    call arg1 with:
                         gas gas_remaining wei
                        args Mask(224, 32, banks[address(arg1)].field_768 - 1 / banks[address(arg1)].field_768) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), 
                                        msg.sender,
                                        address(this.address),
                                        banks[address(arg1)].field_768 - 1 / banks[address(arg1)].field_768
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(banks[address(arg1)].field_16)
                        if wethAddress != arg1:
                            call banks[address(arg1)].field_16.repayBorrow(uint256 rg1) with:
                                 gas gas_remaining wei
                                args 0
                        else:
                            call banks[address(arg1)].field_16.repayBorrow() with:
                                 gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(banks[address(arg1)].field_16)
                        staticcall banks[address(arg1)].field_16.borrowBalanceStored(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        banks[address(arg1)].field_512 = ext_call.return_data[0]
                        if banks[address(arg1)].field_512 > banks[address(arg1)].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > banks[address(arg1)].field_768 - 1 / banks[address(arg1)].field_768:
                            revert with 0, 'paid exceeds debt'
                        if 0 == banks[address(arg1)].field_768 - 1 / banks[address(arg1)].field_768:
                            if currentPositionInfo[stor133][5][address(arg1)].field_0 > banks[address(arg1)].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            banks[address(arg1)].field_768 -= currentPositionInfo[stor133][5][address(arg1)].field_0
                            if currentPositionInfo[stor133][5][address(arg1)].field_0 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[stor133][5][address(arg1)].field_0 = 0
                            currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                            emit Repay(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5):
                                       POSITION_ID,
                                       msg.sender,
                                       arg1,
                                       0,
                                       0,
                                       currentPositionInfo[stor133][5][address(arg1)].field_0,
                        else:
                            if banks[address(arg1)].field_512 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require banks[address(arg1)].field_512
                            if 0 / banks[address(arg1)].field_512 > banks[address(arg1)].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            banks[address(arg1)].field_768 -= 0 / banks[address(arg1)].field_512
                            if 0 / banks[address(arg1)].field_512 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[stor133][5][address(arg1)].field_0 -= 0 / banks[address(arg1)].field_512
                            if not currentPositionInfo[stor133][5][address(arg1)].field_0 - (0 / banks[address(arg1)].field_512):
                                currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                            emit Repay(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5):
                                       POSITION_ID,
                                       msg.sender,
                                       arg1,
                                       0,
                                       0,
                                       0 / banks[address(arg1)].field_512,
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(banks[address(arg1)].field_16)
                        if wethAddress != arg1:
                            call banks[address(arg1)].field_16.repayBorrow(uint256 rg1) with:
                                 gas gas_remaining wei
                                args 0
                        else:
                            call banks[address(arg1)].field_16.repayBorrow() with:
                                 gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(banks[address(arg1)].field_16)
                        staticcall banks[address(arg1)].field_16.borrowBalanceStored(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        banks[address(arg1)].field_512 = ext_call.return_data[0]
                        if banks[address(arg1)].field_512 > banks[address(arg1)].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > banks[address(arg1)].field_768 - 1 / banks[address(arg1)].field_768:
                            revert with 0, 'paid exceeds debt'
                        if 0 == banks[address(arg1)].field_768 - 1 / banks[address(arg1)].field_768:
                            if currentPositionInfo[stor133][5][address(arg1)].field_0 > banks[address(arg1)].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            banks[address(arg1)].field_768 -= currentPositionInfo[stor133][5][address(arg1)].field_0
                            if currentPositionInfo[stor133][5][address(arg1)].field_0 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[stor133][5][address(arg1)].field_0 = 0
                            currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                            emit Repay(POSITION_ID, msg.sender, address(arg1), 0, currentPositionInfo[stor133][5][address(arg1)].field_0);
                        else:
                            if banks[address(arg1)].field_512 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require banks[address(arg1)].field_512
                            if 0 / banks[address(arg1)].field_512 > banks[address(arg1)].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            banks[address(arg1)].field_768 -= 0 / banks[address(arg1)].field_512
                            if 0 / banks[address(arg1)].field_512 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[stor133][5][address(arg1)].field_0 -= 0 / banks[address(arg1)].field_512
                            if not currentPositionInfo[stor133][5][address(arg1)].field_0 - (0 / banks[address(arg1)].field_512):
                                currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                            emit Repay(POSITION_ID, msg.sender, address(arg1), 0, 0 / banks[address(arg1)].field_512);
            else:
                if banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0 / currentPositionInfo[stor133][5][address(arg1)].field_0 != banks[address(arg1)].field_512:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) < banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                if 1 > banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0):
                    revert with 0, 'SafeMath: subtraction overflow'
                if banks[address(arg1)].field_768 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require banks[address(arg1)].field_768
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                if arg2 != -1:
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                    mem[416 len 4] = 0
                    call arg1 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(banks[address(arg1)].field_16)
                    if wethAddress != arg1:
                        call banks[address(arg1)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                    else:
                        call banks[address(arg1)].field_16.repayBorrow() with:
                             gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(banks[address(arg1)].field_16)
                    staticcall banks[address(arg1)].field_16.borrowBalanceStored(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    banks[address(arg1)].field_512 = ext_call.return_data[0]
                    if banks[address(arg1)].field_512 > banks[address(arg1)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) - 1 / banks[address(arg1)].field_768:
                        revert with 0, 'paid exceeds debt'
                    if 0 == banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) - 1 / banks[address(arg1)].field_768:
                        if currentPositionInfo[stor133][5][address(arg1)].field_0 > banks[address(arg1)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg1)].field_768 -= currentPositionInfo[stor133][5][address(arg1)].field_0
                        if currentPositionInfo[stor133][5][address(arg1)].field_0 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[stor133][5][address(arg1)].field_0 = 0
                        currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                        emit Repay(POSITION_ID, msg.sender, address(arg1), 0, currentPositionInfo[stor133][5][address(arg1)].field_0);
                    else:
                        if banks[address(arg1)].field_512 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require banks[address(arg1)].field_512
                        if 0 / banks[address(arg1)].field_512 > banks[address(arg1)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg1)].field_768 -= 0 / banks[address(arg1)].field_512
                        if 0 / banks[address(arg1)].field_512 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[stor133][5][address(arg1)].field_0 -= 0 / banks[address(arg1)].field_512
                        if not currentPositionInfo[stor133][5][address(arg1)].field_0 - (0 / banks[address(arg1)].field_512):
                            currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                        emit Repay(POSITION_ID, msg.sender, address(arg1), 0, 0 / banks[address(arg1)].field_512);
                else:
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) - 1 / banks[address(arg1)].field_768) >> 32
                    mem[416 len 4] = 0
                    mem[388 len 0] = 0
                    call arg1 with:
                         gas gas_remaining wei
                        args Mask(224, 32, banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) - 1 / banks[address(arg1)].field_768) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), 
                                        msg.sender,
                                        address(this.address),
                                        banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) - 1 / banks[address(arg1)].field_768
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(banks[address(arg1)].field_16)
                        if wethAddress != arg1:
                            call banks[address(arg1)].field_16.repayBorrow(uint256 rg1) with:
                                 gas gas_remaining wei
                                args 0
                        else:
                            call banks[address(arg1)].field_16.repayBorrow() with:
                                 gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(banks[address(arg1)].field_16)
                        staticcall banks[address(arg1)].field_16.borrowBalanceStored(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        banks[address(arg1)].field_512 = ext_call.return_data[0]
                        if banks[address(arg1)].field_512 > banks[address(arg1)].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) - 1 / banks[address(arg1)].field_768:
                            revert with 0, 'paid exceeds debt'
                        if 0 == banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) - 1 / banks[address(arg1)].field_768:
                            if currentPositionInfo[stor133][5][address(arg1)].field_0 > banks[address(arg1)].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            banks[address(arg1)].field_768 -= currentPositionInfo[stor133][5][address(arg1)].field_0
                            if currentPositionInfo[stor133][5][address(arg1)].field_0 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[stor133][5][address(arg1)].field_0 = 0
                            currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                            emit Repay(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5):
                                       POSITION_ID,
                                       msg.sender,
                                       arg1,
                                       0,
                                       0,
                                       currentPositionInfo[stor133][5][address(arg1)].field_0,
                        else:
                            if banks[address(arg1)].field_512 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require banks[address(arg1)].field_512
                            if 0 / banks[address(arg1)].field_512 > banks[address(arg1)].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            banks[address(arg1)].field_768 -= 0 / banks[address(arg1)].field_512
                            if 0 / banks[address(arg1)].field_512 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[stor133][5][address(arg1)].field_0 -= 0 / banks[address(arg1)].field_512
                            if not currentPositionInfo[stor133][5][address(arg1)].field_0 - (0 / banks[address(arg1)].field_512):
                                currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                            emit Repay(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5):
                                       POSITION_ID,
                                       msg.sender,
                                       arg1,
                                       0,
                                       0,
                                       0 / banks[address(arg1)].field_512,
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(banks[address(arg1)].field_16)
                        if wethAddress != arg1:
                            call banks[address(arg1)].field_16.repayBorrow(uint256 rg1) with:
                                 gas gas_remaining wei
                                args 0
                        else:
                            call banks[address(arg1)].field_16.repayBorrow() with:
                                 gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(banks[address(arg1)].field_16)
                        staticcall banks[address(arg1)].field_16.borrowBalanceStored(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        banks[address(arg1)].field_512 = ext_call.return_data[0]
                        if banks[address(arg1)].field_512 > banks[address(arg1)].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) - 1 / banks[address(arg1)].field_768:
                            revert with 0, 'paid exceeds debt'
                        if 0 == banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) - 1 / banks[address(arg1)].field_768:
                            if currentPositionInfo[stor133][5][address(arg1)].field_0 > banks[address(arg1)].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            banks[address(arg1)].field_768 -= currentPositionInfo[stor133][5][address(arg1)].field_0
                            if currentPositionInfo[stor133][5][address(arg1)].field_0 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[stor133][5][address(arg1)].field_0 = 0
                            currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                            emit Repay(POSITION_ID, msg.sender, address(arg1), 0, currentPositionInfo[stor133][5][address(arg1)].field_0);
                        else:
                            if banks[address(arg1)].field_512 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require banks[address(arg1)].field_512
                            if 0 / banks[address(arg1)].field_512 > banks[address(arg1)].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            banks[address(arg1)].field_768 -= 0 / banks[address(arg1)].field_512
                            if 0 / banks[address(arg1)].field_512 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[stor133][5][address(arg1)].field_0 -= 0 / banks[address(arg1)].field_512
                            if not currentPositionInfo[stor133][5][address(arg1)].field_0 - (0 / banks[address(arg1)].field_512):
                                currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                            emit Repay(POSITION_ID, msg.sender, address(arg1), 0, 0 / banks[address(arg1)].field_512);
    else:
        if banks[address(arg1)].field_512 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[0] - banks[address(arg1)].field_512:
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
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if banks[address(arg1)].field_512 < banks[address(arg1)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if banks[address(arg1)].field_256 < banks[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if not Mask(1, 1, uint256(sub_0e5641e6)):
                revert with 0, 'repay not allowed'
            if not stor145[address(arg1)]:
                revert with 0, 'token not whitelisted'
            if not currentPositionInfo[stor133][5][address(arg1)].field_0:
                if banks[address(arg1)].field_768 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 1 > banks[address(arg1)].field_768:
                    revert with 0, 'SafeMath: subtraction overflow'
                if banks[address(arg1)].field_768 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require banks[address(arg1)].field_768
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                if arg2 != -1:
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                    mem[416 len 4] = 0
                    call arg1 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(banks[address(arg1)].field_16)
                    if wethAddress != arg1:
                        call banks[address(arg1)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                    else:
                        call banks[address(arg1)].field_16.repayBorrow() with:
                             gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(banks[address(arg1)].field_16)
                    staticcall banks[address(arg1)].field_16.borrowBalanceStored(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    banks[address(arg1)].field_512 = ext_call.return_data[0]
                    if banks[address(arg1)].field_512 > banks[address(arg1)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > banks[address(arg1)].field_768 - 1 / banks[address(arg1)].field_768:
                        revert with 0, 'paid exceeds debt'
                    if 0 == banks[address(arg1)].field_768 - 1 / banks[address(arg1)].field_768:
                        if currentPositionInfo[stor133][5][address(arg1)].field_0 > banks[address(arg1)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg1)].field_768 -= currentPositionInfo[stor133][5][address(arg1)].field_0
                        if currentPositionInfo[stor133][5][address(arg1)].field_0 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[stor133][5][address(arg1)].field_0 = 0
                        currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                        emit Repay(POSITION_ID, msg.sender, address(arg1), 0, currentPositionInfo[stor133][5][address(arg1)].field_0);
                    else:
                        if banks[address(arg1)].field_512 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require banks[address(arg1)].field_512
                        if 0 / banks[address(arg1)].field_512 > banks[address(arg1)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg1)].field_768 -= 0 / banks[address(arg1)].field_512
                        if 0 / banks[address(arg1)].field_512 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[stor133][5][address(arg1)].field_0 -= 0 / banks[address(arg1)].field_512
                        if not currentPositionInfo[stor133][5][address(arg1)].field_0 - (0 / banks[address(arg1)].field_512):
                            currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                        emit Repay(POSITION_ID, msg.sender, address(arg1), 0, 0 / banks[address(arg1)].field_512);
                else:
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, banks[address(arg1)].field_768 - 1 / banks[address(arg1)].field_768) >> 32
                    mem[416 len 4] = 0
                    mem[388 len 0] = 0
                    call arg1 with:
                         gas gas_remaining wei
                        args Mask(224, 32, banks[address(arg1)].field_768 - 1 / banks[address(arg1)].field_768) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), 
                                        msg.sender,
                                        address(this.address),
                                        banks[address(arg1)].field_768 - 1 / banks[address(arg1)].field_768
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(banks[address(arg1)].field_16)
                        if wethAddress != arg1:
                            call banks[address(arg1)].field_16.repayBorrow(uint256 rg1) with:
                                 gas gas_remaining wei
                                args 0
                        else:
                            call banks[address(arg1)].field_16.repayBorrow() with:
                                 gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(banks[address(arg1)].field_16)
                        staticcall banks[address(arg1)].field_16.borrowBalanceStored(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        banks[address(arg1)].field_512 = ext_call.return_data[0]
                        if banks[address(arg1)].field_512 > banks[address(arg1)].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > banks[address(arg1)].field_768 - 1 / banks[address(arg1)].field_768:
                            revert with 0, 'paid exceeds debt'
                        if 0 == banks[address(arg1)].field_768 - 1 / banks[address(arg1)].field_768:
                            if currentPositionInfo[stor133][5][address(arg1)].field_0 > banks[address(arg1)].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            banks[address(arg1)].field_768 -= currentPositionInfo[stor133][5][address(arg1)].field_0
                            if currentPositionInfo[stor133][5][address(arg1)].field_0 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[stor133][5][address(arg1)].field_0 = 0
                            currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                            emit Repay(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5):
                                       POSITION_ID,
                                       msg.sender,
                                       arg1,
                                       0,
                                       0,
                                       currentPositionInfo[stor133][5][address(arg1)].field_0,
                        else:
                            if banks[address(arg1)].field_512 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require banks[address(arg1)].field_512
                            if 0 / banks[address(arg1)].field_512 > banks[address(arg1)].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            banks[address(arg1)].field_768 -= 0 / banks[address(arg1)].field_512
                            if 0 / banks[address(arg1)].field_512 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[stor133][5][address(arg1)].field_0 -= 0 / banks[address(arg1)].field_512
                            if not currentPositionInfo[stor133][5][address(arg1)].field_0 - (0 / banks[address(arg1)].field_512):
                                currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                            emit Repay(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5):
                                       POSITION_ID,
                                       msg.sender,
                                       arg1,
                                       0,
                                       0,
                                       0 / banks[address(arg1)].field_512,
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(banks[address(arg1)].field_16)
                        if wethAddress != arg1:
                            call banks[address(arg1)].field_16.repayBorrow(uint256 rg1) with:
                                 gas gas_remaining wei
                                args 0
                        else:
                            call banks[address(arg1)].field_16.repayBorrow() with:
                                 gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(banks[address(arg1)].field_16)
                        staticcall banks[address(arg1)].field_16.borrowBalanceStored(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        banks[address(arg1)].field_512 = ext_call.return_data[0]
                        if banks[address(arg1)].field_512 > banks[address(arg1)].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > banks[address(arg1)].field_768 - 1 / banks[address(arg1)].field_768:
                            revert with 0, 'paid exceeds debt'
                        if 0 == banks[address(arg1)].field_768 - 1 / banks[address(arg1)].field_768:
                            if currentPositionInfo[stor133][5][address(arg1)].field_0 > banks[address(arg1)].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            banks[address(arg1)].field_768 -= currentPositionInfo[stor133][5][address(arg1)].field_0
                            if currentPositionInfo[stor133][5][address(arg1)].field_0 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[stor133][5][address(arg1)].field_0 = 0
                            currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                            emit Repay(POSITION_ID, msg.sender, address(arg1), 0, currentPositionInfo[stor133][5][address(arg1)].field_0);
                        else:
                            if banks[address(arg1)].field_512 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require banks[address(arg1)].field_512
                            if 0 / banks[address(arg1)].field_512 > banks[address(arg1)].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            banks[address(arg1)].field_768 -= 0 / banks[address(arg1)].field_512
                            if 0 / banks[address(arg1)].field_512 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[stor133][5][address(arg1)].field_0 -= 0 / banks[address(arg1)].field_512
                            if not currentPositionInfo[stor133][5][address(arg1)].field_0 - (0 / banks[address(arg1)].field_512):
                                currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                            emit Repay(POSITION_ID, msg.sender, address(arg1), 0, 0 / banks[address(arg1)].field_512);
            else:
                if banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0 / currentPositionInfo[stor133][5][address(arg1)].field_0 != banks[address(arg1)].field_512:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) < banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                if 1 > banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0):
                    revert with 0, 'SafeMath: subtraction overflow'
                if banks[address(arg1)].field_768 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require banks[address(arg1)].field_768
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                if arg2 != -1:
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                    mem[416 len 4] = 0
                    call arg1 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(banks[address(arg1)].field_16)
                    if wethAddress != arg1:
                        call banks[address(arg1)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                    else:
                        call banks[address(arg1)].field_16.repayBorrow() with:
                             gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(banks[address(arg1)].field_16)
                    staticcall banks[address(arg1)].field_16.borrowBalanceStored(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    banks[address(arg1)].field_512 = ext_call.return_data[0]
                    if banks[address(arg1)].field_512 > banks[address(arg1)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) - 1 / banks[address(arg1)].field_768:
                        revert with 0, 'paid exceeds debt'
                    if 0 == banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) - 1 / banks[address(arg1)].field_768:
                        if currentPositionInfo[stor133][5][address(arg1)].field_0 > banks[address(arg1)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg1)].field_768 -= currentPositionInfo[stor133][5][address(arg1)].field_0
                        if currentPositionInfo[stor133][5][address(arg1)].field_0 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[stor133][5][address(arg1)].field_0 = 0
                        currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                        emit Repay(POSITION_ID, msg.sender, address(arg1), 0, currentPositionInfo[stor133][5][address(arg1)].field_0);
                    else:
                        if banks[address(arg1)].field_512 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require banks[address(arg1)].field_512
                        if 0 / banks[address(arg1)].field_512 > banks[address(arg1)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg1)].field_768 -= 0 / banks[address(arg1)].field_512
                        if 0 / banks[address(arg1)].field_512 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[stor133][5][address(arg1)].field_0 -= 0 / banks[address(arg1)].field_512
                        if not currentPositionInfo[stor133][5][address(arg1)].field_0 - (0 / banks[address(arg1)].field_512):
                            currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                        emit Repay(POSITION_ID, msg.sender, address(arg1), 0, 0 / banks[address(arg1)].field_512);
                else:
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) - 1 / banks[address(arg1)].field_768) >> 32
                    mem[416 len 4] = 0
                    mem[388 len 0] = 0
                    call arg1 with:
                         gas gas_remaining wei
                        args Mask(224, 32, banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) - 1 / banks[address(arg1)].field_768) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), 
                                        msg.sender,
                                        address(this.address),
                                        banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) - 1 / banks[address(arg1)].field_768
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(banks[address(arg1)].field_16)
                        if wethAddress != arg1:
                            call banks[address(arg1)].field_16.repayBorrow(uint256 rg1) with:
                                 gas gas_remaining wei
                                args 0
                        else:
                            call banks[address(arg1)].field_16.repayBorrow() with:
                                 gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(banks[address(arg1)].field_16)
                        staticcall banks[address(arg1)].field_16.borrowBalanceStored(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        banks[address(arg1)].field_512 = ext_call.return_data[0]
                        if banks[address(arg1)].field_512 > banks[address(arg1)].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) - 1 / banks[address(arg1)].field_768:
                            revert with 0, 'paid exceeds debt'
                        if 0 == banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) - 1 / banks[address(arg1)].field_768:
                            if currentPositionInfo[stor133][5][address(arg1)].field_0 > banks[address(arg1)].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            banks[address(arg1)].field_768 -= currentPositionInfo[stor133][5][address(arg1)].field_0
                            if currentPositionInfo[stor133][5][address(arg1)].field_0 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[stor133][5][address(arg1)].field_0 = 0
                            currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                            emit Repay(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5):
                                       POSITION_ID,
                                       msg.sender,
                                       arg1,
                                       0,
                                       0,
                                       currentPositionInfo[stor133][5][address(arg1)].field_0,
                        else:
                            if banks[address(arg1)].field_512 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require banks[address(arg1)].field_512
                            if 0 / banks[address(arg1)].field_512 > banks[address(arg1)].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            banks[address(arg1)].field_768 -= 0 / banks[address(arg1)].field_512
                            if 0 / banks[address(arg1)].field_512 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[stor133][5][address(arg1)].field_0 -= 0 / banks[address(arg1)].field_512
                            if not currentPositionInfo[stor133][5][address(arg1)].field_0 - (0 / banks[address(arg1)].field_512):
                                currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                            emit Repay(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5):
                                       POSITION_ID,
                                       msg.sender,
                                       arg1,
                                       0,
                                       0,
                                       0 / banks[address(arg1)].field_512,
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(banks[address(arg1)].field_16)
                        if wethAddress != arg1:
                            call banks[address(arg1)].field_16.repayBorrow(uint256 rg1) with:
                                 gas gas_remaining wei
                                args 0
                        else:
                            call banks[address(arg1)].field_16.repayBorrow() with:
                                 gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(banks[address(arg1)].field_16)
                        staticcall banks[address(arg1)].field_16.borrowBalanceStored(address rg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        banks[address(arg1)].field_512 = ext_call.return_data[0]
                        if banks[address(arg1)].field_512 > banks[address(arg1)].field_512:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) - 1 / banks[address(arg1)].field_768:
                            revert with 0, 'paid exceeds debt'
                        if 0 == banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) - 1 / banks[address(arg1)].field_768:
                            if currentPositionInfo[stor133][5][address(arg1)].field_0 > banks[address(arg1)].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            banks[address(arg1)].field_768 -= currentPositionInfo[stor133][5][address(arg1)].field_0
                            if currentPositionInfo[stor133][5][address(arg1)].field_0 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[stor133][5][address(arg1)].field_0 = 0
                            currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                            emit Repay(POSITION_ID, msg.sender, address(arg1), 0, currentPositionInfo[stor133][5][address(arg1)].field_0);
                        else:
                            if banks[address(arg1)].field_512 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require banks[address(arg1)].field_512
                            if 0 / banks[address(arg1)].field_512 > banks[address(arg1)].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            banks[address(arg1)].field_768 -= 0 / banks[address(arg1)].field_512
                            if 0 / banks[address(arg1)].field_512 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[stor133][5][address(arg1)].field_0 -= 0 / banks[address(arg1)].field_512
                            if not currentPositionInfo[stor133][5][address(arg1)].field_0 - (0 / banks[address(arg1)].field_512):
                                currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                            emit Repay(POSITION_ID, msg.sender, address(arg1), 0, 0 / banks[address(arg1)].field_512);
        else:
            if (ext_call.return_data[0] * feeBps) - (banks[address(arg1)].field_512 * feeBps) / ext_call.return_data[0] - banks[address(arg1)].field_512 != feeBps:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
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
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ((ext_call.return_data[0] * feeBps) - (banks[address(arg1)].field_512 * feeBps) / 10000) + banks[address(arg1)].field_512 < banks[address(arg1)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            banks[address(arg1)].field_512 += (ext_call.return_data[0] * feeBps) - (banks[address(arg1)].field_512 * feeBps) / 10000
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if banks[address(arg1)].field_256 < banks[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if not Mask(1, 1, uint256(sub_0e5641e6)):
                revert with 0, 'repay not allowed'
            if not stor145[address(arg1)]:
                revert with 0, 'token not whitelisted'
            if not currentPositionInfo[stor133][5][address(arg1)].field_0:
                if banks[address(arg1)].field_768 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 1 > banks[address(arg1)].field_768:
                    revert with 0, 'SafeMath: subtraction overflow'
                if banks[address(arg1)].field_768 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require banks[address(arg1)].field_768
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                if arg2 != -1:
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                    mem[416 len 4] = 0
                    call arg1 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                else:
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, banks[address(arg1)].field_768 - 1 / banks[address(arg1)].field_768) >> 32
                    mem[416 len 4] = 0
                    call arg1 with:
                         gas gas_remaining wei
                        args Mask(224, 32, banks[address(arg1)].field_768 - 1 / banks[address(arg1)].field_768) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), 
                                        msg.sender,
                                        address(this.address),
                                        banks[address(arg1)].field_768 - 1 / banks[address(arg1)].field_768
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(banks[address(arg1)].field_16)
                if wethAddress != arg1:
                    call banks[address(arg1)].field_16.repayBorrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args 0
                else:
                    call banks[address(arg1)].field_16.repayBorrow() with:
                         gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(banks[address(arg1)].field_16)
                staticcall banks[address(arg1)].field_16.borrowBalanceStored(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                banks[address(arg1)].field_512 = ext_call.return_data[0]
                if banks[address(arg1)].field_512 > banks[address(arg1)].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > banks[address(arg1)].field_768 - 1 / banks[address(arg1)].field_768:
                    revert with 0, 'paid exceeds debt'
                if 0 == banks[address(arg1)].field_768 - 1 / banks[address(arg1)].field_768:
                    if currentPositionInfo[stor133][5][address(arg1)].field_0 > banks[address(arg1)].field_768:
                        revert with 0, 'SafeMath: subtraction overflow'
                    banks[address(arg1)].field_768 -= currentPositionInfo[stor133][5][address(arg1)].field_0
                    if currentPositionInfo[stor133][5][address(arg1)].field_0 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    currentPositionInfo[stor133][5][address(arg1)].field_0 = 0
                    currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                    emit Repay(POSITION_ID, msg.sender, address(arg1), 0, currentPositionInfo[stor133][5][address(arg1)].field_0);
                else:
                    if banks[address(arg1)].field_512 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require banks[address(arg1)].field_512
                    if 0 / banks[address(arg1)].field_512 > banks[address(arg1)].field_768:
                        revert with 0, 'SafeMath: subtraction overflow'
                    banks[address(arg1)].field_768 -= 0 / banks[address(arg1)].field_512
                    if 0 / banks[address(arg1)].field_512 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    currentPositionInfo[stor133][5][address(arg1)].field_0 -= 0 / banks[address(arg1)].field_512
                    if not currentPositionInfo[stor133][5][address(arg1)].field_0 - (0 / banks[address(arg1)].field_512):
                        currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                    emit Repay(POSITION_ID, msg.sender, address(arg1), 0, 0 / banks[address(arg1)].field_512);
            else:
                if banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0 / currentPositionInfo[stor133][5][address(arg1)].field_0 != banks[address(arg1)].field_512:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) < banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                if 1 > banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0):
                    revert with 0, 'SafeMath: subtraction overflow'
                if banks[address(arg1)].field_768 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require banks[address(arg1)].field_768
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                if arg2 != -1:
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
                    mem[416 len 4] = 0
                    call arg1 with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg2) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                else:
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) - 1 / banks[address(arg1)].field_768) >> 32
                    mem[416 len 4] = 0
                    call arg1 with:
                         gas gas_remaining wei
                        args Mask(224, 32, banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) - 1 / banks[address(arg1)].field_768) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), 
                                        msg.sender,
                                        address(this.address),
                                        banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) - 1 / banks[address(arg1)].field_768
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(banks[address(arg1)].field_16)
                if wethAddress != arg1:
                    call banks[address(arg1)].field_16.repayBorrow(uint256 rg1) with:
                         gas gas_remaining wei
                        args 0
                else:
                    call banks[address(arg1)].field_16.repayBorrow() with:
                         gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(banks[address(arg1)].field_16)
                staticcall banks[address(arg1)].field_16.borrowBalanceStored(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                banks[address(arg1)].field_512 = ext_call.return_data[0]
                if banks[address(arg1)].field_512 > banks[address(arg1)].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) - 1 / banks[address(arg1)].field_768:
                    revert with 0, 'paid exceeds debt'
                if 0 == banks[address(arg1)].field_768 + (banks[address(arg1)].field_512 * currentPositionInfo[stor133][5][address(arg1)].field_0) - 1 / banks[address(arg1)].field_768:
                    if currentPositionInfo[stor133][5][address(arg1)].field_0 > banks[address(arg1)].field_768:
                        revert with 0, 'SafeMath: subtraction overflow'
                    banks[address(arg1)].field_768 -= currentPositionInfo[stor133][5][address(arg1)].field_0
                    if currentPositionInfo[stor133][5][address(arg1)].field_0 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    currentPositionInfo[stor133][5][address(arg1)].field_0 = 0
                    currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                    emit Repay(POSITION_ID, msg.sender, address(arg1), 0, currentPositionInfo[stor133][5][address(arg1)].field_0);
                else:
                    if banks[address(arg1)].field_512 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require banks[address(arg1)].field_512
                    if 0 / banks[address(arg1)].field_512 > banks[address(arg1)].field_768:
                        revert with 0, 'SafeMath: subtraction overflow'
                    banks[address(arg1)].field_768 -= 0 / banks[address(arg1)].field_512
                    if 0 / banks[address(arg1)].field_512 > currentPositionInfo[stor133][5][address(arg1)].field_0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    currentPositionInfo[stor133][5][address(arg1)].field_0 -= 0 / banks[address(arg1)].field_512
                    if not currentPositionInfo[stor133][5][address(arg1)].field_0 - (0 / banks[address(arg1)].field_512):
                        currentPositionInfo[stor133].field_1024 = currentPositionInfo[stor133].field_1024 and !(1 << banks[address(arg1)].field_8)
                    emit Repay(POSITION_ID, msg.sender, address(arg1), 0, 0 / banks[address(arg1)].field_512);
    _IN_EXEC_LOCK = 1
}

function borrow(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if POSITION_ID == -1:
        revert with 0, 'not within execution'
    if SPELLAddress != msg.sender:
        revert with 0, 'not from spell'
    if _IN_EXEC_LOCK != 1:
        revert with 0, 'in exec lock'
    _IN_EXEC_LOCK = 2
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
        if banks[address(arg1)].field_512 == ext_call.return_data[0]:
            if not bool(allowBorrowStatus):
                revert with 0, 'borrow not allowed'
            if not stor145[address(arg1)]:
                revert with 0, 'token not whitelisted'
            if not banks[address(arg1)].field_768:
                if arg2 + banks[address(arg1)].field_768 < banks[address(arg1)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                banks[address(arg1)].field_768 += arg2
                if arg2 + currentPositionInfo[stor133][5][address(arg1)].field_0 < currentPositionInfo[stor133][5][address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                currentPositionInfo[stor133][5][address(arg1)].field_0 += arg2
                if not arg2 + currentPositionInfo[stor133][5][address(arg1)].field_0:
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
                        args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 + banks[address(arg1)].field_512 < banks[address(arg1)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    banks[address(arg1)].field_512 += arg2
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if wethAddress != arg1:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                        mem[324 len 0] = 0
                        call arg1 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, transfer(address rg1, uint256 rg2), msg.sender, 0) << 256, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                            if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            emit Borrow(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5):
                                        POSITION_ID,
                                        msg.sender,
                                        0,
                                        address(arg1),
                                        arg2,
                                        arg2,
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                            emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, arg2);
                    else:
                        require ext_code.size(wethAddress)
                        call wethAddress.deposit() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                        call arg1 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args 0, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                            if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, arg2);
                else:
                    currentPositionInfo[stor133].field_1024 = 1
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
                        args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 + banks[address(arg1)].field_512 < banks[address(arg1)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    banks[address(arg1)].field_512 += arg2
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if wethAddress == arg1:
                        require ext_code.size(wethAddress)
                        call wethAddress.deposit() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                    call arg1 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                        if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, arg2);
            else:
                if arg2:
                    if banks[address(arg1)].field_768 * arg2 / arg2 != banks[address(arg1)].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) < banks[address(arg1)].field_768 * arg2:
                        revert with 0, 'SafeMath: addition overflow'
                    if 1 > banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if banks[address(arg1)].field_512 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require banks[address(arg1)].field_512
                    if (banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512) + banks[address(arg1)].field_768 < banks[address(arg1)].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    banks[address(arg1)].field_768 += banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512
                    if (banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512) + currentPositionInfo[stor133][5][address(arg1)].field_0 < currentPositionInfo[stor133][5][address(arg1)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    currentPositionInfo[stor133][5][address(arg1)].field_0 += banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512
                    if not (banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512) + currentPositionInfo[stor133][5][address(arg1)].field_0:
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
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 + banks[address(arg1)].field_512 < banks[address(arg1)].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        banks[address(arg1)].field_512 += arg2
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if wethAddress == arg1:
                            require ext_code.size(wethAddress)
                            call wethAddress.deposit() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                        call arg1 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args 0, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                            if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512);
                    else:
                        currentPositionInfo[stor133].field_1024 = 1
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
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 + banks[address(arg1)].field_512 < banks[address(arg1)].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        banks[address(arg1)].field_512 += arg2
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if wethAddress != arg1:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                            mem[324 len 0] = 0
                            call arg1 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, transfer(address rg1, uint256 rg2), msg.sender, 0) << 256, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                                if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                emit Borrow(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5):
                                            POSITION_ID,
                                            msg.sender,
                                            0,
                                            address(arg1),
                                            arg2,
                                            banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512,
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512);
                        else:
                            require ext_code.size(wethAddress)
                            call wethAddress.deposit() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                            call arg1 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args 0, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                                if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512);
                else:
                    if banks[address(arg1)].field_512 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 1 > banks[address(arg1)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if banks[address(arg1)].field_512 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require banks[address(arg1)].field_512
                    if (banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512) + banks[address(arg1)].field_768 < banks[address(arg1)].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    banks[address(arg1)].field_768 += banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512
                    if (banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512) + currentPositionInfo[stor133][5][address(arg1)].field_0 < currentPositionInfo[stor133][5][address(arg1)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    currentPositionInfo[stor133][5][address(arg1)].field_0 += banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512
                    if not (banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512) + currentPositionInfo[stor133][5][address(arg1)].field_0:
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
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 + banks[address(arg1)].field_512 < banks[address(arg1)].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        banks[address(arg1)].field_512 += arg2
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if wethAddress != arg1:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                            mem[324 len 0] = 0
                            call arg1 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, transfer(address rg1, uint256 rg2), msg.sender, 0) << 256, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                                if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                emit Borrow(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5):
                                            POSITION_ID,
                                            msg.sender,
                                            0,
                                            address(arg1),
                                            arg2,
                                            banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512,
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512);
                        else:
                            require ext_code.size(wethAddress)
                            call wethAddress.deposit() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                            call arg1 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args 0, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                                if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512);
                    else:
                        currentPositionInfo[stor133].field_1024 = 1
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
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 + banks[address(arg1)].field_512 < banks[address(arg1)].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        banks[address(arg1)].field_512 += arg2
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if wethAddress == arg1:
                            require ext_code.size(wethAddress)
                            call wethAddress.deposit() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                        mem[324 len 0] = 0
                        call arg1 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, transfer(address rg1, uint256 rg2), msg.sender, 0) << 256, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                            if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            emit Borrow(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5):
                                        POSITION_ID,
                                        msg.sender,
                                        0,
                                        address(arg1),
                                        arg2,
                                        banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512,
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                            emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512);
        else:
            banks[address(arg1)].field_512 = ext_call.return_data[0]
            if not bool(allowBorrowStatus):
                revert with 0, 'borrow not allowed'
            if not stor145[address(arg1)]:
                revert with 0, 'token not whitelisted'
            if not banks[address(arg1)].field_768:
                if arg2 + banks[address(arg1)].field_768 < banks[address(arg1)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                banks[address(arg1)].field_768 += arg2
                if arg2 + currentPositionInfo[stor133][5][address(arg1)].field_0 < currentPositionInfo[stor133][5][address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                currentPositionInfo[stor133][5][address(arg1)].field_0 += arg2
                if arg2 + currentPositionInfo[stor133][5][address(arg1)].field_0:
                    currentPositionInfo[stor133].field_1024 = 1
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
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(arg1)
                staticcall arg1.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if arg2 + banks[address(arg1)].field_512 < banks[address(arg1)].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                banks[address(arg1)].field_512 += arg2
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if wethAddress == arg1:
                    require ext_code.size(wethAddress)
                    call wethAddress.deposit() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                call arg1 with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args 0, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                    if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, arg2);
            else:
                if arg2:
                    if banks[address(arg1)].field_768 * arg2 / arg2 != banks[address(arg1)].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) < banks[address(arg1)].field_768 * arg2:
                        revert with 0, 'SafeMath: addition overflow'
                    if 1 > banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if banks[address(arg1)].field_512 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require banks[address(arg1)].field_512
                    if (banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512) + banks[address(arg1)].field_768 < banks[address(arg1)].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    banks[address(arg1)].field_768 += banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512
                    if (banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512) + currentPositionInfo[stor133][5][address(arg1)].field_0 < currentPositionInfo[stor133][5][address(arg1)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    currentPositionInfo[stor133][5][address(arg1)].field_0 += banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512
                    if not (banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512) + currentPositionInfo[stor133][5][address(arg1)].field_0:
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
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 + banks[address(arg1)].field_512 < banks[address(arg1)].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        banks[address(arg1)].field_512 += arg2
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if wethAddress == arg1:
                            require ext_code.size(wethAddress)
                            call wethAddress.deposit() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                        mem[324 len 0] = 0
                        call arg1 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, transfer(address rg1, uint256 rg2), msg.sender, 0) << 256, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                            if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            emit Borrow(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5):
                                        POSITION_ID,
                                        msg.sender,
                                        0,
                                        address(arg1),
                                        arg2,
                                        banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512,
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                            emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512);
                    else:
                        currentPositionInfo[stor133].field_1024 = 1
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
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 + banks[address(arg1)].field_512 < banks[address(arg1)].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        banks[address(arg1)].field_512 += arg2
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if wethAddress != arg1:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                            mem[324 len 0] = 0
                            call arg1 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, transfer(address rg1, uint256 rg2), msg.sender, 0) << 256, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                                if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                emit Borrow(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5):
                                            POSITION_ID,
                                            msg.sender,
                                            0,
                                            address(arg1),
                                            arg2,
                                            banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512,
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512);
                        else:
                            require ext_code.size(wethAddress)
                            call wethAddress.deposit() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                            call arg1 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args 0, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                                if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512);
                else:
                    if banks[address(arg1)].field_512 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 1 > banks[address(arg1)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if banks[address(arg1)].field_512 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require banks[address(arg1)].field_512
                    if (banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512) + banks[address(arg1)].field_768 < banks[address(arg1)].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    banks[address(arg1)].field_768 += banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512
                    if (banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512) + currentPositionInfo[stor133][5][address(arg1)].field_0 < currentPositionInfo[stor133][5][address(arg1)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    currentPositionInfo[stor133][5][address(arg1)].field_0 += banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512
                    if not (banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512) + currentPositionInfo[stor133][5][address(arg1)].field_0:
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
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 + banks[address(arg1)].field_512 < banks[address(arg1)].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        banks[address(arg1)].field_512 += arg2
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if wethAddress == arg1:
                            require ext_code.size(wethAddress)
                            call wethAddress.deposit() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                        mem[324 len 0] = 0
                        call arg1 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, transfer(address rg1, uint256 rg2), msg.sender, 0) << 256, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                            if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            emit Borrow(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5):
                                        POSITION_ID,
                                        msg.sender,
                                        0,
                                        address(arg1),
                                        arg2,
                                        banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512,
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                            emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512);
                    else:
                        currentPositionInfo[stor133].field_1024 = 1
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
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 + banks[address(arg1)].field_512 < banks[address(arg1)].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        banks[address(arg1)].field_512 += arg2
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if wethAddress != arg1:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                            call arg1 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args 0, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                                if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512);
                        else:
                            require ext_code.size(wethAddress)
                            call wethAddress.deposit() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                            mem[324 len 0] = 0
                            call arg1 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, transfer(address rg1, uint256 rg2), msg.sender, 0) << 256, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                                if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                emit Borrow(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5):
                                            POSITION_ID,
                                            msg.sender,
                                            0,
                                            address(arg1),
                                            arg2,
                                            banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512,
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512);
    else:
        if banks[address(arg1)].field_512 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[0] - banks[address(arg1)].field_512:
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
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if banks[address(arg1)].field_512 < banks[address(arg1)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if banks[address(arg1)].field_256 < banks[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if not bool(allowBorrowStatus):
                revert with 0, 'borrow not allowed'
            if not stor145[address(arg1)]:
                revert with 0, 'token not whitelisted'
            if not banks[address(arg1)].field_768:
                if arg2 + banks[address(arg1)].field_768 < banks[address(arg1)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                banks[address(arg1)].field_768 += arg2
                if arg2 + currentPositionInfo[stor133][5][address(arg1)].field_0 < currentPositionInfo[stor133][5][address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                currentPositionInfo[stor133][5][address(arg1)].field_0 += arg2
                if not arg2 + currentPositionInfo[stor133][5][address(arg1)].field_0:
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
                        args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 + banks[address(arg1)].field_512 < banks[address(arg1)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    banks[address(arg1)].field_512 += arg2
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if wethAddress == arg1:
                        require ext_code.size(wethAddress)
                        call wethAddress.deposit() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                    mem[324 len 0] = 0
                    call arg1 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, transfer(address rg1, uint256 rg2), msg.sender, 0) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                        if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        emit Borrow(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5):
                                    POSITION_ID,
                                    msg.sender,
                                    0,
                                    address(arg1),
                                    arg2,
                                    arg2,
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                        emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, arg2);
                else:
                    currentPositionInfo[stor133].field_1024 = 1
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
                        args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 + banks[address(arg1)].field_512 < banks[address(arg1)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    banks[address(arg1)].field_512 += arg2
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if wethAddress == arg1:
                        require ext_code.size(wethAddress)
                        call wethAddress.deposit() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                    call arg1 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args 0, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                        if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                    emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, arg2);
            else:
                if not arg2:
                    if banks[address(arg1)].field_512 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 1 > banks[address(arg1)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if banks[address(arg1)].field_512 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require banks[address(arg1)].field_512
                    if (banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512) + banks[address(arg1)].field_768 < banks[address(arg1)].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    banks[address(arg1)].field_768 += banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512
                    if (banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512) + currentPositionInfo[stor133][5][address(arg1)].field_0 < currentPositionInfo[stor133][5][address(arg1)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    currentPositionInfo[stor133][5][address(arg1)].field_0 += banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512
                    if not (banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512) + currentPositionInfo[stor133][5][address(arg1)].field_0:
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
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 + banks[address(arg1)].field_512 < banks[address(arg1)].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        banks[address(arg1)].field_512 += arg2
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if wethAddress != arg1:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                            call arg1 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args 0, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                                if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512);
                        else:
                            require ext_code.size(wethAddress)
                            call wethAddress.deposit() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                            mem[324 len 0] = 0
                            call arg1 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, transfer(address rg1, uint256 rg2), msg.sender, 0) << 256, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                                if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                emit Borrow(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5):
                                            POSITION_ID,
                                            msg.sender,
                                            0,
                                            address(arg1),
                                            arg2,
                                            banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512,
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512);
                    else:
                        currentPositionInfo[stor133].field_1024 = 1
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
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 + banks[address(arg1)].field_512 < banks[address(arg1)].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        banks[address(arg1)].field_512 += arg2
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if wethAddress == arg1:
                            require ext_code.size(wethAddress)
                            call wethAddress.deposit() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                        call arg1 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args 0, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                            if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512);
                else:
                    if banks[address(arg1)].field_768 * arg2 / arg2 != banks[address(arg1)].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) < banks[address(arg1)].field_768 * arg2:
                        revert with 0, 'SafeMath: addition overflow'
                    if 1 > banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if banks[address(arg1)].field_512 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require banks[address(arg1)].field_512
                    if (banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512) + banks[address(arg1)].field_768 < banks[address(arg1)].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    banks[address(arg1)].field_768 += banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512
                    if (banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512) + currentPositionInfo[stor133][5][address(arg1)].field_0 < currentPositionInfo[stor133][5][address(arg1)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    currentPositionInfo[stor133][5][address(arg1)].field_0 += banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512
                    if not (banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512) + currentPositionInfo[stor133][5][address(arg1)].field_0:
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
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 + banks[address(arg1)].field_512 < banks[address(arg1)].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        banks[address(arg1)].field_512 += arg2
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if wethAddress == arg1:
                            require ext_code.size(wethAddress)
                            call wethAddress.deposit() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                        call arg1 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args 0, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                            if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512);
                    else:
                        currentPositionInfo[stor133].field_1024 = 1
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
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 + banks[address(arg1)].field_512 < banks[address(arg1)].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        banks[address(arg1)].field_512 += arg2
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if wethAddress != arg1:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                            mem[324 len 0] = 0
                            call arg1 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, transfer(address rg1, uint256 rg2), msg.sender, 0) << 256, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                                if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                emit Borrow(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5):
                                            POSITION_ID,
                                            msg.sender,
                                            0,
                                            address(arg1),
                                            arg2,
                                            banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512,
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512);
                        else:
                            require ext_code.size(wethAddress)
                            call wethAddress.deposit() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                            call arg1 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args 0, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                                if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512);
        else:
            if (ext_call.return_data[0] * feeBps) - (banks[address(arg1)].field_512 * feeBps) / ext_call.return_data[0] - banks[address(arg1)].field_512 != feeBps:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
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
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ((ext_call.return_data[0] * feeBps) - (banks[address(arg1)].field_512 * feeBps) / 10000) + banks[address(arg1)].field_512 < banks[address(arg1)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            banks[address(arg1)].field_512 += (ext_call.return_data[0] * feeBps) - (banks[address(arg1)].field_512 * feeBps) / 10000
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if banks[address(arg1)].field_256 < banks[address(arg1)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if not bool(allowBorrowStatus):
                revert with 0, 'borrow not allowed'
            if not stor145[address(arg1)]:
                revert with 0, 'token not whitelisted'
            if not banks[address(arg1)].field_768:
                if arg2 + banks[address(arg1)].field_768 < banks[address(arg1)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                banks[address(arg1)].field_768 += arg2
                if arg2 + currentPositionInfo[stor133][5][address(arg1)].field_0 < currentPositionInfo[stor133][5][address(arg1)].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                currentPositionInfo[stor133][5][address(arg1)].field_0 += arg2
                if not arg2 + currentPositionInfo[stor133][5][address(arg1)].field_0:
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
                        args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 + banks[address(arg1)].field_512 < banks[address(arg1)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    banks[address(arg1)].field_512 += arg2
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if wethAddress != arg1:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                        mem[324 len 0] = 0
                        call arg1 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, transfer(address rg1, uint256 rg2), msg.sender, 0) << 256, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                            if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            emit Borrow(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5):
                                        POSITION_ID,
                                        msg.sender,
                                        0,
                                        address(arg1),
                                        arg2,
                                        arg2,
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                            emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, arg2);
                    else:
                        require ext_code.size(wethAddress)
                        call wethAddress.deposit() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                        call arg1 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args 0, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                            if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, arg2);
                else:
                    currentPositionInfo[stor133].field_1024 = 1
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
                        args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 + banks[address(arg1)].field_512 < banks[address(arg1)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    banks[address(arg1)].field_512 += arg2
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if wethAddress == arg1:
                        require ext_code.size(wethAddress)
                        call wethAddress.deposit() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                    if not ext_code.size(arg1):
                        revert with 0, 'Address: call to non-contract'
                    mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                    mem[324 len 0] = 0
                    call arg1 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, transfer(address rg1, uint256 rg2), msg.sender, 0) << 256, mem[324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                        if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        emit Borrow(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5):
                                    POSITION_ID,
                                    msg.sender,
                                    0,
                                    address(arg1),
                                    arg2,
                                    arg2,
                    else:
                        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[292]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 371 len 22]
                        emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, arg2);
            else:
                if not arg2:
                    if banks[address(arg1)].field_512 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 1 > banks[address(arg1)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if banks[address(arg1)].field_512 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require banks[address(arg1)].field_512
                    if (banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512) + banks[address(arg1)].field_768 < banks[address(arg1)].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    banks[address(arg1)].field_768 += banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512
                    if (banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512) + currentPositionInfo[stor133][5][address(arg1)].field_0 < currentPositionInfo[stor133][5][address(arg1)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    currentPositionInfo[stor133][5][address(arg1)].field_0 += banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512
                    if not (banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512) + currentPositionInfo[stor133][5][address(arg1)].field_0:
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
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 + banks[address(arg1)].field_512 < banks[address(arg1)].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        banks[address(arg1)].field_512 += arg2
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if wethAddress == arg1:
                            require ext_code.size(wethAddress)
                            call wethAddress.deposit() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                        if not ext_code.size(arg1):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                        call arg1 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args 0, mem[324 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                            if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                        emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512);
                    else:
                        currentPositionInfo[stor133].field_1024 = 1
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
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 + banks[address(arg1)].field_512 < banks[address(arg1)].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        banks[address(arg1)].field_512 += arg2
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if wethAddress != arg1:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                            mem[324 len 0] = 0
                            call arg1 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, transfer(address rg1, uint256 rg2), msg.sender, 0) << 256, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                                if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                emit Borrow(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5):
                                            POSITION_ID,
                                            msg.sender,
                                            0,
                                            address(arg1),
                                            arg2,
                                            banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512,
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512);
                        else:
                            require ext_code.size(wethAddress)
                            call wethAddress.deposit() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                            call arg1 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args 0, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                                if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, banks[address(arg1)].field_512 - 1 / banks[address(arg1)].field_512);
                else:
                    if banks[address(arg1)].field_768 * arg2 / arg2 != banks[address(arg1)].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) < banks[address(arg1)].field_768 * arg2:
                        revert with 0, 'SafeMath: addition overflow'
                    if 1 > banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if banks[address(arg1)].field_512 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require banks[address(arg1)].field_512
                    if (banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512) + banks[address(arg1)].field_768 < banks[address(arg1)].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    banks[address(arg1)].field_768 += banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512
                    if (banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512) + currentPositionInfo[stor133][5][address(arg1)].field_0 < currentPositionInfo[stor133][5][address(arg1)].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    currentPositionInfo[stor133][5][address(arg1)].field_0 += banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512
                    if not (banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512) + currentPositionInfo[stor133][5][address(arg1)].field_0:
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
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 + banks[address(arg1)].field_512 < banks[address(arg1)].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        banks[address(arg1)].field_512 += arg2
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if wethAddress != arg1:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                            mem[324 len 0] = 0
                            call arg1 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, transfer(address rg1, uint256 rg2), msg.sender, 0) << 256, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                                if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                emit Borrow(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5):
                                            POSITION_ID,
                                            msg.sender,
                                            0,
                                            address(arg1),
                                            arg2,
                                            banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512,
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512);
                        else:
                            require ext_code.size(wethAddress)
                            call wethAddress.deposit() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                            call arg1 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args 0, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                                if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512);
                    else:
                        currentPositionInfo[stor133].field_1024 = 1
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
                            args arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if arg2 + banks[address(arg1)].field_512 < banks[address(arg1)].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        banks[address(arg1)].field_512 += arg2
                        if ext_call.return_data[0] > ext_call.return_data[0]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if wethAddress != arg1:
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                            call arg1 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args 0, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                                if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                            emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512);
                        else:
                            require ext_code.size(wethAddress)
                            call wethAddress.deposit() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                            if not ext_code.size(arg1):
                                revert with 0, 'Address: call to non-contract'
                            mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, 0
                            mem[324 len 0] = 0
                            call arg1 with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(480, -256, transfer(address rg1, uint256 rg2), msg.sender, 0) << 256, mem[324 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with transfer(address rg1, uint256 rg2), msg.sender, 0
                                if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                                emit Borrow(uint256 rg1, address rg2, address rg3, uint256 rg4, uint256 rg5):
                                            POSITION_ID,
                                            msg.sender,
                                            0,
                                            address(arg1),
                                            arg2,
                                            banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512,
                            else:
                                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[292]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 371 len 22]
                                emit Borrow(POSITION_ID, msg.sender, address(arg1), arg2, banks[address(arg1)].field_512 + (banks[address(arg1)].field_768 * arg2) - 1 / banks[address(arg1)].field_512);
    _IN_EXEC_LOCK = 1
}

function liquidate(uint256 arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if _GENERAL_LOCK != 1:
        revert with 0, 'general lock'
    _GENERAL_LOCK = 2
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
        if banks[address(arg2)].field_512 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[0] - banks[address(arg2)].field_512:
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
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if banks[address(arg2)].field_512 < banks[address(arg2)].field_512:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if (ext_call.return_data[0] * feeBps) - (banks[address(arg2)].field_512 * feeBps) / ext_call.return_data[0] - banks[address(arg2)].field_512 != feeBps:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
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
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ((ext_call.return_data[0] * feeBps) - (banks[address(arg2)].field_512 * feeBps) / 10000) + banks[address(arg2)].field_512 < banks[address(arg2)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            banks[address(arg2)].field_512 += (ext_call.return_data[0] * feeBps) - (banks[address(arg2)].field_512 * feeBps) / 10000
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if banks[address(arg2)].field_256 < banks[address(arg2)].field_256:
            revert with 0, 'SafeMath: addition overflow'
    if not currentPositionInfo[arg1].field_768:
        mem[0] = arg1
        mem[32] = 143
        s = 0
        idx = stor4[sha3(mem[0 len 64])]
        t = 0
        while idx:
            if not bool(idx):
                s = s + 1
                idx = uint255(idx) * 0.5
                t = t
                continue 
            require s < allBanks.length
            mem[0] = address(allBanks[s])
            mem[32] = 141
            if not currentPositionInfo[arg1][5][address(stor140[s])].field_0:
                if banks[address(stor140[s])].field_768 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 1 > banks[address(stor140[s])].field_768:
                    revert with 0, 'SafeMath: subtraction overflow'
                if banks[address(stor140[s])].field_768 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require banks[address(stor140[s])].field_768
                mem[100] = address(allBanks[s])
                mem[132] = banks[address(stor140[s])].field_768 - 1 / banks[address(stor140[s])].field_768
                mem[164] = currentPositionInfo[arg1].field_0
                require ext_code.size(oracleAddress)
                staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                        gas gas_remaining wei
                       args address(allBanks[s]), banks[address(stor140[s])].field_768 - 1 / banks[address(stor140[s])].field_768, currentPositionInfo[arg1].field_0
            else:
                if banks[address(stor140[s])].field_512 * currentPositionInfo[arg1][5][address(stor140[s])].field_0 / currentPositionInfo[arg1][5][address(stor140[s])].field_0 != banks[address(stor140[s])].field_512:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                if banks[address(stor140[s])].field_768 + (banks[address(stor140[s])].field_512 * currentPositionInfo[arg1][5][address(stor140[s])].field_0) < banks[address(stor140[s])].field_512 * currentPositionInfo[arg1][5][address(stor140[s])].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                if 1 > banks[address(stor140[s])].field_768 + (banks[address(stor140[s])].field_512 * currentPositionInfo[arg1][5][address(stor140[s])].field_0):
                    revert with 0, 'SafeMath: subtraction overflow'
                if banks[address(stor140[s])].field_768 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require banks[address(stor140[s])].field_768
                mem[100] = address(allBanks[s])
                mem[132] = banks[address(stor140[s])].field_768 + (banks[address(stor140[s])].field_512 * currentPositionInfo[arg1][5][address(stor140[s])].field_0) - 1 / banks[address(stor140[s])].field_768
                mem[164] = currentPositionInfo[arg1].field_0
                require ext_code.size(oracleAddress)
                staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                        gas gas_remaining wei
                       args address(allBanks[s]), banks[address(stor140[s])].field_768 + (banks[address(stor140[s])].field_512 * currentPositionInfo[arg1][5][address(stor140[s])].field_0) - 1 / banks[address(stor140[s])].field_768, currentPositionInfo[arg1].field_0
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + t < t:
                revert with 0, 'SafeMath: addition overflow'
            s = s + 1
            idx = uint255(idx) * 0.5
            t = ext_call.return_data[0] + t
            continue 
        if 0 >= t:
            revert with 0, 'position still healthy'
        if not currentPositionInfo[arg1][5][address(arg2)].field_0:
            if banks[address(arg2)].field_768 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 1 > banks[address(arg2)].field_768:
                revert with 0, 'SafeMath: subtraction overflow'
            if banks[address(arg2)].field_768 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require banks[address(arg2)].field_768
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
            if not ext_code.size(arg2):
                revert with 0, 'Address: call to non-contract'
            if arg3 != -1:
                mem[292 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
                mem[416 len 4] = 0
                call arg2 with:
                     gas gas_remaining wei
                    args arg3, mem[228 len 60], mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3
                    if not 0, Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(banks[address(arg2)].field_16)
                    if wethAddress != arg2:
                        call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                    else:
                        call banks[address(arg2)].field_16.repayBorrow() with:
                             gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(banks[address(arg2)].field_16)
                    staticcall banks[address(arg2)].field_16.borrowBalanceStored(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    banks[address(arg2)].field_512 = ext_call.return_data[0]
                    if banks[address(arg2)].field_512 > banks[address(arg2)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > banks[address(arg2)].field_768 - 1 / banks[address(arg2)].field_768:
                        revert with 0, 'paid exceeds debt'
                    if 0 == banks[address(arg2)].field_768 - 1 / banks[address(arg2)].field_768:
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 > banks[address(arg2)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg2)].field_768 -= currentPositionInfo[arg1][5][address(arg2)].field_0
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 > currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[arg1][5][address(arg2)].field_0 = 0
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if ext_call.return_data[0] > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0, mem[488]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, currentPositionInfo[arg1][5][address(arg2)].field_0, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0, mem[488]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, currentPositionInfo[arg1][5][address(arg2)].field_0, currentPositionInfo[arg1].field_768);
                    else:
                        if banks[address(arg2)].field_512 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require banks[address(arg2)].field_512
                        if 0 / banks[address(arg2)].field_512 > banks[address(arg2)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg2)].field_768 -= 0 / banks[address(arg2)].field_512
                        if 0 / banks[address(arg2)].field_512 > currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[arg1][5][address(arg2)].field_0 -= 0 / banks[address(arg2)].field_512
                        if not currentPositionInfo[arg1][5][address(arg2)].field_0 - (0 / banks[address(arg2)].field_512):
                            currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if ext_call.return_data[0] > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0, mem[488]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, 0 / banks[address(arg2)].field_512, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0, mem[488]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, 0 / banks[address(arg2)].field_512, currentPositionInfo[arg1].field_768);
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(banks[address(arg2)].field_16)
                    if wethAddress != arg2:
                        call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                    else:
                        call banks[address(arg2)].field_16.repayBorrow() with:
                             gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(banks[address(arg2)].field_16)
                    staticcall banks[address(arg2)].field_16.borrowBalanceStored(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    banks[address(arg2)].field_512 = ext_call.return_data[0]
                    if banks[address(arg2)].field_512 > banks[address(arg2)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > banks[address(arg2)].field_768 - 1 / banks[address(arg2)].field_768:
                        revert with 0, 'paid exceeds debt'
                    if 0 == banks[address(arg2)].field_768 - 1 / banks[address(arg2)].field_768:
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 > banks[address(arg2)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg2)].field_768 -= currentPositionInfo[arg1][5][address(arg2)].field_0
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 > currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[arg1][5][address(arg2)].field_0 = 0
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if ext_call.return_data[0] > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0, mem[ceil32(return_data.size) + 489]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, currentPositionInfo[arg1][5][address(arg2)].field_0, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0, mem[ceil32(return_data.size) + 489]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, currentPositionInfo[arg1][5][address(arg2)].field_0, currentPositionInfo[arg1].field_768);
                    else:
                        if banks[address(arg2)].field_512 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require banks[address(arg2)].field_512
                        if 0 / banks[address(arg2)].field_512 > banks[address(arg2)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg2)].field_768 -= 0 / banks[address(arg2)].field_512
                        if 0 / banks[address(arg2)].field_512 > currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[arg1][5][address(arg2)].field_0 -= 0 / banks[address(arg2)].field_512
                        if not currentPositionInfo[arg1][5][address(arg2)].field_0 - (0 / banks[address(arg2)].field_512):
                            currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if ext_call.return_data[0] > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0, mem[ceil32(return_data.size) + 489]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, 0 / banks[address(arg2)].field_512, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0, mem[ceil32(return_data.size) + 489]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, 0 / banks[address(arg2)].field_512, currentPositionInfo[arg1].field_768);
            else:
                mem[292 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, banks[address(arg2)].field_768 - 1 / banks[address(arg2)].field_768) >> 32
                mem[416 len 4] = 0
                call arg2 with:
                     gas gas_remaining wei
                    args banks[address(arg2)].field_768 - 1 / banks[address(arg2)].field_768, mem[228 len 60], mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), 
                                    msg.sender,
                                    address(this.address),
                                    banks[address(arg2)].field_768 - 1 / banks[address(arg2)].field_768
                    if not 0, Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(banks[address(arg2)].field_16)
                    if wethAddress != arg2:
                        call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                    else:
                        call banks[address(arg2)].field_16.repayBorrow() with:
                             gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(banks[address(arg2)].field_16)
                    staticcall banks[address(arg2)].field_16.borrowBalanceStored(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    banks[address(arg2)].field_512 = ext_call.return_data[0]
                    if banks[address(arg2)].field_512 > banks[address(arg2)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > banks[address(arg2)].field_768 - 1 / banks[address(arg2)].field_768:
                        revert with 0, 'paid exceeds debt'
                    if 0 == banks[address(arg2)].field_768 - 1 / banks[address(arg2)].field_768:
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 > banks[address(arg2)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg2)].field_768 -= currentPositionInfo[arg1][5][address(arg2)].field_0
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 > currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[arg1][5][address(arg2)].field_0 = 0
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if ext_call.return_data[0] > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0, mem[488]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, currentPositionInfo[arg1][5][address(arg2)].field_0, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0, mem[488]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, currentPositionInfo[arg1][5][address(arg2)].field_0, currentPositionInfo[arg1].field_768);
                    else:
                        if banks[address(arg2)].field_512 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require banks[address(arg2)].field_512
                        if 0 / banks[address(arg2)].field_512 > banks[address(arg2)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg2)].field_768 -= 0 / banks[address(arg2)].field_512
                        if 0 / banks[address(arg2)].field_512 > currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[arg1][5][address(arg2)].field_0 -= 0 / banks[address(arg2)].field_512
                        if not currentPositionInfo[arg1][5][address(arg2)].field_0 - (0 / banks[address(arg2)].field_512):
                            currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if ext_call.return_data[0] > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0, mem[488]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, 0 / banks[address(arg2)].field_512, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0, mem[488]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, 0 / banks[address(arg2)].field_512, currentPositionInfo[arg1].field_768);
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(banks[address(arg2)].field_16)
                    if wethAddress != arg2:
                        call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                    else:
                        call banks[address(arg2)].field_16.repayBorrow() with:
                             gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(banks[address(arg2)].field_16)
                    staticcall banks[address(arg2)].field_16.borrowBalanceStored(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    banks[address(arg2)].field_512 = ext_call.return_data[0]
                    if banks[address(arg2)].field_512 > banks[address(arg2)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > banks[address(arg2)].field_768 - 1 / banks[address(arg2)].field_768:
                        revert with 0, 'paid exceeds debt'
                    if 0 == banks[address(arg2)].field_768 - 1 / banks[address(arg2)].field_768:
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 > banks[address(arg2)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg2)].field_768 -= currentPositionInfo[arg1][5][address(arg2)].field_0
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 > currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[arg1][5][address(arg2)].field_0 = 0
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if ext_call.return_data[0] > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0, mem[ceil32(return_data.size) + 489]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, currentPositionInfo[arg1][5][address(arg2)].field_0, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0, mem[ceil32(return_data.size) + 489]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, currentPositionInfo[arg1][5][address(arg2)].field_0, currentPositionInfo[arg1].field_768);
                    else:
                        if banks[address(arg2)].field_512 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require banks[address(arg2)].field_512
                        if 0 / banks[address(arg2)].field_512 > banks[address(arg2)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg2)].field_768 -= 0 / banks[address(arg2)].field_512
                        if 0 / banks[address(arg2)].field_512 > currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[arg1][5][address(arg2)].field_0 -= 0 / banks[address(arg2)].field_512
                        if not currentPositionInfo[arg1][5][address(arg2)].field_0 - (0 / banks[address(arg2)].field_512):
                            currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if ext_call.return_data[0] > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0, mem[ceil32(return_data.size) + 489]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, 0 / banks[address(arg2)].field_512, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0, mem[ceil32(return_data.size) + 489]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, 0 / banks[address(arg2)].field_512, currentPositionInfo[arg1].field_768);
        else:
            if banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0 / currentPositionInfo[arg1][5][address(arg2)].field_0 != banks[address(arg2)].field_512:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
            if banks[address(arg2)].field_768 + (banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0) < banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if 1 > banks[address(arg2)].field_768 + (banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0):
                revert with 0, 'SafeMath: subtraction overflow'
            if banks[address(arg2)].field_768 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require banks[address(arg2)].field_768
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
            if not ext_code.size(arg2):
                revert with 0, 'Address: call to non-contract'
            if arg3 != -1:
                mem[292 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
                mem[416 len 4] = 0
                call arg2 with:
                     gas gas_remaining wei
                    args arg3, mem[228 len 60], mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3
                    if not 0, Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(banks[address(arg2)].field_16)
                    if wethAddress != arg2:
                        call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                    else:
                        call banks[address(arg2)].field_16.repayBorrow() with:
                             gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(banks[address(arg2)].field_16)
                    staticcall banks[address(arg2)].field_16.borrowBalanceStored(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    banks[address(arg2)].field_512 = ext_call.return_data[0]
                    if banks[address(arg2)].field_512 > banks[address(arg2)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > banks[address(arg2)].field_768 + (banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0) - 1 / banks[address(arg2)].field_768:
                        revert with 0, 'paid exceeds debt'
                    if 0 == banks[address(arg2)].field_768 + (banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0) - 1 / banks[address(arg2)].field_768:
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 > banks[address(arg2)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg2)].field_768 -= currentPositionInfo[arg1][5][address(arg2)].field_0
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 > currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[arg1][5][address(arg2)].field_0 = 0
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if ext_call.return_data[0] > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0, mem[488]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, currentPositionInfo[arg1][5][address(arg2)].field_0, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0, mem[488]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, currentPositionInfo[arg1][5][address(arg2)].field_0, currentPositionInfo[arg1].field_768);
                    else:
                        if banks[address(arg2)].field_512 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require banks[address(arg2)].field_512
                        if 0 / banks[address(arg2)].field_512 > banks[address(arg2)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg2)].field_768 -= 0 / banks[address(arg2)].field_512
                        if 0 / banks[address(arg2)].field_512 > currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[arg1][5][address(arg2)].field_0 -= 0 / banks[address(arg2)].field_512
                        if not currentPositionInfo[arg1][5][address(arg2)].field_0 - (0 / banks[address(arg2)].field_512):
                            currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if ext_call.return_data[0] > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0, mem[488]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, 0 / banks[address(arg2)].field_512, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0, mem[488]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, 0 / banks[address(arg2)].field_512, currentPositionInfo[arg1].field_768);
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(banks[address(arg2)].field_16)
                    if wethAddress != arg2:
                        call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                    else:
                        call banks[address(arg2)].field_16.repayBorrow() with:
                             gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(banks[address(arg2)].field_16)
                    staticcall banks[address(arg2)].field_16.borrowBalanceStored(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    banks[address(arg2)].field_512 = ext_call.return_data[0]
                    if banks[address(arg2)].field_512 > banks[address(arg2)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > banks[address(arg2)].field_768 + (banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0) - 1 / banks[address(arg2)].field_768:
                        revert with 0, 'paid exceeds debt'
                    if 0 == banks[address(arg2)].field_768 + (banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0) - 1 / banks[address(arg2)].field_768:
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 > banks[address(arg2)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg2)].field_768 -= currentPositionInfo[arg1][5][address(arg2)].field_0
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 > currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[arg1][5][address(arg2)].field_0 = 0
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if ext_call.return_data[0] > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0, mem[ceil32(return_data.size) + 489]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, currentPositionInfo[arg1][5][address(arg2)].field_0, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0, mem[ceil32(return_data.size) + 489]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, currentPositionInfo[arg1][5][address(arg2)].field_0, currentPositionInfo[arg1].field_768);
                    else:
                        if banks[address(arg2)].field_512 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require banks[address(arg2)].field_512
                        if 0 / banks[address(arg2)].field_512 > banks[address(arg2)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg2)].field_768 -= 0 / banks[address(arg2)].field_512
                        if 0 / banks[address(arg2)].field_512 > currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[arg1][5][address(arg2)].field_0 -= 0 / banks[address(arg2)].field_512
                        if not currentPositionInfo[arg1][5][address(arg2)].field_0 - (0 / banks[address(arg2)].field_512):
                            currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if ext_call.return_data[0] > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0, mem[ceil32(return_data.size) + 489]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, 0 / banks[address(arg2)].field_512, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0, mem[ceil32(return_data.size) + 489]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, 0 / banks[address(arg2)].field_512, currentPositionInfo[arg1].field_768);
            else:
                mem[292 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, banks[address(arg2)].field_768 + (banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0) - 1 / banks[address(arg2)].field_768) >> 32
                mem[416 len 4] = 0
                call arg2 with:
                     gas gas_remaining wei
                    args banks[address(arg2)].field_768 + (banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0) - 1 / banks[address(arg2)].field_768, mem[228 len 60], mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), 
                                    msg.sender,
                                    address(this.address),
                                    banks[address(arg2)].field_768 + (banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0) - 1 / banks[address(arg2)].field_768
                    if not 0, Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(banks[address(arg2)].field_16)
                    if wethAddress != arg2:
                        call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                    else:
                        call banks[address(arg2)].field_16.repayBorrow() with:
                             gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(banks[address(arg2)].field_16)
                    staticcall banks[address(arg2)].field_16.borrowBalanceStored(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    banks[address(arg2)].field_512 = ext_call.return_data[0]
                    if banks[address(arg2)].field_512 > banks[address(arg2)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > banks[address(arg2)].field_768 + (banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0) - 1 / banks[address(arg2)].field_768:
                        revert with 0, 'paid exceeds debt'
                    if 0 == banks[address(arg2)].field_768 + (banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0) - 1 / banks[address(arg2)].field_768:
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 > banks[address(arg2)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg2)].field_768 -= currentPositionInfo[arg1][5][address(arg2)].field_0
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 > currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[arg1][5][address(arg2)].field_0 = 0
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if ext_call.return_data[0] > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0, mem[488]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, currentPositionInfo[arg1][5][address(arg2)].field_0, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0, mem[488]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, currentPositionInfo[arg1][5][address(arg2)].field_0, currentPositionInfo[arg1].field_768);
                    else:
                        if banks[address(arg2)].field_512 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require banks[address(arg2)].field_512
                        if 0 / banks[address(arg2)].field_512 > banks[address(arg2)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg2)].field_768 -= 0 / banks[address(arg2)].field_512
                        if 0 / banks[address(arg2)].field_512 > currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[arg1][5][address(arg2)].field_0 -= 0 / banks[address(arg2)].field_512
                        if not currentPositionInfo[arg1][5][address(arg2)].field_0 - (0 / banks[address(arg2)].field_512):
                            currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if ext_call.return_data[0] > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0, mem[488]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, 0 / banks[address(arg2)].field_512, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0, mem[488]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, 0 / banks[address(arg2)].field_512, currentPositionInfo[arg1].field_768);
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(banks[address(arg2)].field_16)
                    if wethAddress != arg2:
                        call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                    else:
                        call banks[address(arg2)].field_16.repayBorrow() with:
                             gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(banks[address(arg2)].field_16)
                    staticcall banks[address(arg2)].field_16.borrowBalanceStored(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    banks[address(arg2)].field_512 = ext_call.return_data[0]
                    if banks[address(arg2)].field_512 > banks[address(arg2)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > banks[address(arg2)].field_768 + (banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0) - 1 / banks[address(arg2)].field_768:
                        revert with 0, 'paid exceeds debt'
                    if 0 == banks[address(arg2)].field_768 + (banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0) - 1 / banks[address(arg2)].field_768:
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 > banks[address(arg2)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg2)].field_768 -= currentPositionInfo[arg1][5][address(arg2)].field_0
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 > currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[arg1][5][address(arg2)].field_0 = 0
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if ext_call.return_data[0] > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0, mem[ceil32(return_data.size) + 489]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, currentPositionInfo[arg1][5][address(arg2)].field_0, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0, mem[ceil32(return_data.size) + 489]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, currentPositionInfo[arg1][5][address(arg2)].field_0, currentPositionInfo[arg1].field_768);
                    else:
                        if banks[address(arg2)].field_512 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require banks[address(arg2)].field_512
                        if 0 / banks[address(arg2)].field_512 > banks[address(arg2)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg2)].field_768 -= 0 / banks[address(arg2)].field_512
                        if 0 / banks[address(arg2)].field_512 > currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[arg1][5][address(arg2)].field_0 -= 0 / banks[address(arg2)].field_512
                        if not currentPositionInfo[arg1][5][address(arg2)].field_0 - (0 / banks[address(arg2)].field_512):
                            currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if ext_call.return_data[0] > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0, mem[ceil32(return_data.size) + 489]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, 0 / banks[address(arg2)].field_512, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0, mem[ceil32(return_data.size) + 489]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, 0 / banks[address(arg2)].field_512, currentPositionInfo[arg1].field_768);
    else:
        if not currentPositionInfo[arg1].field_256:
            revert with 0, 'bad collateral token'
        require ext_code.size(oracleAddress)
        staticcall oracleAddress.asETHCollateral(address rg1, uint256 rg2, uint256 rg3, address rg4) with:
                gas gas_remaining wei
               args 0, currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, currentPositionInfo[arg1].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[0] = arg1
        mem[32] = 143
        s = 0
        idx = stor4[sha3(mem[0 len 64])]
        t = 0
        while idx:
            if not bool(idx):
                s = s + 1
                idx = uint255(idx) * 0.5
                t = t
                continue 
            require s < allBanks.length
            mem[0] = address(allBanks[s])
            mem[32] = 141
            if not currentPositionInfo[arg1][5][address(stor140[s])].field_0:
                if banks[address(stor140[s])].field_768 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 1 > banks[address(stor140[s])].field_768:
                    revert with 0, 'SafeMath: subtraction overflow'
                if banks[address(stor140[s])].field_768 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require banks[address(stor140[s])].field_768
                mem[100] = address(allBanks[s])
                mem[132] = banks[address(stor140[s])].field_768 - 1 / banks[address(stor140[s])].field_768
                mem[164] = currentPositionInfo[arg1].field_0
                require ext_code.size(oracleAddress)
                staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                        gas gas_remaining wei
                       args address(allBanks[s]), banks[address(stor140[s])].field_768 - 1 / banks[address(stor140[s])].field_768, currentPositionInfo[arg1].field_0
            else:
                if banks[address(stor140[s])].field_512 * currentPositionInfo[arg1][5][address(stor140[s])].field_0 / currentPositionInfo[arg1][5][address(stor140[s])].field_0 != banks[address(stor140[s])].field_512:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, currentPositionInfo[arg1].field_0
                if banks[address(stor140[s])].field_768 + (banks[address(stor140[s])].field_512 * currentPositionInfo[arg1][5][address(stor140[s])].field_0) < banks[address(stor140[s])].field_512 * currentPositionInfo[arg1][5][address(stor140[s])].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                if 1 > banks[address(stor140[s])].field_768 + (banks[address(stor140[s])].field_512 * currentPositionInfo[arg1][5][address(stor140[s])].field_0):
                    revert with 0, 'SafeMath: subtraction overflow'
                if banks[address(stor140[s])].field_768 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require banks[address(stor140[s])].field_768
                mem[100] = address(allBanks[s])
                mem[132] = banks[address(stor140[s])].field_768 + (banks[address(stor140[s])].field_512 * currentPositionInfo[arg1][5][address(stor140[s])].field_0) - 1 / banks[address(stor140[s])].field_768
                mem[164] = currentPositionInfo[arg1].field_0
                require ext_code.size(oracleAddress)
                staticcall oracleAddress.asETHBorrow(address rg1, uint256 rg2, address rg3) with:
                        gas gas_remaining wei
                       args address(allBanks[s]), banks[address(stor140[s])].field_768 + (banks[address(stor140[s])].field_512 * currentPositionInfo[arg1][5][address(stor140[s])].field_0) - 1 / banks[address(stor140[s])].field_768, currentPositionInfo[arg1].field_0
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + t < t:
                revert with 0, 'SafeMath: addition overflow'
            s = s + 1
            idx = uint255(idx) * 0.5
            t = ext_call.return_data[0] + t
            continue 
        if ext_call.return_data[0] >= t:
            revert with 0, 'position still healthy'
        if not currentPositionInfo[arg1][5][address(arg2)].field_0:
            if banks[address(arg2)].field_768 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 1 > banks[address(arg2)].field_768:
                revert with 0, 'SafeMath: subtraction overflow'
            if banks[address(arg2)].field_768 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require banks[address(arg2)].field_768
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
            if not ext_code.size(arg2):
                revert with 0, 'Address: call to non-contract'
            if arg3 != -1:
                mem[292 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
                mem[416 len 4] = 0
                call arg2 with:
                     gas gas_remaining wei
                    args arg3, mem[228 len 60], mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3
                    if not 0, Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(banks[address(arg2)].field_16)
                    if wethAddress != arg2:
                        call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                    else:
                        call banks[address(arg2)].field_16.repayBorrow() with:
                             gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(banks[address(arg2)].field_16)
                    staticcall banks[address(arg2)].field_16.borrowBalanceStored(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    banks[address(arg2)].field_512 = ext_call.return_data[0]
                    if banks[address(arg2)].field_512 > banks[address(arg2)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > banks[address(arg2)].field_768 - 1 / banks[address(arg2)].field_768:
                        revert with 0, 'paid exceeds debt'
                    if 0 == banks[address(arg2)].field_768 - 1 / banks[address(arg2)].field_768:
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 > banks[address(arg2)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg2)].field_768 -= currentPositionInfo[arg1][5][address(arg2)].field_0
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 > currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[arg1][5][address(arg2)].field_0 = 0
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if ext_call.return_data[0] > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0, mem[488]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, currentPositionInfo[arg1][5][address(arg2)].field_0, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0, mem[488]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, currentPositionInfo[arg1][5][address(arg2)].field_0, currentPositionInfo[arg1].field_768);
                    else:
                        if banks[address(arg2)].field_512 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require banks[address(arg2)].field_512
                        if 0 / banks[address(arg2)].field_512 > banks[address(arg2)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg2)].field_768 -= 0 / banks[address(arg2)].field_512
                        if 0 / banks[address(arg2)].field_512 > currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[arg1][5][address(arg2)].field_0 -= 0 / banks[address(arg2)].field_512
                        if not currentPositionInfo[arg1][5][address(arg2)].field_0 - (0 / banks[address(arg2)].field_512):
                            currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if ext_call.return_data[0] > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0, mem[488]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, 0 / banks[address(arg2)].field_512, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0, mem[488]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, 0 / banks[address(arg2)].field_512, currentPositionInfo[arg1].field_768);
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(banks[address(arg2)].field_16)
                    if wethAddress != arg2:
                        call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                    else:
                        call banks[address(arg2)].field_16.repayBorrow() with:
                             gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(banks[address(arg2)].field_16)
                    staticcall banks[address(arg2)].field_16.borrowBalanceStored(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    banks[address(arg2)].field_512 = ext_call.return_data[0]
                    if banks[address(arg2)].field_512 > banks[address(arg2)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > banks[address(arg2)].field_768 - 1 / banks[address(arg2)].field_768:
                        revert with 0, 'paid exceeds debt'
                    if 0 == banks[address(arg2)].field_768 - 1 / banks[address(arg2)].field_768:
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 > banks[address(arg2)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg2)].field_768 -= currentPositionInfo[arg1][5][address(arg2)].field_0
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 > currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[arg1][5][address(arg2)].field_0 = 0
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if ext_call.return_data[0] > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0, mem[ceil32(return_data.size) + 489]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, currentPositionInfo[arg1][5][address(arg2)].field_0, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0, mem[ceil32(return_data.size) + 489]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, currentPositionInfo[arg1][5][address(arg2)].field_0, currentPositionInfo[arg1].field_768);
                    else:
                        if banks[address(arg2)].field_512 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require banks[address(arg2)].field_512
                        if 0 / banks[address(arg2)].field_512 > banks[address(arg2)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg2)].field_768 -= 0 / banks[address(arg2)].field_512
                        if 0 / banks[address(arg2)].field_512 > currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[arg1][5][address(arg2)].field_0 -= 0 / banks[address(arg2)].field_512
                        if not currentPositionInfo[arg1][5][address(arg2)].field_0 - (0 / banks[address(arg2)].field_512):
                            currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if ext_call.return_data[0] > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0, mem[ceil32(return_data.size) + 489]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, 0 / banks[address(arg2)].field_512, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0, mem[ceil32(return_data.size) + 489]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, 0 / banks[address(arg2)].field_512, currentPositionInfo[arg1].field_768);
            else:
                mem[292 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, banks[address(arg2)].field_768 - 1 / banks[address(arg2)].field_768) >> 32
                mem[416 len 4] = 0
                call arg2 with:
                     gas gas_remaining wei
                    args banks[address(arg2)].field_768 - 1 / banks[address(arg2)].field_768, mem[228 len 60], mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), 
                                    msg.sender,
                                    address(this.address),
                                    banks[address(arg2)].field_768 - 1 / banks[address(arg2)].field_768
                    if not 0, Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(banks[address(arg2)].field_16)
                    if wethAddress != arg2:
                        call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                    else:
                        call banks[address(arg2)].field_16.repayBorrow() with:
                             gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(banks[address(arg2)].field_16)
                    staticcall banks[address(arg2)].field_16.borrowBalanceStored(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    banks[address(arg2)].field_512 = ext_call.return_data[0]
                    if banks[address(arg2)].field_512 > banks[address(arg2)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > banks[address(arg2)].field_768 - 1 / banks[address(arg2)].field_768:
                        revert with 0, 'paid exceeds debt'
                    if 0 == banks[address(arg2)].field_768 - 1 / banks[address(arg2)].field_768:
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 > banks[address(arg2)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg2)].field_768 -= currentPositionInfo[arg1][5][address(arg2)].field_0
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 > currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[arg1][5][address(arg2)].field_0 = 0
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if ext_call.return_data[0] > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0, mem[488]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, currentPositionInfo[arg1][5][address(arg2)].field_0, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0, mem[488]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, currentPositionInfo[arg1][5][address(arg2)].field_0, currentPositionInfo[arg1].field_768);
                    else:
                        if banks[address(arg2)].field_512 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require banks[address(arg2)].field_512
                        if 0 / banks[address(arg2)].field_512 > banks[address(arg2)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg2)].field_768 -= 0 / banks[address(arg2)].field_512
                        if 0 / banks[address(arg2)].field_512 > currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[arg1][5][address(arg2)].field_0 -= 0 / banks[address(arg2)].field_512
                        if not currentPositionInfo[arg1][5][address(arg2)].field_0 - (0 / banks[address(arg2)].field_512):
                            currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if ext_call.return_data[0] > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0, mem[488]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, 0 / banks[address(arg2)].field_512, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0, mem[488]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, 0 / banks[address(arg2)].field_512, currentPositionInfo[arg1].field_768);
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(banks[address(arg2)].field_16)
                    if wethAddress != arg2:
                        call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                    else:
                        call banks[address(arg2)].field_16.repayBorrow() with:
                             gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(banks[address(arg2)].field_16)
                    staticcall banks[address(arg2)].field_16.borrowBalanceStored(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    banks[address(arg2)].field_512 = ext_call.return_data[0]
                    if banks[address(arg2)].field_512 > banks[address(arg2)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > banks[address(arg2)].field_768 - 1 / banks[address(arg2)].field_768:
                        revert with 0, 'paid exceeds debt'
                    if 0 == banks[address(arg2)].field_768 - 1 / banks[address(arg2)].field_768:
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 > banks[address(arg2)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg2)].field_768 -= currentPositionInfo[arg1][5][address(arg2)].field_0
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 > currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[arg1][5][address(arg2)].field_0 = 0
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if ext_call.return_data[0] > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0, mem[ceil32(return_data.size) + 489]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, currentPositionInfo[arg1][5][address(arg2)].field_0, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0, mem[ceil32(return_data.size) + 489]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, currentPositionInfo[arg1][5][address(arg2)].field_0, currentPositionInfo[arg1].field_768);
                    else:
                        if banks[address(arg2)].field_512 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require banks[address(arg2)].field_512
                        if 0 / banks[address(arg2)].field_512 > banks[address(arg2)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg2)].field_768 -= 0 / banks[address(arg2)].field_512
                        if 0 / banks[address(arg2)].field_512 > currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[arg1][5][address(arg2)].field_0 -= 0 / banks[address(arg2)].field_512
                        if not currentPositionInfo[arg1][5][address(arg2)].field_0 - (0 / banks[address(arg2)].field_512):
                            currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if ext_call.return_data[0] > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0, mem[ceil32(return_data.size) + 489]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, 0 / banks[address(arg2)].field_512, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0, mem[ceil32(return_data.size) + 489]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, 0 / banks[address(arg2)].field_512, currentPositionInfo[arg1].field_768);
        else:
            if banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0 / currentPositionInfo[arg1][5][address(arg2)].field_0 != banks[address(arg2)].field_512:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, currentPositionInfo[arg1].field_0
            if banks[address(arg2)].field_768 + (banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0) < banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if 1 > banks[address(arg2)].field_768 + (banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0):
                revert with 0, 'SafeMath: subtraction overflow'
            if banks[address(arg2)].field_768 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require banks[address(arg2)].field_768
            require ext_code.size(arg2)
            staticcall arg2.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
            if not ext_code.size(arg2):
                revert with 0, 'Address: call to non-contract'
            if arg3 != -1:
                mem[292 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
                mem[416 len 4] = 0
                call arg2 with:
                     gas gas_remaining wei
                    args arg3, mem[228 len 60], mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3
                    if not 0, Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(banks[address(arg2)].field_16)
                    if wethAddress != arg2:
                        call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                    else:
                        call banks[address(arg2)].field_16.repayBorrow() with:
                             gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(banks[address(arg2)].field_16)
                    staticcall banks[address(arg2)].field_16.borrowBalanceStored(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    banks[address(arg2)].field_512 = ext_call.return_data[0]
                    if banks[address(arg2)].field_512 > banks[address(arg2)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > banks[address(arg2)].field_768 + (banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0) - 1 / banks[address(arg2)].field_768:
                        revert with 0, 'paid exceeds debt'
                    if 0 == banks[address(arg2)].field_768 + (banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0) - 1 / banks[address(arg2)].field_768:
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 > banks[address(arg2)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg2)].field_768 -= currentPositionInfo[arg1][5][address(arg2)].field_0
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 > currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[arg1][5][address(arg2)].field_0 = 0
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if ext_call.return_data[0] > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0, mem[488]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, currentPositionInfo[arg1][5][address(arg2)].field_0, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0, mem[488]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, currentPositionInfo[arg1][5][address(arg2)].field_0, currentPositionInfo[arg1].field_768);
                    else:
                        if banks[address(arg2)].field_512 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require banks[address(arg2)].field_512
                        if 0 / banks[address(arg2)].field_512 > banks[address(arg2)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg2)].field_768 -= 0 / banks[address(arg2)].field_512
                        if 0 / banks[address(arg2)].field_512 > currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[arg1][5][address(arg2)].field_0 -= 0 / banks[address(arg2)].field_512
                        if not currentPositionInfo[arg1][5][address(arg2)].field_0 - (0 / banks[address(arg2)].field_512):
                            currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if ext_call.return_data[0] > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0, mem[488]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, 0 / banks[address(arg2)].field_512, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0, mem[488]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, 0 / banks[address(arg2)].field_512, currentPositionInfo[arg1].field_768);
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(banks[address(arg2)].field_16)
                    if wethAddress != arg2:
                        call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                    else:
                        call banks[address(arg2)].field_16.repayBorrow() with:
                             gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(banks[address(arg2)].field_16)
                    staticcall banks[address(arg2)].field_16.borrowBalanceStored(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    banks[address(arg2)].field_512 = ext_call.return_data[0]
                    if banks[address(arg2)].field_512 > banks[address(arg2)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > banks[address(arg2)].field_768 + (banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0) - 1 / banks[address(arg2)].field_768:
                        revert with 0, 'paid exceeds debt'
                    if 0 == banks[address(arg2)].field_768 + (banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0) - 1 / banks[address(arg2)].field_768:
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 > banks[address(arg2)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg2)].field_768 -= currentPositionInfo[arg1][5][address(arg2)].field_0
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 > currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[arg1][5][address(arg2)].field_0 = 0
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if ext_call.return_data[0] > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0, mem[ceil32(return_data.size) + 489]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, currentPositionInfo[arg1][5][address(arg2)].field_0, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0, mem[ceil32(return_data.size) + 489]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, currentPositionInfo[arg1][5][address(arg2)].field_0, currentPositionInfo[arg1].field_768);
                    else:
                        if banks[address(arg2)].field_512 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require banks[address(arg2)].field_512
                        if 0 / banks[address(arg2)].field_512 > banks[address(arg2)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg2)].field_768 -= 0 / banks[address(arg2)].field_512
                        if 0 / banks[address(arg2)].field_512 > currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[arg1][5][address(arg2)].field_0 -= 0 / banks[address(arg2)].field_512
                        if not currentPositionInfo[arg1][5][address(arg2)].field_0 - (0 / banks[address(arg2)].field_512):
                            currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if ext_call.return_data[0] > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0, mem[ceil32(return_data.size) + 489]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, 0 / banks[address(arg2)].field_512, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0, mem[ceil32(return_data.size) + 489]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, 0 / banks[address(arg2)].field_512, currentPositionInfo[arg1].field_768);
            else:
                mem[292 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, banks[address(arg2)].field_768 + (banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0) - 1 / banks[address(arg2)].field_768) >> 32
                mem[416 len 4] = 0
                call arg2 with:
                     gas gas_remaining wei
                    args banks[address(arg2)].field_768 + (banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0) - 1 / banks[address(arg2)].field_768, mem[228 len 60], mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), 
                                    msg.sender,
                                    address(this.address),
                                    banks[address(arg2)].field_768 + (banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0) - 1 / banks[address(arg2)].field_768
                    if not 0, Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(banks[address(arg2)].field_16)
                    if wethAddress != arg2:
                        call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                    else:
                        call banks[address(arg2)].field_16.repayBorrow() with:
                             gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(banks[address(arg2)].field_16)
                    staticcall banks[address(arg2)].field_16.borrowBalanceStored(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    banks[address(arg2)].field_512 = ext_call.return_data[0]
                    if banks[address(arg2)].field_512 > banks[address(arg2)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > banks[address(arg2)].field_768 + (banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0) - 1 / banks[address(arg2)].field_768:
                        revert with 0, 'paid exceeds debt'
                    if 0 == banks[address(arg2)].field_768 + (banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0) - 1 / banks[address(arg2)].field_768:
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 > banks[address(arg2)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg2)].field_768 -= currentPositionInfo[arg1][5][address(arg2)].field_0
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 > currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[arg1][5][address(arg2)].field_0 = 0
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if ext_call.return_data[0] > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0, mem[488]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, currentPositionInfo[arg1][5][address(arg2)].field_0, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0, mem[488]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, currentPositionInfo[arg1][5][address(arg2)].field_0, currentPositionInfo[arg1].field_768);
                    else:
                        if banks[address(arg2)].field_512 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require banks[address(arg2)].field_512
                        if 0 / banks[address(arg2)].field_512 > banks[address(arg2)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg2)].field_768 -= 0 / banks[address(arg2)].field_512
                        if 0 / banks[address(arg2)].field_512 > currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[arg1][5][address(arg2)].field_0 -= 0 / banks[address(arg2)].field_512
                        if not currentPositionInfo[arg1][5][address(arg2)].field_0 - (0 / banks[address(arg2)].field_512):
                            currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if ext_call.return_data[0] > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0, mem[488]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, 0 / banks[address(arg2)].field_512, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0, mem[488]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, 0 / banks[address(arg2)].field_512, currentPositionInfo[arg1].field_768);
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
                    require ext_code.size(arg2)
                    staticcall arg2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(banks[address(arg2)].field_16)
                    if wethAddress != arg2:
                        call banks[address(arg2)].field_16.repayBorrow(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                    else:
                        call banks[address(arg2)].field_16.repayBorrow() with:
                             gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(banks[address(arg2)].field_16)
                    staticcall banks[address(arg2)].field_16.borrowBalanceStored(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    banks[address(arg2)].field_512 = ext_call.return_data[0]
                    if banks[address(arg2)].field_512 > banks[address(arg2)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > banks[address(arg2)].field_768 + (banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0) - 1 / banks[address(arg2)].field_768:
                        revert with 0, 'paid exceeds debt'
                    if 0 == banks[address(arg2)].field_768 + (banks[address(arg2)].field_512 * currentPositionInfo[arg1][5][address(arg2)].field_0) - 1 / banks[address(arg2)].field_768:
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 > banks[address(arg2)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg2)].field_768 -= currentPositionInfo[arg1][5][address(arg2)].field_0
                        if currentPositionInfo[arg1][5][address(arg2)].field_0 > currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[arg1][5][address(arg2)].field_0 = 0
                        currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if ext_call.return_data[0] > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0, mem[ceil32(return_data.size) + 489]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, currentPositionInfo[arg1][5][address(arg2)].field_0, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0, mem[ceil32(return_data.size) + 489]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, currentPositionInfo[arg1][5][address(arg2)].field_0, currentPositionInfo[arg1].field_768);
                    else:
                        if banks[address(arg2)].field_512 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require banks[address(arg2)].field_512
                        if 0 / banks[address(arg2)].field_512 > banks[address(arg2)].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        banks[address(arg2)].field_768 -= 0 / banks[address(arg2)].field_512
                        if 0 / banks[address(arg2)].field_512 > currentPositionInfo[arg1][5][address(arg2)].field_0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        currentPositionInfo[arg1][5][address(arg2)].field_0 -= 0 / banks[address(arg2)].field_512
                        if not currentPositionInfo[arg1][5][address(arg2)].field_0 - (0 / banks[address(arg2)].field_512):
                            currentPositionInfo[arg1].field_1024 = currentPositionInfo[arg1].field_1024 and !(1 << banks[address(arg2)].field_8)
                        if not currentPositionInfo[arg1].field_256:
                            revert with 0, 'bad collateral token'
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.convertForLiquidation(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                gas gas_remaining wei
                               args address(arg2), currentPositionInfo[arg1].field_256, currentPositionInfo[arg1].field_512, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < currentPositionInfo[arg1].field_768:
                            if ext_call.return_data[0] > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 -= ext_call.return_data[0]
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, ext_call.return_data[0], 160, 0, mem[ceil32(return_data.size) + 489]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, 0 / banks[address(arg2)].field_512, ext_call.return_data[0]);
                        else:
                            if currentPositionInfo[arg1].field_768 > currentPositionInfo[arg1].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            currentPositionInfo[arg1].field_768 = 0
                            require ext_code.size(currentPositionInfo[arg1].field_256)
                            call currentPositionInfo[arg1].field_256.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                                 gas gas_remaining wei
                                args this.address, msg.sender, currentPositionInfo[arg1].field_512, currentPositionInfo[arg1].field_768, 160, 0, mem[ceil32(return_data.size) + 489]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit Liquidate(arg1, msg.sender, address(arg2), 0, 0 / banks[address(arg2)].field_512, currentPositionInfo[arg1].field_768);
    _GENERAL_LOCK = 1
}



}
