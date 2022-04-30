contract main {




// =====================  Runtime code  =====================


const sub_4fa8e0d0(?) = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee

const NAME = ''


uint8 initialized;
uint8 stor0; offset 8
address collTokenAddress; offset 16
uint256 stor0; offset 8
address borrowerOperationsAddress;
address troveManagerAddress;
address activePoolAddress;
uint256 ETH;
mapping of struct collateral;

function getETH() {
    return ETH
}

function initialized() {
    return bool(initialized)
}

function collTokenAddress() {
    return collTokenAddress
}

function troveManagerAddress() {
    return troveManagerAddress
}

function getCollateral(address arg1) {
    require calldata.size - 4 >= 32
    return collateral[address(arg1)].field_0
}

function activePoolAddress() {
    return activePoolAddress
}

function borrowerOperationsAddress() {
    return borrowerOperationsAddress
}

function _fallback() payable {
    revert
}

function increaseColl(uint256 arg1) {
    require calldata.size - 4 >= 32
    if activePoolAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6d436f6c6c537572706c7573506f6f6c3a2043616c6c6572206973206e6f742041637469766520506f6f,
                    mem[206 len 22]
    if arg1 + ETH < ETH:
        revert with 0, 'SafeMath: addition overflow'
    ETH += arg1
}

function accountSurplus(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if troveManagerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x73436f6c6c537572706c7573506f6f6c3a2043616c6c6572206973206e6f742054726f76654d616e616765,
                    mem[207 len 21]
    if arg2 + collateral[address(arg1)].field_0 < collateral[address(arg1)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    collateral[address(arg1)].field_0 += arg2
    emit CollBalanceUpdated((arg2 + collateral[address(arg1)].field_0), arg1);
}

function setAddresses(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    if uint8(stor0.field_8):
        collTokenAddress = arg1
        borrowerOperationsAddress = arg2
        troveManagerAddress = arg3
        activePoolAddress = arg4
        emit 0x8adeca1d: arg1
        emit BorrowerOperationsAddressChanged(arg2);
        emit TroveManagerAddressChanged(arg3);
        emit ActivePoolAddressChanged(arg4);
    else:
        if ext_code.size(this.address):
            if initialized:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x6c496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            collTokenAddress = arg1
            borrowerOperationsAddress = arg2
            troveManagerAddress = arg3
            activePoolAddress = arg4
            emit 0x8adeca1d: arg1
            emit BorrowerOperationsAddressChanged(arg2);
            emit TroveManagerAddressChanged(arg3);
            emit ActivePoolAddressChanged(arg4);
        else:
            initialized = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            collTokenAddress = arg1
            borrowerOperationsAddress = arg2
            troveManagerAddress = arg3
            activePoolAddress = arg4
            emit 0x8adeca1d: arg1
            emit BorrowerOperationsAddressChanged(arg2);
            emit TroveManagerAddressChanged(arg3);
            emit ActivePoolAddressChanged(arg4);
            uint8(stor0.field_8) = 0
}

function claimColl(address arg1) {
    require calldata.size - 4 >= 32
    if borrowerOperationsAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x64436f6c6c537572706c7573506f6f6c3a2043616c6c6572206973206e6f7420426f72726f776572204f7065726174696f6e,
                    mem[214 len 14]
    if not collateral[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0xfe436f6c6c537572706c7573506f6f6c3a204e6f20636f6c6c61746572616c20617661696c61626c6520746f20636c6169,
                    mem[213 len 15]
    collateral[address(arg1)].field_0 = 0
    emit CollBalanceUpdated(0, arg1);
    if collateral[address(arg1)].field_0 > ETH:
        revert with 0, 'SafeMath: subtraction overflow'
    ETH -= collateral[address(arg1)].field_0
    emit EtherSent(address(arg1), collateral[address(arg1)].field_0);
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == collTokenAddress:
        call arg1 with:
           value collateral[address(arg1)].field_0 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, '!safeTransferETH'
    else:
        mem[260 len 64] = transfer(address arg1, uint256 arg2), address(arg1) << 64, 0, collateral[address(arg1)].field_32
        call collTokenAddress with:
             gas gas_remaining wei
            args collateral[address(arg1)].field_0, mem[324 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, '!safeTransfer'
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, '!safeTransfer'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, '!safeTransfer'
}



}
