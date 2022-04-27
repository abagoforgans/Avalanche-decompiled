contract main {




// =====================  Runtime code  =====================


const sub_4fa8e0d0(?) = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee

const NAME = ''


uint8 initialized;
uint8 stor0; offset 8
address collTokenAddress; offset 16
uint256 stor0; offset 8
address troveManagerAddress;
uint32 stor2;
address activePoolAddress;
uint256 stor2;
uint256 ETH;
uint256 lUSDDebt;

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

function getLUSDDebt() {
    return lUSDDebt
}

function activePoolAddress() {
    return address(activePoolAddress)
}

function _fallback() payable {
    revert
}

function increaseColl(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(activePoolAddress) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe44656661756c74506f6f6c3a2043616c6c6572206973206e6f742074686520416374697665506f6f,
                    mem[205 len 23]
    if arg1 + ETH < ETH:
        revert with 0, 'SafeMath: addition overflow'
    ETH += arg1
    emit DefaultPoolETHBalanceUpdated((arg1 + ETH));
}

function decreaseLUSDDebt(uint256 arg1) {
    require calldata.size - 4 >= 32
    if troveManagerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x6444656661756c74506f6f6c3a2043616c6c6572206973206e6f74207468652054726f76654d616e616765,
                    mem[207 len 21]
    if arg1 > lUSDDebt:
        revert with 0, 'SafeMath: subtraction overflow'
    lUSDDebt -= arg1
    emit DefaultPoolLUSDDebtUpdated((lUSDDebt - arg1));
}

function increaseLUSDDebt(uint256 arg1) {
    require calldata.size - 4 >= 32
    if troveManagerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x6444656661756c74506f6f6c3a2043616c6c6572206973206e6f74207468652054726f76654d616e616765,
                    mem[207 len 21]
    if arg1 + lUSDDebt < lUSDDebt:
        revert with 0, 'SafeMath: addition overflow'
    lUSDDebt += arg1
    emit DefaultPoolLUSDDebtUpdated((arg1 + lUSDDebt));
}

function setAddresses(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    if uint8(stor0.field_8):
        collTokenAddress = arg1
        troveManagerAddress = arg2
        address(activePoolAddress) = arg3
        emit 0x8adeca1d: arg1
        emit TroveManagerAddressChanged(arg2);
        emit ActivePoolAddressChanged(arg3);
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
            troveManagerAddress = arg2
            address(activePoolAddress) = arg3
            emit 0x8adeca1d: arg1
            emit TroveManagerAddressChanged(arg2);
            emit ActivePoolAddressChanged(arg3);
        else:
            initialized = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            collTokenAddress = arg1
            troveManagerAddress = arg2
            address(activePoolAddress) = arg3
            emit 0x8adeca1d: arg1
            emit TroveManagerAddressChanged(arg2);
            emit ActivePoolAddressChanged(arg3);
            uint8(stor0.field_8) = 0
}

function sendETHToActivePool(uint256 arg1) {
    require calldata.size - 4 >= 32
    if troveManagerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x6444656661756c74506f6f6c3a2043616c6c6572206973206e6f74207468652054726f76654d616e616765,
                    mem[207 len 21]
    if arg1 > ETH:
        revert with 0, 'SafeMath: subtraction overflow'
    ETH -= arg1
    emit DefaultPoolETHBalanceUpdated((ETH - arg1));
    emit EtherSent(address(activePoolAddress), arg1);
    if 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == collTokenAddress:
        call address(activePoolAddress) with:
           value arg1 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, '!safeTransferETH'
    else:
        mem[260 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, arg1) >> 32
        call collTokenAddress with:
           funct uint32(stor2)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[324 len 4]
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
        require ext_code.size(address(activePoolAddress))
        call address(activePoolAddress).0x97d8a630 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    ('bool', 'ext_call.success')
}



}
