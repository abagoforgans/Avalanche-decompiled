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
address stabilityPoolAddress;
address defaultPoolAddress;
address sub_2a9043ecAddress;
uint256 ETH;
uint256 lUSDDebt;

function stabilityPoolAddress() {
    return stabilityPoolAddress
}

function getETH() {
    return ETH
}

function initialized() {
    return bool(initialized)
}

function sub_2a9043ec(?) {
    return sub_2a9043ecAddress
}

function collTokenAddress() {
    return collTokenAddress
}

function troveManagerAddress() {
    return troveManagerAddress
}

function getLUSDDebt() {
    return lUSDDebt
}

function defaultPoolAddress() {
    return defaultPoolAddress
}

function borrowerOperationsAddress() {
    return borrowerOperationsAddress
}

function _fallback() payable {
    revert
}

function increaseColl(uint256 arg1) {
    require calldata.size - 4 >= 32
    if borrowerOperationsAddress != msg.sender:
        if defaultPoolAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        49,
                        0x6c416374697665506f6f6c3a2043616c6c6572206973206e65697468657220424f206e6f722044656661756c7420506f6f,
                        mem[213 len 15]
    if arg1 + ETH < ETH:
        revert with 0, 'SafeMath: addition overflow'
    ETH += arg1
    emit ActivePoolETHBalanceUpdated((arg1 + ETH));
}

function increaseLUSDDebt(uint256 arg1) {
    require calldata.size - 4 >= 32
    if borrowerOperationsAddress != msg.sender:
        if troveManagerAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        65,
                        0xfe416374697665506f6f6c3a2043616c6c6572206973206e65697468657220426f72726f7765724f7065726174696f6e73206e6f722054726f76654d616e616765,
                        mem[229 len 31]
    if arg1 + lUSDDebt < lUSDDebt:
        revert with 0, 'SafeMath: addition overflow'
    lUSDDebt += arg1
    emit ActivePoolLUSDDebtUpdated((arg1 + lUSDDebt));
}

function decreaseLUSDDebt(uint256 arg1) {
    require calldata.size - 4 >= 32
    if borrowerOperationsAddress != msg.sender:
        if troveManagerAddress != msg.sender:
            if stabilityPoolAddress != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            83,
                            0x64416374697665506f6f6c3a2043616c6c6572206973206e65697468657220426f72726f7765724f7065726174696f6e73206e6f722054726f76654d616e61676572206e6f722053746162696c697479506f6f,
                            mem[247 len 13]
    if arg1 > lUSDDebt:
        revert with 0, 'SafeMath: subtraction overflow'
    lUSDDebt -= arg1
    emit ActivePoolLUSDDebtUpdated((lUSDDebt - arg1));
}

function setAddresses(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6) {
    require calldata.size - 4 >= 192
    if uint8(stor0.field_8):
        collTokenAddress = arg1
        borrowerOperationsAddress = arg2
        troveManagerAddress = arg3
        stabilityPoolAddress = arg4
        defaultPoolAddress = arg5
        sub_2a9043ecAddress = arg6
        emit 0x8adeca1d: arg1
        emit BorrowerOperationsAddressChanged(arg2);
        emit TroveManagerAddressChanged(arg3);
        emit StabilityPoolAddressChanged(arg4);
        emit DefaultPoolAddressChanged(arg5);
        emit CollSurplusPoolAddressChanged(arg6);
    else:
        if ext_code.size(this.address):
            if initialized:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x72496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            collTokenAddress = arg1
            borrowerOperationsAddress = arg2
            troveManagerAddress = arg3
            stabilityPoolAddress = arg4
            defaultPoolAddress = arg5
            sub_2a9043ecAddress = arg6
            emit 0x8adeca1d: arg1
            emit BorrowerOperationsAddressChanged(arg2);
            emit TroveManagerAddressChanged(arg3);
            emit StabilityPoolAddressChanged(arg4);
            emit DefaultPoolAddressChanged(arg5);
            emit CollSurplusPoolAddressChanged(arg6);
        else:
            initialized = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            collTokenAddress = arg1
            borrowerOperationsAddress = arg2
            troveManagerAddress = arg3
            stabilityPoolAddress = arg4
            defaultPoolAddress = arg5
            sub_2a9043ecAddress = arg6
            emit 0x8adeca1d: arg1
            emit BorrowerOperationsAddressChanged(arg2);
            emit TroveManagerAddressChanged(arg3);
            emit StabilityPoolAddressChanged(arg4);
            emit DefaultPoolAddressChanged(arg5);
            emit CollSurplusPoolAddressChanged(arg6);
            uint8(stor0.field_8) = 0
}

function sendETH(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if borrowerOperationsAddress != msg.sender:
        if troveManagerAddress != msg.sender:
            if stabilityPoolAddress != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            83,
                            0x64416374697665506f6f6c3a2043616c6c6572206973206e65697468657220426f72726f7765724f7065726174696f6e73206e6f722054726f76654d616e61676572206e6f722053746162696c697479506f6f,
                            mem[247 len 13]
    if arg2 > ETH:
        revert with 0, 'SafeMath: subtraction overflow'
    ETH -= arg2
    emit ActivePoolETHBalanceUpdated((ETH - arg2));
    emit EtherSent(address(arg1), arg2);
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == collTokenAddress:
        call arg1 with:
           value arg2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, '!safeTransferETH'
    else:
        mem[260 len 64] = transfer(address rg1, uint256 rg2), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
        call collTokenAddress with:
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 224, mem[324 len 4]
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
        if stabilityPoolAddress == arg1:
            require ext_code.size(arg1)
            call arg1.0x97d8a630 with:
                 gas gas_remaining wei
                args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if defaultPoolAddress == arg1:
                require ext_code.size(arg1)
                call arg1.0x97d8a630 with:
                     gas gas_remaining wei
                    args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if sub_2a9043ecAddress == arg1:
                    require ext_code.size(arg1)
                    call arg1.0x97d8a630 with:
                         gas gas_remaining wei
                        args arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}



}
