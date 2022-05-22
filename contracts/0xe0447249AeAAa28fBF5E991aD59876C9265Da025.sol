contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint8 stor0; offset 16
uint16 stor0;
uint256 stor1;
address deployerAddress;
address oracleAddress;
address configAddress;
address interestModelAddress;
address governorAddress;
uint256 stor6;
uint8 stor7; offset 160
uint128 stor7; offset 160
address pendingGovernorAddress;
mapping of address bTokens;
mapping of address underlyings;
mapping of uint8 stor10;
mapping of uint8 stor11;
mapping of struct positionTokens;
mapping of uint256 sub_ab01040e;
mapping of uint256 sub_bf1f53b6;

function governor() payable {
    return address(governorAddress)
}

function bTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bTokens[arg1]
}

function paused() payable {
    return bool(uint8(stor0.field_16))
}

function underlyings(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return underlyings[arg1]
}

function config() payable {
    return configAddress
}

function oracle() payable {
    return oracleAddress
}

function sub_90427116(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor11[arg1])
}

function sub_9413126a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor10[arg1])
}

function sub_ab01040e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_ab01040e[arg1]
}

function interestModel() payable {
    return interestModelAddress
}

function sub_b0886fe4(?) payable {
    return bool(uint8(stor7.field_160))
}

function sub_bf1f53b6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_bf1f53b6[arg1]
}

function positions(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return positionTokens[arg1][arg2].field_0, 
           positionTokens[arg1][arg2].field_0,
           positionTokens[arg1][arg2].field_0,
           positionTokens[arg1][arg2].field_256,
           positionTokens[arg1][arg2].field_512,
           positionTokens[arg1][arg2].field_768
}

function deployer() payable {
    return deployerAddress
}

function pendingGovernor() payable {
    return pendingGovernorAddress
}

function getPositionTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= sub_ab01040e[address(arg1)]:
        revert with 0, 'BetaBank/checkPID'
    return positionTokens[address(arg1)][arg2].field_256, positionTokens[address(arg1)][arg2].field_64
}

function _fallback() payable {
    revert
}

function setPendingGovernor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'BetaBank/onlyGov'
    pendingGovernorAddress = arg1
    emit SetPendingGovernor(arg1);
}

function setAllowPublicCreate(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'BetaBank/onlyGov'
    Mask(96, 0, stor7.field_160) = Mask(96, 0, arg1)
    emit SetAllowPublicCreate(arg1);
}

function setConfig(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'BetaBank/onlyGov'
    if not arg1:
        revert with 0, 'setConfig/zero-address'
    configAddress = arg1
    emit SetConfig(arg1);
}

function setOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'BetaBank/onlyGov'
    if not arg1:
        revert with 0, 'setOracle/zero-address'
    oracleAddress = arg1
    emit SetOracle(arg1);
}

function pause() payable {
    if uint8(stor0.field_16):
        revert with 0, 'Pausable: paused'
    if address(governorAddress) != msg.sender:
        revert with 0, 'BetaBank/onlyGov'
    if uint8(stor0.field_16):
        revert with 0, 'Pausable: paused'
    uint8(stor0.field_16) = 1
    emit Paused(msg.sender);
}

function acceptGovernor() payable {
    if pendingGovernorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'acceptGovernor/not-pending-governor'
    pendingGovernorAddress = 0
    uint256(stor6) = msg.sender or Mask(96, 160, uint256(stor6))
    emit SetGovernor(msg.sender);
}

function setInterestModel(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'BetaBank/onlyGov'
    if not arg1:
        revert with 0, 'setInterestModel/zero-address'
    interestModelAddress = arg1
    emit SetInterestModel(arg1);
}

function unpause() payable {
    if not uint8(stor0.field_16):
        revert with 0, 'Pausable: not paused'
    if address(governorAddress) != msg.sender:
        revert with 0, 'BetaBank/onlyGov'
    if not uint8(stor0.field_16):
        revert with 0, 'Pausable: not paused'
    uint8(stor0.field_16) = 0
    emit Unpaused(msg.sender);
}

function isPermittedCaller(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 == arg2:
        if stor11[address(arg1)]:
            return bool(stor11[address(arg1)])
    if arg1 != tx.origin:
        return (tx.origin == arg1)
    return bool(stor10[address(arg2)])
}

function fetchPositionDebt(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= sub_ab01040e[address(arg1)]:
        revert with 0, 'BetaBank/checkPID'
    require ext_code.size(positionTokens[address(arg1)][arg2].field_64)
    call positionTokens[address(arg1)][arg2].field_64.fetchDebtShareValue(uint256 arg1) with:
         gas gas_remaining wei
        args positionTokens[address(arg1)][arg2].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function recover(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if address(governorAddress) != msg.sender:
        revert with 0, 'BetaBank/onlyGov'
    if stor1 != 1:
        revert with 0, 'BetaBank/locked'
    stor1 = 2
    if not underlyings[address(arg1)]:
        revert with 0, 'recover/not-bToken'
    require ext_code.size(arg1)
    call arg1.0x1ec82cb8 with:
         gas gas_remaining wei
        args address(arg2), msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function sub_b5beb20b(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    if address(governorAddress) != msg.sender:
        revert with 0, 'BetaBank/onlyGov'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 11
        stor11[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[96] = bool(cd[36])
        emit SetOwnerWhitelist(bool(cd[36]), address(cd[((32 * idx) + cd[4] + 36)]));
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_4e16cf42(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == bool(cd[36])
    if address(governorAddress) != msg.sender:
        revert with 0, 'BetaBank/onlyGov'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 10
        stor10[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[96] = bool(cd[36])
        emit SetRunnerWhitelist(bool(cd[36]), address(cd[((32 * idx) + cd[4] + 36)]));
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    if not arg1:
        revert with 0, 'initialize/governor-zero-address'
    if not arg2:
        revert with 0, 'initialize/deployer-zero-address'
    if not arg3:
        revert with 0, 'initialize/oracle-zero-address'
    if not arg4:
        revert with 0, 'initialize/config-zero-address'
    if not arg5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'initialize/interest-model-zero-address'
    address(governorAddress) = arg1
    deployerAddress = arg2
    oracleAddress = arg3
    configAddress = arg4
    interestModelAddress = arg5
    stor1 = 1
    emit SetGovernor(arg1);
    emit SetOracle(arg3);
    emit SetConfig(arg4);
    emit SetInterestModel(arg5);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function create(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != 1:
        revert with 0, 'BetaBank/locked'
    stor1 = 2
    if uint8(stor0.field_16):
        revert with 0, 'Pausable: paused'
    if not uint8(stor7.field_160):
        if address(governorAddress) != msg.sender:
            revert with 0, 'create/unauthorized'
    if this.address == arg1:
        revert with 0, 'create/not-like-this'
    if not ext_code.size(arg1):
        revert with 0, 'create/underlying-not-contract'
    if bTokens[address(arg1)]:
        revert with 0, 'create/underlying-already-exists'
    require ext_code.size(oracleAddress)
    call oracleAddress.getAssetETHPrice(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'create/no-price'
    require ext_code.size(deployerAddress)
    call deployerAddress.0x4c96a389 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    bTokens[address(arg1)] = ext_call.return_data[12 len 20]
    underlyings[address(ext_call.return_data[0])] = arg1
    emit Create(ext_call.return_data[12 len 20], arg1);
    stor1 = 1
    return address(ext_call.return_data[0])
}

function repay(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if stor1 != 1:
        revert with 0, 'BetaBank/locked'
    stor1 = 2
    if uint8(stor0.field_16):
        revert with 0, 'Pausable: paused'
    if arg1 != msg.sender:
        if arg1 != tx.origin:
            revert with 0, 'BetaBank/isPermittedByOwner'
        if not stor10[address(msg.sender)]:
            revert with 0, 'BetaBank/isPermittedByOwner'
    else:
        if not stor11[address(arg1)]:
            if arg1 != tx.origin:
                revert with 0, 'BetaBank/isPermittedByOwner'
            if not stor10[address(msg.sender)]:
                revert with 0, 'BetaBank/isPermittedByOwner'
    if arg2 >= sub_ab01040e[address(arg1)]:
        revert with 0, 'BetaBank/checkPID'
    if uint32(block.number) == positionTokens[address(arg1)][arg2].field_0:
        revert with 0, 'repay/bad-block'
    require ext_code.size(positionTokens[address(arg1)][arg2].field_64)
    call positionTokens[address(arg1)][arg2].field_64.repay(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if positionTokens[address(arg1)][arg2].field_768 < ext_call.return_data[0]:
        revert with 0, 17
    positionTokens[address(arg1)][arg2].field_768 -= ext_call.return_data[0]
    positionTokens[address(arg1)][arg2].field_32 = uint32(block.number)
    emit Repay(arg3, ext_call.return_data[0], msg.sender, arg1, arg2);
    stor1 = 1
}

function open(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if uint8(stor0.field_16):
        revert with 0, 'Pausable: paused'
    if arg1 != msg.sender:
        if arg1 != tx.origin:
            revert with 0, 'BetaBank/isPermittedByOwner'
        if not stor10[address(msg.sender)]:
            revert with 0, 'BetaBank/isPermittedByOwner'
    else:
        if not stor11[address(arg1)]:
            if arg1 != tx.origin:
                revert with 0, 'BetaBank/isPermittedByOwner'
            if not stor10[address(msg.sender)]:
                revert with 0, 'BetaBank/isPermittedByOwner'
    if not bTokens[address(arg2)]:
        revert with 0, 'open/bad-underlying'
    if arg2 == arg3:
        revert with 0, 'open/self-collateral'
    require ext_code.size(configAddress)
    staticcall configAddress.0x90ddf2b2 with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'open/bad-collateral'
    require ext_code.size(oracleAddress)
    call oracleAddress.getAssetETHPrice(address arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'open/no-price'
    if sub_ab01040e[address(arg1)] == -1:
        revert with 0, 17
    sub_ab01040e[address(arg1)]++
    positionTokens[address(arg1)][stor13[address(arg1)]].field_64 = bTokens[address(arg2)]
    positionTokens[address(arg1)][stor13[address(arg1)]].field_256 = arg3
    emit Open(bTokens[address(arg2)], arg3, arg1, sub_ab01040e[address(arg1)]);
    return sub_ab01040e[address(arg1)]
}

function selflessLiquidate(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'BetaBank/onlyGov'
    if stor1 != 1:
        revert with 0, 'BetaBank/locked'
    stor1 = 2
    if arg2 >= sub_ab01040e[address(arg1)]:
        revert with 0, 'BetaBank/checkPID'
    if positionTokens[address(arg1)][arg2].field_512:
        revert with 0, 'selflessLiquidate/positive-collateral'
    require ext_code.size(positionTokens[address(arg1)][arg2].field_64)
    call positionTokens[address(arg1)][arg2].field_64.fetchDebtShareValue(uint256 arg1) with:
         gas gas_remaining wei
        args positionTokens[address(arg1)][arg2].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(positionTokens[address(arg1)][arg2].field_64)
    if arg3 < ext_call.return_data[0]:
        call positionTokens[address(arg1)][arg2].field_64.repay(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if positionTokens[address(arg1)][arg2].field_768 < ext_call.return_data[0]:
            revert with 0, 17
        positionTokens[address(arg1)][arg2].field_768 -= ext_call.return_data[0]
        emit SelflessLiquidate(arg3, ext_call.return_data[0], msg.sender, arg1, arg2);
    else:
        call positionTokens[address(arg1)][arg2].field_64.repay(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if positionTokens[address(arg1)][arg2].field_768 < ext_call.return_data[0]:
            revert with 0, 17
        positionTokens[address(arg1)][arg2].field_768 -= ext_call.return_data[0]
        emit SelflessLiquidate(ext_call.return_data[0], ext_call.return_data[0], msg.sender, arg1, arg2);
    stor1 = 1
}

function fetchPositionLTV(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= sub_ab01040e[address(arg1)]:
        revert with 0, 'BetaBank/checkPID'
    if 0 == positionTokens[address(arg1)][arg2].field_768:
        return 0
    require ext_code.size(configAddress)
    staticcall configAddress.0x90ddf2b2 with:
            gas gas_remaining wei
           args positionTokens[address(arg1)][arg2].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'fetch/bad-collateral'
    require ext_code.size(positionTokens[address(arg1)][arg2].field_64)
    call positionTokens[address(arg1)][arg2].field_64.fetchDebtShareValue(uint256 arg1) with:
         gas gas_remaining wei
        args positionTokens[address(arg1)][arg2].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(oracleAddress)
    call oracleAddress.getAssetETHValue(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args underlyings[stor12[address(arg1)][arg2].field_0], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if positionTokens[address(arg1)][arg2].field_512 and ext_call.return_data[0] > -1 / positionTokens[address(arg1)][arg2].field_512:
        revert with 0, 17
    require ext_code.size(oracleAddress)
    call oracleAddress.getAssetETHValue(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args positionTokens[address(arg1)][arg2].field_256, positionTokens[address(arg1)][arg2].field_512 * ext_call.return_data[0] / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= ext_call.return_data[0]:
        return 10^18
    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    return (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
}

function borrow(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if stor1 != 1:
        revert with 0, 'BetaBank/locked'
    stor1 = 2
    if uint8(stor0.field_16):
        revert with 0, 'Pausable: paused'
    if arg1 != msg.sender:
        if arg1 != tx.origin:
            revert with 0, 'BetaBank/isPermittedByOwner'
        if not stor10[address(msg.sender)]:
            revert with 0, 'BetaBank/isPermittedByOwner'
    else:
        if not stor11[address(arg1)]:
            if arg1 != tx.origin:
                revert with 0, 'BetaBank/isPermittedByOwner'
            if not stor10[address(msg.sender)]:
                revert with 0, 'BetaBank/isPermittedByOwner'
    if arg2 >= sub_ab01040e[address(arg1)]:
        revert with 0, 'BetaBank/checkPID'
    if uint32(block.number) == positionTokens[address(arg1)][arg2].field_32:
        revert with 0, 'borrow/bad-block'
    require ext_code.size(positionTokens[address(arg1)][arg2].field_64)
    call positionTokens[address(arg1)][arg2].field_64.borrow(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if positionTokens[address(arg1)][arg2].field_768 > !ext_call.return_data[0]:
        revert with 0, 17
    positionTokens[address(arg1)][arg2].field_768 += ext_call.return_data[0]
    positionTokens[address(arg1)][arg2].field_0 = uint32(block.number)
    require ext_code.size(configAddress)
    if 0 == positionTokens[address(arg1)][arg2].field_768 + ext_call.return_data[0]:
        staticcall configAddress.0x37ea6093 with:
                gas gas_remaining wei
               args underlyings[stor12[address(arg1)][arg2].field_0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 > ext_call.return_data[0]:
            revert with 0, 'borrow/not-safe'
    else:
        staticcall configAddress.0x90ddf2b2 with:
                gas gas_remaining wei
               args positionTokens[address(arg1)][arg2].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'fetch/bad-collateral'
        require ext_code.size(positionTokens[address(arg1)][arg2].field_64)
        call positionTokens[address(arg1)][arg2].field_64.fetchDebtShareValue(uint256 arg1) with:
             gas gas_remaining wei
            args (positionTokens[address(arg1)][arg2].field_768 + ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(oracleAddress)
        call oracleAddress.getAssetETHValue(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args underlyings[stor12[address(arg1)][arg2].field_0], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if positionTokens[address(arg1)][arg2].field_512 and ext_call.return_data[0] > -1 / positionTokens[address(arg1)][arg2].field_512:
            revert with 0, 17
        require ext_code.size(oracleAddress)
        call oracleAddress.getAssetETHValue(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args positionTokens[address(arg1)][arg2].field_256, positionTokens[address(arg1)][arg2].field_512 * ext_call.return_data[0] / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            require ext_code.size(configAddress)
            staticcall configAddress.0x37ea6093 with:
                    gas gas_remaining wei
                   args underlyings[stor12[address(arg1)][arg2].field_0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 10^18 > ext_call.return_data[0]:
                revert with 0, 'borrow/not-safe'
        else:
            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            require ext_code.size(configAddress)
            staticcall configAddress.0x37ea6093 with:
                    gas gas_remaining wei
                   args underlyings[stor12[address(arg1)][arg2].field_0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'borrow/not-safe'
    emit Borrow(arg3, ext_call.return_data[0], msg.sender, arg1, arg2);
    stor1 = 1
}

function put(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if stor1 != 1:
        revert with 0, 'BetaBank/locked'
    stor1 = 2
    if uint8(stor0.field_16):
        revert with 0, 'Pausable: paused'
    if arg1 != msg.sender:
        if arg1 != tx.origin:
            revert with 0, 'BetaBank/isPermittedByOwner'
        if not stor10[address(msg.sender)]:
            revert with 0, 'BetaBank/isPermittedByOwner'
    else:
        if not stor11[address(arg1)]:
            if arg1 != tx.origin:
                revert with 0, 'BetaBank/isPermittedByOwner'
            if not stor10[address(msg.sender)]:
                revert with 0, 'BetaBank/isPermittedByOwner'
    if arg2 >= sub_ab01040e[address(arg1)]:
        revert with 0, 'BetaBank/checkPID'
    mem[128] = positionTokens[address(arg1)][arg2].field_32
    mem[160] = positionTokens[address(arg1)][arg2].field_64
    mem[192] = positionTokens[address(arg1)][arg2].field_256
    mem[224] = positionTokens[address(arg1)][arg2].field_512
    mem[256] = positionTokens[address(arg1)][arg2].field_768
    if uint32(block.number) == positionTokens[address(arg1)][arg2].field_32:
        revert with 0, 'put/bad-block'
    mem[292] = this.address
    require ext_code.size(positionTokens[address(arg1)][arg2].field_256)
    staticcall positionTokens[address(arg1)][arg2].field_256.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[288] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 324] = msg.sender
    mem[ceil32(return_data.size) + 356] = this.address
    mem[ceil32(return_data.size) + 388] = arg3
    mem[ceil32(return_data.size) + 288] = 100
    mem[ceil32(return_data.size) + 324 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 320 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 420] = 32
    mem[ceil32(return_data.size) + 452] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(positionTokens[address(arg1)][arg2].field_256):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 484 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3, 0
    mem[ceil32(return_data.size) + 584] = 0
    call positionTokens[address(arg1)][arg2].field_256 with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if positionTokens[address(arg1)][arg2].field_0:
                revert with memory
                  from 128
                   len positionTokens[address(arg1)][arg2].field_0
            revert with 0, 'SafeERC20: low-level call failed'
        if positionTokens[address(arg1)][arg2].field_0:
            require positionTokens[address(arg1)][arg2].field_0 >= 32
            require positionTokens[address(arg1)][arg2].field_32 == bool(positionTokens[address(arg1)][arg2].field_32)
            if not positionTokens[address(arg1)][arg2].field_32:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 516 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 516] == bool(mem[ceil32(return_data.size) + 516])
            if not mem[ceil32(return_data.size) + 516]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(positionTokens[address(arg1)][arg2].field_256)
    staticcall positionTokens[address(arg1)][arg2].field_256.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    if positionTokens[address(arg1)][arg2].field_512 > !0:
        revert with 0, 17
    if sub_bf1f53b6[stor12[address(arg1)][arg2].field_256] > !0:
        revert with 0, 17
    require ext_code.size(configAddress)
    staticcall configAddress.0x665e2e53 with:
            gas gas_remaining wei
           args positionTokens[address(arg1)][arg2].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_bf1f53b6[stor12[address(arg1)][arg2].field_256] > ext_call.return_data[0]:
        revert with 0, 'put/too-much-collateral'
    positionTokens[address(arg1)][arg2].field_0 = uint32(block.number)
    emit Put(arg3, msg.sender, arg1, arg2);
    stor1 = 1
}

function take(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if stor1 != 1:
        revert with 0, 'BetaBank/locked'
    stor1 = 2
    if uint8(stor0.field_16):
        revert with 0, 'Pausable: paused'
    if arg1 != msg.sender:
        if arg1 != tx.origin:
            revert with 0, 'BetaBank/isPermittedByOwner'
        if not stor10[address(msg.sender)]:
            revert with 0, 'BetaBank/isPermittedByOwner'
    else:
        if not stor11[address(arg1)]:
            if arg1 != tx.origin:
                revert with 0, 'BetaBank/isPermittedByOwner'
            if not stor10[address(msg.sender)]:
                revert with 0, 'BetaBank/isPermittedByOwner'
    if arg2 >= sub_ab01040e[address(arg1)]:
        revert with 0, 'BetaBank/checkPID'
    mem[128] = positionTokens[address(arg1)][arg2].field_32
    mem[160] = positionTokens[address(arg1)][arg2].field_64
    mem[192] = positionTokens[address(arg1)][arg2].field_256
    mem[256] = positionTokens[address(arg1)][arg2].field_768
    if uint32(block.number) == positionTokens[address(arg1)][arg2].field_0:
        revert with 0, 'take/bad-block'
    if positionTokens[address(arg1)][arg2].field_512 < arg3:
        revert with 0, 17
    mem[224] = positionTokens[address(arg1)][arg2].field_512 - arg3
    if sub_bf1f53b6[stor12[address(arg1)][arg2].field_256] < arg3:
        revert with 0, 17
    sub_bf1f53b6[stor12[address(arg1)][arg2].field_256] -= arg3
    positionTokens[address(arg1)][arg2].field_512 -= arg3
    positionTokens[address(arg1)][arg2].field_32 = uint32(block.number)
    if 0 == positionTokens[address(arg1)][arg2].field_768:
        mem[292] = underlyings[stor12[address(arg1)][arg2].field_0]
        require ext_code.size(configAddress)
        staticcall configAddress.0x37ea6093 with:
                gas gas_remaining wei
               args underlyings[stor12[address(arg1)][arg2].field_0]
        mem[288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 > ext_call.return_data[0]:
            revert with 0, 'take/not-safe'
        mem[ceil32(return_data.size) + 324] = msg.sender
        mem[ceil32(return_data.size) + 356] = arg3
        mem[ceil32(return_data.size) + 288] = 68
        mem[ceil32(return_data.size) + 324 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 320 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 388] = 32
        mem[ceil32(return_data.size) + 420] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(positionTokens[address(arg1)][arg2].field_256):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 452 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg3, 0
        mem[ceil32(return_data.size) + 520] = 0
        call positionTokens[address(arg1)][arg2].field_256 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg3, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg3, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if positionTokens[address(arg1)][arg2].field_0:
                    revert with memory
                      from 128
                       len positionTokens[address(arg1)][arg2].field_0
                revert with 0, 'SafeERC20: low-level call failed'
            if positionTokens[address(arg1)][arg2].field_0:
                require positionTokens[address(arg1)][arg2].field_0 >= 32
                require positionTokens[address(arg1)][arg2].field_32 == bool(positionTokens[address(arg1)][arg2].field_32)
                if not positionTokens[address(arg1)][arg2].field_32:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 484] == bool(mem[ceil32(return_data.size) + 484])
                if not mem[ceil32(return_data.size) + 484]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[292] = positionTokens[address(arg1)][arg2].field_256
        require ext_code.size(configAddress)
        staticcall configAddress.0x90ddf2b2 with:
                gas gas_remaining wei
               args positionTokens[address(arg1)][arg2].field_256
        mem[288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'fetch/bad-collateral'
        mem[ceil32(return_data.size) + 292] = positionTokens[address(arg1)][arg2].field_768
        require ext_code.size(positionTokens[address(arg1)][arg2].field_64)
        call positionTokens[address(arg1)][arg2].field_64.fetchDebtShareValue(uint256 arg1) with:
             gas gas_remaining wei
            args positionTokens[address(arg1)][arg2].field_768
        mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 292] = underlyings[stor12[address(arg1)][arg2].field_0]
        mem[(2 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
        require ext_code.size(oracleAddress)
        call oracleAddress.getAssetETHValue(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args underlyings[stor12[address(arg1)][arg2].field_0], ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if positionTokens[address(arg1)][arg2].field_512 - arg3 and ext_call.return_data[0] > -1 / positionTokens[address(arg1)][arg2].field_512 - arg3:
            revert with 0, 17
        mem[(4 * ceil32(return_data.size)) + 292] = positionTokens[address(arg1)][arg2].field_256
        mem[(4 * ceil32(return_data.size)) + 324] = (positionTokens[address(arg1)][arg2].field_512 * ext_call.return_data[0]) - (arg3 * ext_call.return_data[0]) / 10^18
        require ext_code.size(oracleAddress)
        call oracleAddress.getAssetETHValue(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args positionTokens[address(arg1)][arg2].field_256, (positionTokens[address(arg1)][arg2].field_512 * ext_call.return_data[0]) - (arg3 * ext_call.return_data[0]) / 10^18
        mem[(4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            mem[(6 * ceil32(return_data.size)) + 292] = underlyings[stor12[address(arg1)][arg2].field_0]
            require ext_code.size(configAddress)
            staticcall configAddress.0x37ea6093 with:
                    gas gas_remaining wei
                   args underlyings[stor12[address(arg1)][arg2].field_0]
            mem[(6 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 10^18 > ext_call.return_data[0]:
                revert with 0, 'take/not-safe'
        else:
            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            mem[(6 * ceil32(return_data.size)) + 292] = underlyings[stor12[address(arg1)][arg2].field_0]
            require ext_code.size(configAddress)
            staticcall configAddress.0x37ea6093 with:
                    gas gas_remaining wei
                   args underlyings[stor12[address(arg1)][arg2].field_0]
            mem[(6 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'take/not-safe'
        mem[(7 * ceil32(return_data.size)) + 324] = msg.sender
        mem[(7 * ceil32(return_data.size)) + 356] = arg3
        mem[(7 * ceil32(return_data.size)) + 288] = 68
        mem[(7 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(7 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
        mem[(7 * ceil32(return_data.size)) + 388] = 32
        mem[(7 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(positionTokens[address(arg1)][arg2].field_256):
            revert with 0, 'Address: call to non-contract'
        mem[(7 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg3, 0
        mem[(7 * ceil32(return_data.size)) + 520] = 0
        call positionTokens[address(arg1)][arg2].field_256 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg3, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg3, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if positionTokens[address(arg1)][arg2].field_0:
                    revert with memory
                      from 128
                       len positionTokens[address(arg1)][arg2].field_0
                revert with 0, 'SafeERC20: low-level call failed'
            if positionTokens[address(arg1)][arg2].field_0:
                require positionTokens[address(arg1)][arg2].field_0 >= 32
                require positionTokens[address(arg1)][arg2].field_32 == bool(positionTokens[address(arg1)][arg2].field_32)
                if not positionTokens[address(arg1)][arg2].field_32:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(7 * ceil32(return_data.size)) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(7 * ceil32(return_data.size)) + 484] == bool(mem[(7 * ceil32(return_data.size)) + 484])
                if not mem[(7 * ceil32(return_data.size)) + 484]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit Take(arg3, msg.sender, arg1, arg2);
    stor1 = 1
}

function liquidate(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if stor1 != 1:
        revert with 0, 'BetaBank/locked'
    stor1 = 2
    if uint8(stor0.field_16):
        revert with 0, 'Pausable: paused'
    if arg2 >= sub_ab01040e[address(arg1)]:
        revert with 0, 'BetaBank/checkPID'
    mem[128] = positionTokens[address(arg1)][arg2].field_32
    mem[160] = positionTokens[address(arg1)][arg2].field_64
    mem[192] = positionTokens[address(arg1)][arg2].field_256
    if 0 == positionTokens[address(arg1)][arg2].field_768:
        mem[292] = underlyings[stor12[address(arg1)][arg2].field_0]
        require ext_code.size(configAddress)
        staticcall configAddress.0xeb94ee10 with:
                gas gas_remaining wei
               args underlyings[stor12[address(arg1)][arg2].field_0]
        mem[288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0 < ext_call.return_data[0]:
            revert with 0, 'liquidate/not-liquidatable'
        mem[ceil32(return_data.size) + 292] = msg.sender
        mem[ceil32(return_data.size) + 324] = arg3
        require ext_code.size(positionTokens[address(arg1)][arg2].field_64)
        call positionTokens[address(arg1)][arg2].field_64.repay(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg3
        mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 1 > !positionTokens[address(arg1)][arg2].field_768:
            revert with 0, 17
        if ext_call.return_data[0] > positionTokens[address(arg1)][arg2].field_768 + 1 / 2:
            revert with 0, 'liquidate/too-much-liquidation'
        mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
        require ext_code.size(positionTokens[address(arg1)][arg2].field_64)
        call positionTokens[address(arg1)][arg2].field_64.fetchDebtShareValue(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(4 * ceil32(return_data.size)) + 292] = underlyings[stor12[address(arg1)][arg2].field_0]
        mem[(4 * ceil32(return_data.size)) + 324] = positionTokens[address(arg1)][arg2].field_256
        mem[(4 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
        require ext_code.size(oracleAddress)
        call oracleAddress.convert(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args underlyings[stor12[address(arg1)][arg2].field_0], positionTokens[address(arg1)][arg2].field_256, ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(6 * ceil32(return_data.size)) + 292] = underlyings[stor12[address(arg1)][arg2].field_0]
        require ext_code.size(configAddress)
        staticcall configAddress.0x73e0835a with:
                gas gas_remaining wei
               args underlyings[stor12[address(arg1)][arg2].field_0]
        mem[(6 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
            revert with 0, 17
        if positionTokens[address(arg1)][arg2].field_768 < ext_call.return_data[0]:
            revert with 0, 17
        mem[256] = positionTokens[address(arg1)][arg2].field_768 - ext_call.return_data[0]
        positionTokens[address(arg1)][arg2].field_768 -= ext_call.return_data[0]
        if ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < positionTokens[address(arg1)][arg2].field_512:
            if positionTokens[address(arg1)][arg2].field_512 < ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 17
            mem[224] = positionTokens[address(arg1)][arg2].field_512 - ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
            positionTokens[address(arg1)][arg2].field_512 = positionTokens[address(arg1)][arg2].field_512 - ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
            if sub_bf1f53b6[stor12[address(arg1)][arg2].field_256] < ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 17
            sub_bf1f53b6[stor12[address(arg1)][arg2].field_256] = sub_bf1f53b6[stor12[address(arg1)][arg2].field_256] - ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
            mem[(7 * ceil32(return_data.size)) + 324] = msg.sender
            mem[(7 * ceil32(return_data.size)) + 356] = ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
            mem[(7 * ceil32(return_data.size)) + 288] = 68
            mem[(7 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(7 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
            mem[(7 * ceil32(return_data.size)) + 388] = 32
            mem[(7 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(positionTokens[address(arg1)][arg2].field_256):
                revert with 0, 'Address: call to non-contract'
            mem[(7 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 0
            mem[(7 * ceil32(return_data.size)) + 520] = 0
            call positionTokens[address(arg1)][arg2].field_256 with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if positionTokens[address(arg1)][arg2].field_0:
                        revert with memory
                          from 128
                           len positionTokens[address(arg1)][arg2].field_0
                    revert with 0, 'SafeERC20: low-level call failed'
                if positionTokens[address(arg1)][arg2].field_0:
                    require positionTokens[address(arg1)][arg2].field_0 >= 32
                    require positionTokens[address(arg1)][arg2].field_32 == bool(positionTokens[address(arg1)][arg2].field_32)
                    if not positionTokens[address(arg1)][arg2].field_32:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(7 * ceil32(return_data.size)) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(7 * ceil32(return_data.size)) + 484] == bool(mem[(7 * ceil32(return_data.size)) + 484])
                    if not mem[(7 * ceil32(return_data.size)) + 484]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Liquidate(arg3, ext_call.return_data[0], ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18), msg.sender, arg1, arg2);
        else:
            if positionTokens[address(arg1)][arg2].field_512 < positionTokens[address(arg1)][arg2].field_512:
                revert with 0, 17
            mem[224] = 0
            positionTokens[address(arg1)][arg2].field_512 = 0
            if sub_bf1f53b6[stor12[address(arg1)][arg2].field_256] < positionTokens[address(arg1)][arg2].field_512:
                revert with 0, 17
            sub_bf1f53b6[stor12[address(arg1)][arg2].field_256] -= positionTokens[address(arg1)][arg2].field_512
            mem[(7 * ceil32(return_data.size)) + 324] = msg.sender
            mem[(7 * ceil32(return_data.size)) + 356] = positionTokens[address(arg1)][arg2].field_512
            mem[(7 * ceil32(return_data.size)) + 288] = 68
            mem[(7 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(7 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
            mem[(7 * ceil32(return_data.size)) + 388] = 32
            mem[(7 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(positionTokens[address(arg1)][arg2].field_256):
                revert with 0, 'Address: call to non-contract'
            mem[(7 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), msg.sender, positionTokens[address(arg1)][arg2].field_512, 0
            mem[(7 * ceil32(return_data.size)) + 520] = 0
            call positionTokens[address(arg1)][arg2].field_256 with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, positionTokens[address(arg1)][arg2].field_512, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, positionTokens[address(arg1)][arg2].field_512, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if positionTokens[address(arg1)][arg2].field_0:
                        revert with memory
                          from 128
                           len positionTokens[address(arg1)][arg2].field_0
                    revert with 0, 'SafeERC20: low-level call failed'
                if positionTokens[address(arg1)][arg2].field_0:
                    require positionTokens[address(arg1)][arg2].field_0 >= 32
                    require positionTokens[address(arg1)][arg2].field_32 == bool(positionTokens[address(arg1)][arg2].field_32)
                    if not positionTokens[address(arg1)][arg2].field_32:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(7 * ceil32(return_data.size)) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(7 * ceil32(return_data.size)) + 484] == bool(mem[(7 * ceil32(return_data.size)) + 484])
                    if not mem[(7 * ceil32(return_data.size)) + 484]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Liquidate(arg3, ext_call.return_data[0], positionTokens[address(arg1)][arg2].field_512, msg.sender, arg1, arg2);
    else:
        mem[292] = positionTokens[address(arg1)][arg2].field_256
        require ext_code.size(configAddress)
        staticcall configAddress.0x90ddf2b2 with:
                gas gas_remaining wei
               args positionTokens[address(arg1)][arg2].field_256
        mem[288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'fetch/bad-collateral'
        mem[ceil32(return_data.size) + 292] = positionTokens[address(arg1)][arg2].field_768
        require ext_code.size(positionTokens[address(arg1)][arg2].field_64)
        call positionTokens[address(arg1)][arg2].field_64.fetchDebtShareValue(uint256 arg1) with:
             gas gas_remaining wei
            args positionTokens[address(arg1)][arg2].field_768
        mem[ceil32(return_data.size) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 292] = underlyings[stor12[address(arg1)][arg2].field_0]
        mem[(2 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
        require ext_code.size(oracleAddress)
        call oracleAddress.getAssetETHValue(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args underlyings[stor12[address(arg1)][arg2].field_0], ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if positionTokens[address(arg1)][arg2].field_512 and ext_call.return_data[0] > -1 / positionTokens[address(arg1)][arg2].field_512:
            revert with 0, 17
        mem[(4 * ceil32(return_data.size)) + 292] = positionTokens[address(arg1)][arg2].field_256
        mem[(4 * ceil32(return_data.size)) + 324] = positionTokens[address(arg1)][arg2].field_512 * ext_call.return_data[0] / 10^18
        require ext_code.size(oracleAddress)
        call oracleAddress.getAssetETHValue(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args positionTokens[address(arg1)][arg2].field_256, positionTokens[address(arg1)][arg2].field_512 * ext_call.return_data[0] / 10^18
        mem[(4 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= ext_call.return_data[0]:
            mem[(6 * ceil32(return_data.size)) + 292] = underlyings[stor12[address(arg1)][arg2].field_0]
            require ext_code.size(configAddress)
            staticcall configAddress.0xeb94ee10 with:
                    gas gas_remaining wei
                   args underlyings[stor12[address(arg1)][arg2].field_0]
            mem[(6 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 10^18 < ext_call.return_data[0]:
                revert with 0, 'liquidate/not-liquidatable'
        else:
            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            mem[(6 * ceil32(return_data.size)) + 292] = underlyings[stor12[address(arg1)][arg2].field_0]
            require ext_code.size(configAddress)
            staticcall configAddress.0xeb94ee10 with:
                    gas gas_remaining wei
                   args underlyings[stor12[address(arg1)][arg2].field_0]
            mem[(6 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'liquidate/not-liquidatable'
        mem[(7 * ceil32(return_data.size)) + 292] = msg.sender
        mem[(7 * ceil32(return_data.size)) + 324] = arg3
        require ext_code.size(positionTokens[address(arg1)][arg2].field_64)
        call positionTokens[address(arg1)][arg2].field_64.repay(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg3
        mem[(7 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 1 > !positionTokens[address(arg1)][arg2].field_768:
            revert with 0, 17
        if ext_call.return_data[0] > positionTokens[address(arg1)][arg2].field_768 + 1 / 2:
            revert with 0, 'liquidate/too-much-liquidation'
        mem[(8 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
        require ext_code.size(positionTokens[address(arg1)][arg2].field_64)
        call positionTokens[address(arg1)][arg2].field_64.fetchDebtShareValue(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(10 * ceil32(return_data.size)) + 292] = underlyings[stor12[address(arg1)][arg2].field_0]
        mem[(10 * ceil32(return_data.size)) + 324] = positionTokens[address(arg1)][arg2].field_256
        mem[(10 * ceil32(return_data.size)) + 356] = ext_call.return_data[0]
        require ext_code.size(oracleAddress)
        call oracleAddress.convert(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args underlyings[stor12[address(arg1)][arg2].field_0], positionTokens[address(arg1)][arg2].field_256, ext_call.return_data[0]
        mem[(10 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(11 * ceil32(return_data.size)) + 292] = underlyings[stor12[address(arg1)][arg2].field_0]
        require ext_code.size(configAddress)
        staticcall configAddress.0x73e0835a with:
                gas gas_remaining wei
               args underlyings[stor12[address(arg1)][arg2].field_0]
        mem[(11 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] > !(ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
            revert with 0, 17
        if positionTokens[address(arg1)][arg2].field_768 < ext_call.return_data[0]:
            revert with 0, 17
        mem[256] = positionTokens[address(arg1)][arg2].field_768 - ext_call.return_data[0]
        positionTokens[address(arg1)][arg2].field_768 -= ext_call.return_data[0]
        if ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < positionTokens[address(arg1)][arg2].field_512:
            if positionTokens[address(arg1)][arg2].field_512 < ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 17
            mem[224] = positionTokens[address(arg1)][arg2].field_512 - ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
            positionTokens[address(arg1)][arg2].field_512 = positionTokens[address(arg1)][arg2].field_512 - ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
            if sub_bf1f53b6[stor12[address(arg1)][arg2].field_256] < ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
                revert with 0, 17
            sub_bf1f53b6[stor12[address(arg1)][arg2].field_256] = sub_bf1f53b6[stor12[address(arg1)][arg2].field_256] - ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
            mem[(12 * ceil32(return_data.size)) + 324] = msg.sender
            mem[(12 * ceil32(return_data.size)) + 356] = ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
            mem[(12 * ceil32(return_data.size)) + 288] = 68
            mem[(12 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(12 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
            mem[(12 * ceil32(return_data.size)) + 388] = 32
            mem[(12 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(positionTokens[address(arg1)][arg2].field_256):
                revert with 0, 'Address: call to non-contract'
            mem[(12 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 0
            mem[(12 * ceil32(return_data.size)) + 520] = 0
            call positionTokens[address(arg1)][arg2].field_256 with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18), 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if positionTokens[address(arg1)][arg2].field_0:
                        revert with memory
                          from 128
                           len positionTokens[address(arg1)][arg2].field_0
                    revert with 0, 'SafeERC20: low-level call failed'
                if positionTokens[address(arg1)][arg2].field_0:
                    require positionTokens[address(arg1)][arg2].field_0 >= 32
                    require positionTokens[address(arg1)][arg2].field_32 == bool(positionTokens[address(arg1)][arg2].field_32)
                    if not positionTokens[address(arg1)][arg2].field_32:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(12 * ceil32(return_data.size)) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(12 * ceil32(return_data.size)) + 484] == bool(mem[(12 * ceil32(return_data.size)) + 484])
                    if not mem[(12 * ceil32(return_data.size)) + 484]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Liquidate(arg3, ext_call.return_data[0], ext_call.return_data[0] + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18), msg.sender, arg1, arg2);
        else:
            if positionTokens[address(arg1)][arg2].field_512 < positionTokens[address(arg1)][arg2].field_512:
                revert with 0, 17
            mem[224] = 0
            positionTokens[address(arg1)][arg2].field_512 = 0
            if sub_bf1f53b6[stor12[address(arg1)][arg2].field_256] < positionTokens[address(arg1)][arg2].field_512:
                revert with 0, 17
            sub_bf1f53b6[stor12[address(arg1)][arg2].field_256] -= positionTokens[address(arg1)][arg2].field_512
            mem[(12 * ceil32(return_data.size)) + 324] = msg.sender
            mem[(12 * ceil32(return_data.size)) + 356] = positionTokens[address(arg1)][arg2].field_512
            mem[(12 * ceil32(return_data.size)) + 288] = 68
            mem[(12 * ceil32(return_data.size)) + 324 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(12 * ceil32(return_data.size)) + 320 len 4] = unknown_0xa9059cbb(?????)
            mem[(12 * ceil32(return_data.size)) + 388] = 32
            mem[(12 * ceil32(return_data.size)) + 420] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(positionTokens[address(arg1)][arg2].field_256):
                revert with 0, 'Address: call to non-contract'
            mem[(12 * ceil32(return_data.size)) + 452 len 96] = unknown_0xa9059cbb(?????), msg.sender, positionTokens[address(arg1)][arg2].field_512, 0
            mem[(12 * ceil32(return_data.size)) + 520] = 0
            call positionTokens[address(arg1)][arg2].field_256 with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, positionTokens[address(arg1)][arg2].field_512, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, positionTokens[address(arg1)][arg2].field_512, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if positionTokens[address(arg1)][arg2].field_0:
                        revert with memory
                          from 128
                           len positionTokens[address(arg1)][arg2].field_0
                    revert with 0, 'SafeERC20: low-level call failed'
                if positionTokens[address(arg1)][arg2].field_0:
                    require positionTokens[address(arg1)][arg2].field_0 >= 32
                    require positionTokens[address(arg1)][arg2].field_32 == bool(positionTokens[address(arg1)][arg2].field_32)
                    if not positionTokens[address(arg1)][arg2].field_32:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(12 * ceil32(return_data.size)) + 484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(12 * ceil32(return_data.size)) + 484] == bool(mem[(12 * ceil32(return_data.size)) + 484])
                    if not mem[(12 * ceil32(return_data.size)) + 484]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Liquidate(arg3, ext_call.return_data[0], positionTokens[address(arg1)][arg2].field_512, msg.sender, arg1, arg2);
    stor1 = 1
}



}
