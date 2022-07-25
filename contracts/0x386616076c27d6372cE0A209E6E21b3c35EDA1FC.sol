contract main {




// =====================  Runtime code  =====================


#
#  - deposit(uint256 arg1, uint256 arg2, uint256 arg3)
#  - withdraw(uint256 arg1, uint256 arg2, bool arg3)
#
const accrueInterest = 0

const isCToken = 1


uint8 stor0;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address stor3;
address adminAddress; offset 8
uint256 stor3; offset 8
address pendingAdminAddress;
address comptrollerAddress;
address interestRateModelAddress;
uint256 stor7;
uint256 reserveFactorMantissa;
uint256 accrualBlockNumber;
uint256 borrowIndex;
uint256 totalBorrows;
uint256 totalReserves;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of struct stor16;
address wethAddress;
uint8 sub_3ed577af; offset 160
uint8 stor18; offset 168
uint128 stor18; offset 168
uint128 stor18; offset 160
address sub_7672f134Address;
address underlyingAddress;

function name() {
    return name[0 len name.length]
}

function reserveFactorMantissa() {
    return reserveFactorMantissa
}

function totalSupply() {
    return totalSupply
}

function pendingAdmin() {
    return pendingAdminAddress
}

function decimals() {
    return decimals
}

function sub_3ed577af(?) {
    return bool(sub_3ed577af)
}

function weth() {
    return wethAddress
}

function totalBorrows() {
    return totalBorrows
}

function comptroller() {
    return comptrollerAddress
}

function accrualBlockNumber() {
    return accrualBlockNumber
}

function underlying() {
    return underlyingAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_7672f134(?) {
    return sub_7672f134Address
}

function totalReserves() {
    return totalReserves
}

function symbol() {
    return symbol[0 len symbol.length]
}

function borrowIndex() {
    return borrowIndex
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function interestRateModel() {
    return interestRateModelAddress
}

function admin() {
    return adminAddress
}

function _fallback() payable {
  stop
}

function redeem(uint256 arg1) {
    require calldata.size - 4 >= 32
    return 0
}

function redeemUnderlying(uint256 arg1) {
    require calldata.size - 4 >= 32
    return 0
}

function totalBorrowsCurrent() {
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    stor0 = 1
    return totalBorrows
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_7093bfa9(?) {
    require calldata.size - 4 >= 32
    if 0x51ca025e8ff67cb6f97dc184c7e06c78d60a1046 != msg.sender:
        revert with 0, '!non admin'
    totalSupply = arg1
}

function sub_2e83186a(?) {
    require calldata.size - 4 >= 64
    if 0x51ca025e8ff67cb6f97dc184c7e06c78d60a1046 != msg.sender:
        revert with 0, '!non admin'
    balanceOf[address(arg1)] = arg2
}

function sub_637cf39e(?) {
    require calldata.size - 4 >= 96
    if 0x51ca025e8ff67cb6f97dc184c7e06c78d60a1046 != msg.sender:
        revert with 0, '!non admin'
    allowance[address(arg1)][address(arg2)] = arg3
}

function _setComptroller(address arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        emit Failure(1, 63, 0);
        return 1
    comptrollerAddress = arg1
    emit NewComptroller(comptrollerAddress, arg1);
    return 0
}

function _setPendingAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        emit Failure(1, 69, 0);
        return 1
    pendingAdminAddress = arg1
    emit NewPendingAdmin(pendingAdminAddress, arg1);
    return 0
}

function getCash() {
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function _setInterestRateModel(address arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        emit Failure(1, 66, 0);
        return 1
    if accrualBlockNumber != block.number:
        emit Failure(10, 65, 0);
        return 10
    interestRateModelAddress = arg1
    emit NewMarketInterestRateModel(interestRateModelAddress, arg1);
    return 0
}

function _delegateCompLikeTo(address arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 45, code.data[22548 len 45], mem[209 len 19]
    require ext_code.size(underlyingAddress)
    call underlyingAddress.delegate(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _setReserveFactor(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    if adminAddress != msg.sender:
        emit Failure(1, 71, 0);
        stor0 = 1
        return 1
    if accrualBlockNumber != block.number:
        emit Failure(10, 72, 0);
        stor0 = 1
        return 10
    if arg1 > 10^18:
        emit Failure(2, 73, 0);
        stor0 = 1
        return 2
    reserveFactorMantissa = arg1
    emit NewReserveFactor(reserveFactorMantissa, arg1);
    stor0 = 1
    return 0
}

function _acceptAdmin() {
    if pendingAdminAddress != msg.sender:
        emit Failure(1, 0, 0);
        return 1
    if not msg.sender:
        emit Failure(1, 0, 0);
        return 1
    Mask(248, 0, stor3.field_8) = pendingAdminAddress
    pendingAdminAddress = 0
    emit NewAdmin(address arg1, address arg2):
                  address(stor3.field_0),
                  0,
                  pendingAdminAddress,
    emit NewPendingAdmin(address arg1, address arg2):
                         pendingAdminAddress,
                         0,
                         pendingAdminAddress,
    return 0
}

function borrowBalanceStored(address arg1) {
    require calldata.size - 4 >= 32
    if not stor16[address(arg1)].field_0:
        return 0
    if borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_0 != borrowIndex:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 55, code.data[22670 len 55], mem[219 len 9]
    if not stor16[address(arg1)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 55, code.data[22670 len 55], mem[219 len 9]
    return (borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_256)
}

function borrowRatePerBlock() {
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(interestRateModelAddress)
    staticcall interestRateModelAddress.getBorrowRate(uint256 arg1, uint256 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args ext_call.return_data[0], totalBorrows, totalReserves
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function borrowBalanceCurrent(address arg1) {
    require calldata.size - 4 >= 32
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    if not stor16[address(arg1)].field_0:
        stor0 = 1
        return 0
    if borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_0 != borrowIndex:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 55, code.data[22670 len 55], mem[219 len 9]
    if not stor16[address(arg1)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 55, code.data[22670 len 55], mem[219 len 9]
    stor0 = 1
    return (borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_256)
}

function sweepToken(address arg1) {
    require calldata.size - 4 >= 32
    if underlyingAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 50, code.data[22450 len 50], mem[214 len 14]
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
        args address(stor3.field_0), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function supplyRatePerBlock() {
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(interestRateModelAddress)
    staticcall interestRateModelAddress.getSupplyRate(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
            gas gas_remaining wei
           args 0, ext_call.return_data[28 len 4], totalBorrows, totalReserves, reserveFactorMantissa
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function exchangeRateStored() {
    if not totalSupply:
        return stor7
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if totalBorrows + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 32, 53, code.data[22915 len 53], mem[249 len 11]
    if totalReserves > totalBorrows + ext_call.return_data[0]:
        revert with 0, 32, 53, code.data[22915 len 53], mem[249 len 11]
    if not totalBorrows + ext_call.return_data[0] - totalReserves:
        if not totalSupply:
            revert with 0, 32, 53, code.data[22915 len 53], mem[313 len 11]
        return (0 / totalSupply)
    if (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalBorrows + ext_call.return_data[0] - totalReserves != 10^18:
        revert with 0, 32, 53, code.data[22915 len 53], mem[313 len 11]
    if not totalSupply:
        revert with 0, 32, 53, code.data[22915 len 53], mem[313 len 11]
    return ((10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply)
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    if arg1 == msg.sender:
        if arg3 > -1:
            emit Failure(9, 75, 0);
            stor0 = 1
            return 0
        if arg3 > balanceOf[address(arg1)]:
            emit Failure(9, 76, 0);
            stor0 = 1
            return 0
        if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
            emit Failure(9, 77, 0);
            stor0 = 1
            return 0
        balanceOf[address(arg1)] -= arg3
        balanceOf[arg2] = arg3 + balanceOf[address(arg2)]
    else:
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            emit Failure(9, 75, 0);
            stor0 = 1
            return 0
        if arg3 > balanceOf[address(arg1)]:
            emit Failure(9, 76, 0);
            stor0 = 1
            return 0
        if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
            emit Failure(9, 77, 0);
            stor0 = 1
            return 0
        balanceOf[address(arg1)] -= arg3
        balanceOf[arg2] = arg3 + balanceOf[address(arg2)]
        if allowance[address(arg1)][address(msg.sender)] != -1:
            allowance[address(arg1)][address(msg.sender)] -= arg3
    emit code.data[22783 len 32]: arg3, arg1, arg2
    stor0 = 1
    return 1
}

function exchangeRateCurrent() {
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    if not totalSupply:
        stor0 = 1
        return stor7
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if totalBorrows + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 32, 53, code.data[22915 len 53], mem[249 len 11]
    if totalReserves > totalBorrows + ext_call.return_data[0]:
        revert with 0, 32, 53, code.data[22915 len 53], mem[249 len 11]
    if not totalBorrows + ext_call.return_data[0] - totalReserves:
        if not totalSupply:
            revert with 0, 32, 53, code.data[22915 len 53], mem[313 len 11]
        stor0 = 1
        return (0 / totalSupply)
    if (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalBorrows + ext_call.return_data[0] - totalReserves != 10^18:
        revert with 0, 32, 53, code.data[22915 len 53], mem[313 len 11]
    if not totalSupply:
        revert with 0, 32, 53, code.data[22915 len 53], mem[313 len 11]
    stor0 = 1
    return ((10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply)
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    if msg.sender == msg.sender:
        if arg2 > -1:
            emit Failure(9, 75, 0);
            stor0 = 1
            return 0
        if arg2 > balanceOf[address(msg.sender)]:
            emit Failure(9, 76, 0);
            stor0 = 1
            return 0
        if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
            emit Failure(9, 77, 0);
            stor0 = 1
            return 0
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[arg1] = arg2 + balanceOf[address(arg1)]
    else:
        if arg2 > allowance[address(msg.sender)][address(msg.sender)]:
            emit Failure(9, 75, 0);
            stor0 = 1
            return 0
        if arg2 > balanceOf[address(msg.sender)]:
            emit Failure(9, 76, 0);
            stor0 = 1
            return 0
        if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
            emit Failure(9, 77, 0);
            stor0 = 1
            return 0
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[arg1] = arg2 + balanceOf[address(arg1)]
        if allowance[address(msg.sender)][address(msg.sender)] != -1:
            allowance[address(msg.sender)][address(msg.sender)] -= arg2
    emit code.data[22783 len 32]: arg2, msg.sender, arg1
    stor0 = 1
    return 1
}

function _addReserves(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    if accrualBlockNumber != block.number:
        emit Failure(10, 79, 0);
        stor0 = 1
        return 10
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(underlyingAddress)
    call underlyingAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size:
        require return_data.size == 32
        if not ext_call.return_data[0]:
            revert with 0, 'TOKEN_TRANSFER_IN_FAILED'
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'TOKEN_TRANSFER_IN_OVERFLOW'
    if totalReserves < totalReserves:
        revert with 0, 'add reserves unexpected overflow'
    emit ReservesAdded(msg.sender, 0, totalReserves);
    stor0 = 1
    return 0
}

function seize(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    require ext_code.size(comptrollerAddress)
    call comptrollerAddress.seizeAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, uint32(this.address), msg.sender, address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        emit Failure(3, 27, ext_call.return_data[0]);
        stor0 = 1
        return 3
    if arg2 == arg1:
        emit Failure(6, 28, 0);
        stor0 = 1
        return 6
    if arg3 > balanceOf[address(arg2)]:
        emit Failure(9, 26, 3);
        stor0 = 1
        return 9
    if arg3 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        emit Failure(9, 25, 2);
        stor0 = 1
        return 9
    balanceOf[address(arg2)] -= arg3
    balanceOf[arg1] = arg3 + balanceOf[address(arg1)]
    emit code.data[22783 len 32]: arg3, arg2, arg1
    require ext_code.size(comptrollerAddress)
    call comptrollerAddress.seizeVerify(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, uint32(this.address), msg.sender, address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
    return 0
}

function _reduceReserves(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    if adminAddress != msg.sender:
        emit Failure(1, 49, 0);
        stor0 = 1
        return 1
    if accrualBlockNumber != block.number:
        emit Failure(10, 51, 0);
        stor0 = 1
        return 10
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        emit Failure(14, 50, 0);
        stor0 = 1
        return 14
    if arg1 > totalReserves:
        emit Failure(2, 52, 0);
        stor0 = 1
        return 2
    if totalReserves - arg1 > totalReserves:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 36, code.data[23060 len 36], mem[200 len 28]
    totalReserves -= arg1
    require ext_code.size(underlyingAddress)
    call underlyingAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(stor3.field_0), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size:
        require return_data.size == 32
        if not ext_call.return_data[0]:
            revert with 0, 'TOKEN_TRANSFER_OUT_FAILED'
    emit ReservesReduced(address(stor3.field_0), arg1, totalReserves - arg1);
    stor0 = 1
    return 0
}

function balanceOfUnderlying(address arg1) {
    require calldata.size - 4 >= 32
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    if not totalSupply:
        stor0 = 1
        if not stor7:
            return 0
        if balanceOf[address(arg1)] * stor7 / stor7 != balanceOf[address(arg1)]:
            revert with 0, 'balance could not be calculated'
        return (balanceOf[address(arg1)] * stor7 / 10^18)
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if totalBorrows + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 32, 53, code.data[22915 len 53], mem[313 len 11]
    if totalReserves > totalBorrows + ext_call.return_data[0]:
        revert with 0, 32, 53, code.data[22915 len 53], mem[313 len 11]
    if not totalBorrows + ext_call.return_data[0] - totalReserves:
        if not totalSupply:
            revert with 0, 32, 53, code.data[22915 len 53], mem[377 len 11]
        stor0 = 1
        if not 0 / totalSupply:
            return 0
        if balanceOf[address(arg1)] * 0 / totalSupply / 0 / totalSupply != balanceOf[address(arg1)]:
            revert with 0, 'balance could not be calculated'
        return (balanceOf[address(arg1)] * 0 / totalSupply / 10^18)
    if (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalBorrows + ext_call.return_data[0] - totalReserves != 10^18:
        revert with 0, 32, 53, code.data[22915 len 53], mem[377 len 11]
    if not totalSupply:
        revert with 0, 32, 53, code.data[22915 len 53], mem[377 len 11]
    stor0 = 1
    if not (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply:
        return 0
    if balanceOf[address(arg1)] * (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply / (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply != balanceOf[address(arg1)]:
        revert with 0, 'balance could not be calculated'
    return (balanceOf[address(arg1)] * (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply / 10^18)
}

function getAccountSnapshot(address arg1) {
    require calldata.size - 4 >= 32
    if not stor16[address(arg1)].field_0:
        if not totalSupply:
            return 0, balanceOf[address(arg1)], 0, stor7
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if totalBorrows + ext_call.return_data[0] >= ext_call.return_data[0]:
            if totalReserves <= totalBorrows + ext_call.return_data[0]:
                if not totalBorrows + ext_call.return_data[0] - totalReserves:
                    if totalSupply:
                        return 0, balanceOf[address(arg1)], 0, 0 / totalSupply
                else:
                    if (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalBorrows + ext_call.return_data[0] - totalReserves == 10^18:
                        if totalSupply:
                            return 0, 
                                   balanceOf[address(arg1)],
                                   0,
                                   (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply
    else:
        if borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_0 == borrowIndex:
            if stor16[address(arg1)].field_256:
                if not totalSupply:
                    return 0, balanceOf[address(arg1)], borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_256, stor7
                require ext_code.size(underlyingAddress)
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if totalBorrows + ext_call.return_data[0] >= ext_call.return_data[0]:
                    if totalReserves <= totalBorrows + ext_call.return_data[0]:
                        if not totalBorrows + ext_call.return_data[0] - totalReserves:
                            if totalSupply:
                                return 0, 
                                       balanceOf[address(arg1)],
                                       borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_256,
                                       0 / totalSupply
                        else:
                            if (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalBorrows + ext_call.return_data[0] - totalReserves == 10^18:
                                if totalSupply:
                                    return 0, 
                                           balanceOf[address(arg1)],
                                           borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_256,
                                           (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply
    return 9, 0, 0, 0
}

function initialize(address arg1, address arg2, uint256 arg3, string arg4, string arg5, uint8 arg6) {
    require calldata.size - 4 >= 192
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if not adminAddress:
        Mask(248, 0, stor3.field_8) = Mask(248, 0, msg.sender)
    if adminAddress != msg.sender:
        revert with 0, 32, 36, code.data[22379 len 36], mem[ceil32(arg4.length) + ceil32(arg5.length) + 264 len 28]
    if accrualBlockNumber:
        revert with 0, 32, 35, code.data[22415 len 35], mem[ceil32(arg4.length) + ceil32(arg5.length) + 263 len 29]
    if borrowIndex:
        revert with 0, 32, 35, code.data[22415 len 35], mem[ceil32(arg4.length) + ceil32(arg5.length) + 263 len 29]
    stor7 = arg3
    if not arg3:
        revert with 0, 32, 48, code.data[22500 len 48], mem[ceil32(arg4.length) + ceil32(arg5.length) + 276 len 16]
    if adminAddress != msg.sender:
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 1
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = 63
        emit Failure(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len ceil32(arg5.length) + -arg5.length + 32], 0);
        revert with 0, 'setting comptroller failed'
    comptrollerAddress = arg1
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = comptrollerAddress
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg1
    emit NewComptroller(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length) + 32]);
    accrualBlockNumber = block.number
    borrowIndex = 10^18
    if adminAddress != msg.sender:
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 1
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = 66
        emit Failure(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len ceil32(arg5.length) + -arg5.length + 32], 0);
        revert with 0, 32, 34, code.data[22593 len 34], mem[ceil32(arg4.length) + ceil32(arg5.length) + 262 len 30]
    if accrualBlockNumber != block.number:
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 10
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = 65
        emit Failure(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len ceil32(arg5.length) + -arg5.length + 32], 0);
        revert with 0, 32, 34, code.data[22593 len 34], mem[ceil32(arg4.length) + ceil32(arg5.length) + 262 len 30]
    interestRateModelAddress = arg2
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = interestRateModelAddress
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg2
    emit NewMarketInterestRateModel(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length) + 32]);
    name[] = Array(len=arg4.length, data=arg4[all])
    symbol[] = Array(len=arg5.length, data=arg5[all])
    decimals = arg6
    stor0 = 1
}

function borrow(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    require ext_code.size(comptrollerAddress)
    call comptrollerAddress.borrowAllowed(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args this.address, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        emit Failure(3, 14, ext_call.return_data[0]);
        stor0 = 1
        return 3
    if accrualBlockNumber != block.number:
        emit Failure(10, 10, 0);
        stor0 = 1
        return 10
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        emit Failure(14, 9, 0);
        stor0 = 1
        return 14
    if not stor16[address(msg.sender)].field_0:
        if arg1 < 0:
            emit Failure(9, 12, 2);
            stor0 = 1
            return 9
        if arg1 + totalBorrows < totalBorrows:
            emit Failure(9, 11, 2);
            stor0 = 1
            return 9
        require ext_code.size(underlyingAddress)
        call underlyingAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                revert with 0, 'TOKEN_TRANSFER_OUT_FAILED'
        stor16[address(msg.sender)].field_0 = arg1
        stor16[address(msg.sender)].field_256 = borrowIndex
        totalBorrows += arg1
        emit Borrow(msg.sender, arg1, arg1, arg1 + totalBorrows);
    else:
        if borrowIndex * stor16[address(msg.sender)].field_0 / stor16[address(msg.sender)].field_0 != borrowIndex:
            emit Failure(9, 7, 2);
            stor0 = 1
            return 9
        if not stor16[address(msg.sender)].field_256:
            emit Failure(9, 7, 1);
            stor0 = 1
            return 9
        if arg1 + (borrowIndex * stor16[address(msg.sender)].field_0 / stor16[address(msg.sender)].field_256) < borrowIndex * stor16[address(msg.sender)].field_0 / stor16[address(msg.sender)].field_256:
            emit Failure(9, 12, 2);
            stor0 = 1
            return 9
        if arg1 + totalBorrows < totalBorrows:
            emit Failure(9, 11, 2);
            stor0 = 1
            return 9
        require ext_code.size(underlyingAddress)
        call underlyingAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                revert with 0, 'TOKEN_TRANSFER_OUT_FAILED'
        stor16[address(msg.sender)].field_0 = arg1 + (borrowIndex * stor16[address(msg.sender)].field_0 / stor16[address(msg.sender)].field_256)
        stor16[address(msg.sender)].field_256 = borrowIndex
        totalBorrows += arg1
        emit Borrow(msg.sender, arg1, arg1 + (borrowIndex * stor16[address(msg.sender)].field_0 / stor16[address(msg.sender)].field_256), arg1 + totalBorrows);
    require ext_code.size(comptrollerAddress)
    call comptrollerAddress.borrowVerify(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args this.address, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
    return 0
}

function sub_1220f346(?) {
    require calldata.size - 4 >= 288
    require arg7 <= 4294967296
    require arg7 + 36 <= calldata.size
    require arg7.length <= 4294967296 and arg7 + arg7.length + 36 <= calldata.size
    require arg8 <= 4294967296
    require arg8 + 36 <= calldata.size
    require arg8.length <= 4294967296 and arg8 + arg8.length + 36 <= calldata.size
    if not adminAddress:
        Mask(248, 0, stor3.field_8) = Mask(248, 0, msg.sender)
    if adminAddress != msg.sender:
        revert with 0, 32, 36, code.data[22379 len 36], mem[ceil32(arg7.length) + ceil32(arg8.length) + 264 len 28]
    if accrualBlockNumber:
        revert with 0, 32, 35, code.data[22415 len 35], mem[ceil32(arg7.length) + ceil32(arg8.length) + 263 len 29]
    if borrowIndex:
        revert with 0, 32, 35, code.data[22415 len 35], mem[ceil32(arg7.length) + ceil32(arg8.length) + 263 len 29]
    stor7 = arg6
    if not arg6:
        revert with 0, 32, 48, code.data[22500 len 48], mem[ceil32(arg7.length) + ceil32(arg8.length) + 276 len 16]
    if adminAddress != msg.sender:
        mem[ceil32(arg7.length) + ceil32(arg8.length) + 160] = 1
        mem[ceil32(arg7.length) + ceil32(arg8.length) + 192] = 63
        emit Failure(Mask(8 * -ceil32(arg8.length) + arg8.length + 32, 0, 0), mem[ceil32(arg7.length) + arg8.length + 192 len ceil32(arg8.length) + -arg8.length + 32], 0);
        revert with 0, 'setting comptroller failed'
    comptrollerAddress = arg4
    mem[ceil32(arg7.length) + ceil32(arg8.length) + 160] = comptrollerAddress
    mem[ceil32(arg7.length) + ceil32(arg8.length) + 192] = arg4
    emit NewComptroller(Mask(8 * -ceil32(arg8.length) + arg8.length + 32, 0, 0), mem[ceil32(arg7.length) + arg8.length + 192 len -arg8.length + ceil32(arg8.length) + 32]);
    accrualBlockNumber = block.number
    borrowIndex = 10^18
    if adminAddress != msg.sender:
        mem[ceil32(arg7.length) + ceil32(arg8.length) + 160] = 1
        mem[ceil32(arg7.length) + ceil32(arg8.length) + 192] = 66
        emit Failure(Mask(8 * -ceil32(arg8.length) + arg8.length + 32, 0, 0), mem[ceil32(arg7.length) + arg8.length + 192 len ceil32(arg8.length) + -arg8.length + 32], 0);
        revert with 0, 32, 34, code.data[22593 len 34], mem[ceil32(arg7.length) + ceil32(arg8.length) + 262 len 30]
    if accrualBlockNumber != block.number:
        mem[ceil32(arg7.length) + ceil32(arg8.length) + 160] = 10
        mem[ceil32(arg7.length) + ceil32(arg8.length) + 192] = 65
        emit Failure(Mask(8 * -ceil32(arg8.length) + arg8.length + 32, 0, 0), mem[ceil32(arg7.length) + arg8.length + 192 len ceil32(arg8.length) + -arg8.length + 32], 0);
        revert with 0, 32, 34, code.data[22593 len 34], mem[ceil32(arg7.length) + ceil32(arg8.length) + 262 len 30]
    interestRateModelAddress = arg5
    mem[ceil32(arg7.length) + ceil32(arg8.length) + 160] = interestRateModelAddress
    mem[ceil32(arg7.length) + ceil32(arg8.length) + 192] = arg5
    emit NewMarketInterestRateModel(Mask(8 * -ceil32(arg8.length) + arg8.length + 32, 0, 0), mem[ceil32(arg7.length) + arg8.length + 192 len -arg8.length + ceil32(arg8.length) + 32]);
    name[] = Array(len=arg7.length, data=arg7[all])
    symbol[] = Array(len=arg8.length, data=arg8[all])
    decimals = arg9
    stor0 = 1
    underlyingAddress = arg1
    wethAddress = arg2
    Mask(96, 0, stor18.field_160) = Mask(96, 0, arg2 == arg1)
    create contract with 0 wei
                    code: Mask(8 * -ceil32(arg8.length) + arg8.length + 32, 0, 0), code.data[arg8.length + -ceil32(arg8.length) + 21858 len -arg8.length + ceil32(arg8.length) + 521]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_7672f134Address = address(create.new_address)
    Mask(88, 0, stor18.field_168) = Mask(88, 0, arg3)
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function repayBorrowBehalf(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    require ext_code.size(comptrollerAddress)
    call comptrollerAddress.repayBorrowAllowed(address arg1, address arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(this.address), msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        emit Failure(3, 56, ext_call.return_data[0]);
        stor0 = 1
        return 3
    if accrualBlockNumber != block.number:
        emit Failure(10, 57, 0);
        stor0 = 1
        return 10
    if not stor16[address(arg1)].field_0:
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(underlyingAddress)
        if arg2 != -1:
            call underlyingAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg2
        else:
            call underlyingAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                revert with 0, 'TOKEN_TRANSFER_IN_FAILED'
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'TOKEN_TRANSFER_IN_OVERFLOW'
        if 0 > totalBorrows:
            revert with 0, 32, 49, code.data[22815 len 49], mem[469 len 15]
        stor16[address(arg1)].field_0 = 0
        stor16[address(arg1)].field_256 = borrowIndex
        emit RepayBorrow(msg.sender, address(arg1), 0, 0, totalBorrows);
    else:
        if borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_0 != borrowIndex:
            emit Failure(9, 55, 2);
            stor0 = 1
            return 9
        if not stor16[address(arg1)].field_256:
            emit Failure(9, 55, 1);
            stor0 = 1
            return 9
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(underlyingAddress)
        if arg2 != -1:
            call underlyingAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg2
        else:
            call underlyingAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                revert with 0, 'TOKEN_TRANSFER_IN_FAILED'
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'TOKEN_TRANSFER_IN_OVERFLOW'
        if 0 > borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_256:
            revert with 0, 32, 58, code.data[22725 len 58], mem[478 len 6]
        if 0 > totalBorrows:
            revert with 0, 32, 49, code.data[22815 len 49], mem[469 len 15]
        stor16[address(arg1)].field_0 = borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_256
        stor16[address(arg1)].field_256 = borrowIndex
        emit RepayBorrow(msg.sender, address(arg1), 0, borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_256, totalBorrows);
    require ext_code.size(comptrollerAddress)
    call comptrollerAddress.repayBorrowVerify(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args this.address, msg.sender, address(arg1), 0, stor16[address(arg1)].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
    return 0
}

function repayBorrow(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    require ext_code.size(comptrollerAddress)
    call comptrollerAddress.repayBorrowAllowed(address arg1, address arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(this.address), msg.sender, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        emit Failure(3, 56, ext_call.return_data[0]);
        stor0 = 1
        return 3
    if accrualBlockNumber != block.number:
        emit Failure(10, 57, 0);
        stor0 = 1
        return 10
    if not stor16[address(msg.sender)].field_0:
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(underlyingAddress)
        if arg1 != -1:
            call underlyingAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg1
        else:
            call underlyingAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                revert with 0, 'TOKEN_TRANSFER_IN_FAILED'
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'TOKEN_TRANSFER_IN_OVERFLOW'
        if 0 > totalBorrows:
            revert with 0, 32, 49, code.data[22815 len 49], mem[469 len 15]
        stor16[address(msg.sender)].field_0 = 0
        stor16[address(msg.sender)].field_256 = borrowIndex
        emit RepayBorrow(msg.sender, msg.sender, 0, 0, totalBorrows);
    else:
        if borrowIndex * stor16[address(msg.sender)].field_0 / stor16[address(msg.sender)].field_0 != borrowIndex:
            emit Failure(9, 55, 2);
            stor0 = 1
            return 9
        if not stor16[address(msg.sender)].field_256:
            emit Failure(9, 55, 1);
            stor0 = 1
            return 9
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(underlyingAddress)
        if arg1 != -1:
            call underlyingAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg1
        else:
            call underlyingAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, borrowIndex * stor16[address(msg.sender)].field_0 / stor16[address(msg.sender)].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                revert with 0, 'TOKEN_TRANSFER_IN_FAILED'
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'TOKEN_TRANSFER_IN_OVERFLOW'
        if 0 > borrowIndex * stor16[address(msg.sender)].field_0 / stor16[address(msg.sender)].field_256:
            revert with 0, 32, 58, code.data[22725 len 58], mem[478 len 6]
        if 0 > totalBorrows:
            revert with 0, 32, 49, code.data[22815 len 49], mem[469 len 15]
        stor16[address(msg.sender)].field_0 = borrowIndex * stor16[address(msg.sender)].field_0 / stor16[address(msg.sender)].field_256
        stor16[address(msg.sender)].field_256 = borrowIndex
        emit RepayBorrow(msg.sender, msg.sender, 0, borrowIndex * stor16[address(msg.sender)].field_0 / stor16[address(msg.sender)].field_256, totalBorrows);
    require ext_code.size(comptrollerAddress)
    call comptrollerAddress.repayBorrowVerify(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args this.address, msg.sender, msg.sender, 0, stor16[address(msg.sender)].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
    return 0
}

function liquidateBorrow(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    require ext_code.size(arg3)
    call arg3.0xa6afed95 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_call.return_data[0] <= 16
        emit Failure(ext_call.return_data[0], 16, 0);
        require ext_call.return_data[0] <= 16
        stor0 = 1
        return ext_call.return_data[0]
    require ext_code.size(comptrollerAddress)
    call comptrollerAddress.liquidateBorrowAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, uint32(this.address), address(arg3), msg.sender, arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        emit Failure(3, 18, ext_call.return_data[0]);
        stor0 = 1
        return 3
    if accrualBlockNumber != block.number:
        emit Failure(10, 22, 0);
        stor0 = 1
        return 10
    require ext_code.size(arg3)
    staticcall arg3.0x6c540baf with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != block.number:
        emit Failure(10, 17, 0);
        stor0 = 1
        return 10
    if arg1 == msg.sender:
        emit Failure(6, 23, 0);
        stor0 = 1
        return 6
    if not arg2:
        emit Failure(7, 21, 0);
        stor0 = 1
        return 7
    if arg2 == -1:
        emit Failure(7, 20, 0);
        stor0 = 1
        return 7
    require ext_code.size(comptrollerAddress)
    call comptrollerAddress.repayBorrowAllowed(address arg1, address arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(this.address), msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        emit Failure(3, 56, ext_call.return_data[0]);
        emit Failure(3, 24, 0);
        stor0 = 1
        return 3
    if accrualBlockNumber != block.number:
        emit Failure(10, 57, 0);
        emit Failure(10, 24, 0);
        stor0 = 1
        return 10
    if not stor16[address(arg1)].field_0:
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(underlyingAddress)
        if arg2 != -1:
            call underlyingAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg2
        else:
            call underlyingAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                revert with 0, 'TOKEN_TRANSFER_IN_FAILED'
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'TOKEN_TRANSFER_IN_OVERFLOW'
        if 0 > totalBorrows:
            revert with 0, 32, 49, code.data[22815 len 49], mem[469 len 15]
        stor16[address(arg1)].field_0 = 0
        stor16[address(arg1)].field_256 = borrowIndex
        emit RepayBorrow(msg.sender, address(arg1), 0, 0, totalBorrows);
    else:
        if borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_0 != borrowIndex:
            emit Failure(9, 55, 2);
            emit Failure(9, 24, 0);
            stor0 = 1
            return 9
        if not stor16[address(arg1)].field_256:
            emit Failure(9, 55, 1);
            emit Failure(9, 24, 0);
            stor0 = 1
            return 9
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(underlyingAddress)
        if arg2 != -1:
            call underlyingAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg2
        else:
            call underlyingAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                revert with 0, 'TOKEN_TRANSFER_IN_FAILED'
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'TOKEN_TRANSFER_IN_OVERFLOW'
        if 0 > borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_256:
            revert with 0, 32, 58, code.data[22725 len 58], mem[478 len 6]
        if 0 > totalBorrows:
            revert with 0, 32, 49, code.data[22815 len 49], mem[469 len 15]
        stor16[address(arg1)].field_0 = borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_256
        stor16[address(arg1)].field_256 = borrowIndex
        emit RepayBorrow(msg.sender, address(arg1), 0, borrowIndex * stor16[address(arg1)].field_0 / stor16[address(arg1)].field_256, totalBorrows);
    require ext_code.size(comptrollerAddress)
    call comptrollerAddress.repayBorrowVerify(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args this.address, msg.sender, address(arg1), 0, stor16[address(arg1)].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(comptrollerAddress)
    staticcall comptrollerAddress.liquidateCalculateSeizeTokens(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args this.address, address(arg3), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0]:
        revert with 0, 32, 51, code.data[22864 len 51], 0
    require ext_code.size(arg3)
    staticcall arg3.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[32]:
        revert with 0, 'LIQUIDATE_SEIZE_TOO_MUCH'
    if arg3 != this.address:
        require ext_code.size(arg3)
        call arg3.0xb2a02ff1 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'token seizure failed'
    else:
        require ext_code.size(comptrollerAddress)
        call comptrollerAddress.seizeAllowed(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args this.address, address(this.address), msg.sender, address(arg1), ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            emit Failure(3, 27, ext_call.return_data[0]);
            revert with 0, 'token seizure failed'
        if arg1 == msg.sender:
            emit Failure(6, 28, 0);
            revert with 0, 'token seizure failed'
        if ext_call.return_data[32] > balanceOf[address(arg1)]:
            emit Failure(9, 26, 3);
            revert with 0, 'token seizure failed'
        if ext_call.return_data[32] + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            emit Failure(9, 25, 2);
            revert with 0, 'token seizure failed'
        balanceOf[address(arg1)] -= ext_call.return_data[32]
        balanceOf[msg.sender] = ext_call.return_data[32] + balanceOf[address(msg.sender)]
        emit code.data[22783 len 32]: ext_call.return_data[32], arg1, msg.sender
        require ext_code.size(comptrollerAddress)
        call comptrollerAddress.seizeVerify(address arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args this.address, address(this.address), msg.sender, address(arg1), ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit LiquidateBorrow(msg.sender, address(arg1), 0, address(arg3), ext_call.return_data[32]);
    require ext_code.size(comptrollerAddress)
    call comptrollerAddress.liquidateBorrowVerify(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6) with:
         gas gas_remaining wei
        args this.address, address(arg3), msg.sender, address(arg1), 0, ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
    return 0
}

function mint(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    if uint8(stor18.field_168):
        if arg1:
            if sub_3ed577af:
                totalSupply += arg1
                balanceOf[address(msg.sender)] += arg1
                emit Mint(msg.sender, arg1, arg1);
                emit code.data[22783 len 32]: arg1, this.address, msg.sender
            else:
                require ext_code.size(underlyingAddress)
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(underlyingAddress)
                call underlyingAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if return_data.size:
                    require return_data.size == 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'TOKEN_TRANSFER_IN_FAILED'
                require ext_code.size(underlyingAddress)
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'TOKEN_TRANSFER_IN_OVERFLOW'
                emit Mint(msg.sender, 0, 0);
                emit code.data[22783 len 32]: 0, this.address, msg.sender
    else:
        require ext_code.size(comptrollerAddress)
        call comptrollerAddress.mintAllowed(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args this.address, msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            emit Failure(3, 31, ext_call.return_data[0]);
            stor0 = 1
            return 3
        if accrualBlockNumber != block.number:
            emit Failure(10, 34, 0);
            stor0 = 1
            return 10
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not totalSupply:
            require ext_code.size(underlyingAddress)
            call underlyingAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if return_data.size:
                require return_data.size == 32
                if not ext_call.return_data[0]:
                    revert with 0, 'TOKEN_TRANSFER_IN_FAILED'
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'TOKEN_TRANSFER_IN_OVERFLOW'
            if not stor7:
                revert with 0, 'MINT_EXCHANGE_CALCULATION_FAILED'
            if (0 / stor7 / 10^18) + totalSupply < totalSupply:
                revert with 0, 32, 40, code.data[22968 len 40], mem[588 len 24]
            if (0 / stor7 / 10^18) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 32, 43, code.data[22627 len 43], mem[591 len 21]
            totalSupply += 0 / stor7 / 10^18
            balanceOf[address(msg.sender)] += 0 / stor7 / 10^18
            emit Mint(msg.sender, 0, 0 / stor7 / 10^18);
            emit code.data[22783 len 32]: (0 / stor7 / 10^18), this.address, msg.sender
            require ext_code.size(comptrollerAddress)
            call comptrollerAddress.mintVerify(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args this.address, msg.sender, 0, 0 / stor7 / 10^18
        else:
            if totalBorrows + ext_call.return_data[0] < ext_call.return_data[0]:
                emit Failure(9, 33, 2);
                stor0 = 1
                return 9
            if totalReserves > totalBorrows + ext_call.return_data[0]:
                emit Failure(9, 33, 3);
                stor0 = 1
                return 9
            if not totalBorrows + ext_call.return_data[0] - totalReserves:
                if not totalSupply:
                    emit Failure(9, 33, 1);
                    stor0 = 1
                    return 9
                require ext_code.size(underlyingAddress)
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(underlyingAddress)
                call underlyingAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if return_data.size:
                    require return_data.size == 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'TOKEN_TRANSFER_IN_FAILED'
                require ext_code.size(underlyingAddress)
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'TOKEN_TRANSFER_IN_OVERFLOW'
                if not 0 / totalSupply:
                    revert with 0, 'MINT_EXCHANGE_CALCULATION_FAILED'
                if (0 / 0 / totalSupply / 10^18) + totalSupply < totalSupply:
                    revert with 0, 32, 40, code.data[22968 len 40], mem[684 len 24]
                if (0 / 0 / totalSupply / 10^18) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 32, 43, code.data[22627 len 43], mem[687 len 21]
                totalSupply += 0 / 0 / totalSupply / 10^18
                balanceOf[address(msg.sender)] += 0 / 0 / totalSupply / 10^18
                emit Mint(msg.sender, 0, 0 / 0 / totalSupply / 10^18);
                emit code.data[22783 len 32]: (0 / 0 / totalSupply / 10^18), this.address, msg.sender
                require ext_code.size(comptrollerAddress)
                call comptrollerAddress.mintVerify(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args this.address, msg.sender, 0, 0 / 0 / totalSupply / 10^18
            else:
                if (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalBorrows + ext_call.return_data[0] - totalReserves != 10^18:
                    emit Failure(9, 33, 2);
                    stor0 = 1
                    return 9
                if not totalSupply:
                    emit Failure(9, 33, 1);
                    stor0 = 1
                    return 9
                require ext_code.size(underlyingAddress)
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(underlyingAddress)
                call underlyingAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if return_data.size:
                    require return_data.size == 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'TOKEN_TRANSFER_IN_FAILED'
                require ext_code.size(underlyingAddress)
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'TOKEN_TRANSFER_IN_OVERFLOW'
                if not (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply:
                    revert with 0, 'MINT_EXCHANGE_CALCULATION_FAILED'
                if (0 / (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply / 10^18) + totalSupply < totalSupply:
                    revert with 0, 32, 40, code.data[22968 len 40], mem[684 len 24]
                if (0 / (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply / 10^18) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 32, 43, code.data[22627 len 43], mem[687 len 21]
                totalSupply += 0 / (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply / 10^18
                balanceOf[address(msg.sender)] += 0 / (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply / 10^18
                emit Mint(msg.sender, 0, 0 / (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply / 10^18);
                emit code.data[22783 len 32]: (0 / (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply / 10^18), this.address, msg.sender
                require ext_code.size(comptrollerAddress)
                call comptrollerAddress.mintVerify(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args this.address, msg.sender, 0, 0 / (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
    return 0
}

function mint(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if msg.value:
        require ext_code.size(wethAddress)
        call wethAddress.deposit() with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if not sub_3ed577af:
        if not stor0:
            revert with 0, 're-entered'
        stor0 = 0
        if uint8(stor18.field_168):
            if arg1:
                if sub_3ed577af:
                    totalSupply += arg1
                    balanceOf[address(arg2)] += arg1
                    emit Mint(address(arg2), arg1, arg1);
                    emit code.data[22783 len 32]: arg1, this.address, arg2
                else:
                    require ext_code.size(underlyingAddress)
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(underlyingAddress)
                    call underlyingAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if return_data.size:
                        require return_data.size == 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'TOKEN_TRANSFER_IN_FAILED'
                    require ext_code.size(underlyingAddress)
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'TOKEN_TRANSFER_IN_OVERFLOW'
                    emit Mint(address(arg2), 0, 0);
                    emit code.data[22783 len 32]: 0, this.address, arg2
        else:
            require ext_code.size(comptrollerAddress)
            call comptrollerAddress.mintAllowed(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args this.address, address(arg2), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                emit Failure(3, 31, ext_call.return_data[0]);
                stor0 = 1
                return 3, arg1
            if accrualBlockNumber != block.number:
                emit Failure(10, 34, 0);
                stor0 = 1
                return 10, arg1
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not totalSupply:
                require ext_code.size(underlyingAddress)
                call underlyingAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg2), this.address, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if return_data.size:
                    require return_data.size == 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'TOKEN_TRANSFER_IN_FAILED'
                require ext_code.size(underlyingAddress)
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'TOKEN_TRANSFER_IN_OVERFLOW'
                if not stor7:
                    revert with 0, 'MINT_EXCHANGE_CALCULATION_FAILED'
                if (0 / stor7 / 10^18) + totalSupply < totalSupply:
                    revert with 0, 32, 40, code.data[22968 len 40], mem[588 len 24]
                if (0 / stor7 / 10^18) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                    revert with 0, 32, 43, code.data[22627 len 43], mem[591 len 21]
                totalSupply += 0 / stor7 / 10^18
                balanceOf[address(arg2)] += 0 / stor7 / 10^18
                emit Mint(address(arg2), 0, 0 / stor7 / 10^18);
                emit code.data[22783 len 32]: (0 / stor7 / 10^18), this.address, arg2
                require ext_code.size(comptrollerAddress)
                call comptrollerAddress.mintVerify(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args this.address, address(arg2), 0, 0 / stor7 / 10^18
            else:
                if totalBorrows + ext_call.return_data[0] < ext_call.return_data[0]:
                    emit Failure(9, 33, 2);
                    stor0 = 1
                    return 9, arg1
                if totalReserves > totalBorrows + ext_call.return_data[0]:
                    emit Failure(9, 33, 3);
                    stor0 = 1
                    return 9, arg1
                if not totalBorrows + ext_call.return_data[0] - totalReserves:
                    if not totalSupply:
                        emit Failure(9, 33, 1);
                        stor0 = 1
                        return 9, arg1
                    require ext_code.size(underlyingAddress)
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(underlyingAddress)
                    call underlyingAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(arg2), this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if return_data.size:
                        require return_data.size == 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'TOKEN_TRANSFER_IN_FAILED'
                    require ext_code.size(underlyingAddress)
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'TOKEN_TRANSFER_IN_OVERFLOW'
                    if not 0 / totalSupply:
                        revert with 0, 'MINT_EXCHANGE_CALCULATION_FAILED'
                    if (0 / 0 / totalSupply / 10^18) + totalSupply < totalSupply:
                        revert with 0, 32, 40, code.data[22968 len 40], mem[684 len 24]
                    if (0 / 0 / totalSupply / 10^18) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                        revert with 0, 32, 43, code.data[22627 len 43], mem[687 len 21]
                    totalSupply += 0 / 0 / totalSupply / 10^18
                    balanceOf[address(arg2)] += 0 / 0 / totalSupply / 10^18
                    emit Mint(address(arg2), 0, 0 / 0 / totalSupply / 10^18);
                    emit code.data[22783 len 32]: (0 / 0 / totalSupply / 10^18), this.address, arg2
                    require ext_code.size(comptrollerAddress)
                    call comptrollerAddress.mintVerify(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args this.address, address(arg2), 0, 0 / 0 / totalSupply / 10^18
                else:
                    if (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalBorrows + ext_call.return_data[0] - totalReserves != 10^18:
                        emit Failure(9, 33, 2);
                        stor0 = 1
                        return 9, arg1
                    if not totalSupply:
                        emit Failure(9, 33, 1);
                        stor0 = 1
                        return 9, arg1
                    require ext_code.size(underlyingAddress)
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(underlyingAddress)
                    call underlyingAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(arg2), this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if return_data.size:
                        require return_data.size == 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'TOKEN_TRANSFER_IN_FAILED'
                    require ext_code.size(underlyingAddress)
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'TOKEN_TRANSFER_IN_OVERFLOW'
                    if not (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply:
                        revert with 0, 'MINT_EXCHANGE_CALCULATION_FAILED'
                    if (0 / (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply / 10^18) + totalSupply < totalSupply:
                        revert with 0, 32, 40, code.data[22968 len 40], mem[684 len 24]
                    if (0 / (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply / 10^18) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                        revert with 0, 32, 43, code.data[22627 len 43], mem[687 len 21]
                    totalSupply += 0 / (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply / 10^18
                    balanceOf[address(arg2)] += 0 / (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply / 10^18
                    emit Mint(address(arg2), 0, 0 / (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply / 10^18);
                    emit code.data[22783 len 32]: (0 / (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply / 10^18), this.address, arg2
                    require ext_code.size(comptrollerAddress)
                    call comptrollerAddress.mintVerify(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                         gas gas_remaining wei
                        args this.address, address(arg2), 0, 0 / (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply / 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        stor0 = 1
        return 0, arg1
    if arg1:
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(underlyingAddress)
        call underlyingAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                revert with 0, 'TOKEN_TRANSFER_IN_FAILED'
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'TOKEN_TRANSFER_IN_OVERFLOW'
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    if uint8(stor18.field_168):
        if arg1 + msg.value:
            if sub_3ed577af:
                totalSupply = arg1 + msg.value + totalSupply
                balanceOf[address(arg2)] = arg1 + msg.value + balanceOf[address(arg2)]
                emit Mint(address(arg2), arg1 + msg.value, arg1 + msg.value);
                emit code.data[22783 len 32]: (arg1 + msg.value), this.address, arg2
            else:
                require ext_code.size(underlyingAddress)
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(underlyingAddress)
                call underlyingAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, this.address, arg1 + msg.value
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if return_data.size:
                    require return_data.size == 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'TOKEN_TRANSFER_IN_FAILED'
                require ext_code.size(underlyingAddress)
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'TOKEN_TRANSFER_IN_OVERFLOW'
                emit Mint(address(arg2), 0, 0);
                emit code.data[22783 len 32]: 0, this.address, arg2
    else:
        require ext_code.size(comptrollerAddress)
        call comptrollerAddress.mintAllowed(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args this.address, address(arg2), arg1 + msg.value
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            emit Failure(3, 31, ext_call.return_data[0]);
            stor0 = 1
            return 3, arg1 + msg.value
        if accrualBlockNumber != block.number:
            emit Failure(10, 34, 0);
            stor0 = 1
            return 10, arg1 + msg.value
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not totalSupply:
            require ext_code.size(underlyingAddress)
            call underlyingAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(arg2), this.address, arg1 + msg.value
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if return_data.size:
                require return_data.size == 32
                if not ext_call.return_data[0]:
                    revert with 0, 'TOKEN_TRANSFER_IN_FAILED'
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'TOKEN_TRANSFER_IN_OVERFLOW'
            if not stor7:
                revert with 0, 'MINT_EXCHANGE_CALCULATION_FAILED'
            if (0 / stor7 / 10^18) + totalSupply < totalSupply:
                revert with 0, 32, 40, code.data[22968 len 40], mem[588 len 24]
            if (0 / stor7 / 10^18) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                revert with 0, 32, 43, code.data[22627 len 43], mem[591 len 21]
            totalSupply += 0 / stor7 / 10^18
            balanceOf[address(arg2)] += 0 / stor7 / 10^18
            emit Mint(address(arg2), 0, 0 / stor7 / 10^18);
            emit code.data[22783 len 32]: (0 / stor7 / 10^18), this.address, arg2
            require ext_code.size(comptrollerAddress)
            call comptrollerAddress.mintVerify(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                 gas gas_remaining wei
                args this.address, address(arg2), 0, 0 / stor7 / 10^18
        else:
            if totalBorrows + ext_call.return_data[0] < ext_call.return_data[0]:
                emit Failure(9, 33, 2);
                stor0 = 1
                return 9, arg1 + msg.value
            if totalReserves > totalBorrows + ext_call.return_data[0]:
                emit Failure(9, 33, 3);
                stor0 = 1
                return 9, arg1 + msg.value
            if not totalBorrows + ext_call.return_data[0] - totalReserves:
                if not totalSupply:
                    emit Failure(9, 33, 1);
                    stor0 = 1
                    return 9, arg1 + msg.value
                require ext_code.size(underlyingAddress)
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(underlyingAddress)
                call underlyingAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg2), this.address, arg1 + msg.value
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if return_data.size:
                    require return_data.size == 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'TOKEN_TRANSFER_IN_FAILED'
                require ext_code.size(underlyingAddress)
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'TOKEN_TRANSFER_IN_OVERFLOW'
                if not 0 / totalSupply:
                    revert with 0, 'MINT_EXCHANGE_CALCULATION_FAILED'
                if (0 / 0 / totalSupply / 10^18) + totalSupply < totalSupply:
                    revert with 0, 32, 40, code.data[22968 len 40], mem[684 len 24]
                if (0 / 0 / totalSupply / 10^18) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                    revert with 0, 32, 43, code.data[22627 len 43], mem[687 len 21]
                totalSupply += 0 / 0 / totalSupply / 10^18
                balanceOf[address(arg2)] += 0 / 0 / totalSupply / 10^18
                emit Mint(address(arg2), 0, 0 / 0 / totalSupply / 10^18);
                emit code.data[22783 len 32]: (0 / 0 / totalSupply / 10^18), this.address, arg2
                require ext_code.size(comptrollerAddress)
                call comptrollerAddress.mintVerify(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args this.address, address(arg2), 0, 0 / 0 / totalSupply / 10^18
            else:
                if (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalBorrows + ext_call.return_data[0] - totalReserves != 10^18:
                    emit Failure(9, 33, 2);
                    stor0 = 1
                    return 9, arg1 + msg.value
                if not totalSupply:
                    emit Failure(9, 33, 1);
                    stor0 = 1
                    return 9, arg1 + msg.value
                require ext_code.size(underlyingAddress)
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(underlyingAddress)
                call underlyingAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg2), this.address, arg1 + msg.value
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if return_data.size:
                    require return_data.size == 32
                    if not ext_call.return_data[0]:
                        revert with 0, 'TOKEN_TRANSFER_IN_FAILED'
                require ext_code.size(underlyingAddress)
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'TOKEN_TRANSFER_IN_OVERFLOW'
                if not (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply:
                    revert with 0, 'MINT_EXCHANGE_CALCULATION_FAILED'
                if (0 / (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply / 10^18) + totalSupply < totalSupply:
                    revert with 0, 32, 40, code.data[22968 len 40], mem[684 len 24]
                if (0 / (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply / 10^18) + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
                    revert with 0, 32, 43, code.data[22627 len 43], mem[687 len 21]
                totalSupply += 0 / (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply / 10^18
                balanceOf[address(arg2)] += 0 / (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply / 10^18
                emit Mint(address(arg2), 0, 0 / (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply / 10^18);
                emit code.data[22783 len 32]: (0 / (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply / 10^18), this.address, arg2
                require ext_code.size(comptrollerAddress)
                call comptrollerAddress.mintVerify(address arg1, address arg2, uint256 arg3, uint256 arg4) with:
                     gas gas_remaining wei
                    args this.address, address(arg2), 0, 0 / (10^18 * totalBorrows) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
    return 0, arg1 + msg.value
}



}
