contract main {




// =====================  Runtime code  =====================


address controllerAddress;
uint256 stor1;
mapping of struct feeStates;

function feeStates(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return feeStates[arg1].field_0, feeStates[arg1].field_256, feeStates[arg1].field_512, feeStates[arg1].field_768
}

function controller() payable {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function removeModule() payable {
    feeStates[msg.sender].field_0 = 0
    feeStates[msg.sender].field_256 = 0
    feeStates[msg.sender].field_512 = 0
    feeStates[msg.sender].field_768 = 0
}

function getFee(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if feeStates[address(arg1)].field_768 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if not block.timestamp - feeStates[address(arg1)].field_768:
        return 0
    if (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / block.timestamp - feeStates[address(arg1)].field_768 != feeStates[address(arg1)].field_512:
        revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return ((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600)
}

function updateFeeRecipient(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.0x481c6a75 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Must be the Domani manager'
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xe5ef0088 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    require ext_code.size(arg1)
    staticcall arg1.isInitializedModule(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Fee Recipient must be non-zero address.'
    feeStates[address(arg1)].field_0 = arg2
    emit FeeRecipientUpdated(arg2, arg1);
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require calldata.size - 36 >= 128
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.0x481c6a75 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Must be the Domani manager'
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xe5ef0088 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 33, 0x694d75737420626520636f6e74726f6c6c65722d656e61626c656420446f6d616e, mem[325 len 31]
    require ext_code.size(arg1)
    staticcall arg1.isPendingModule(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Must be pending initialization'
    if not arg2:
        revert with 0, 'Fee Recipient must be non-zero address.'
    if arg3 >= 10^18:
        revert with 0, 'Max fee must be < 100%.'
    if arg4 > arg3:
        revert with 0, 'Fee must be <= max.'
    feeStates[address(arg1)].field_0 = arg2
    feeStates[address(arg1)].field_256 = arg3
    feeStates[address(arg1)].field_512 = arg4
    feeStates[address(arg1)].field_768 = block.timestamp
    require ext_code.size(arg1)
    call arg1.initializeModule() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function accrueFee(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xe5ef0088 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    require ext_code.size(arg1)
    staticcall arg1.isInitializedModule(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    if feeStates[address(arg1)].field_512 <= 0:
        feeStates[address(arg1)].field_768 = block.timestamp
        emit FeeActualized(address arg1, uint256 arg2, uint256 arg3):
                           0,
                           arg1,
    else:
        if feeStates[address(arg1)].field_768 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - feeStates[address(arg1)].field_768:
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(controllerAddress)
            staticcall controllerAddress.0x46904840 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(controllerAddress)
            staticcall controllerAddress.0x792aa04f with:
                    gas gas_remaining wei
                   args address(this.address), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            call arg1.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args feeStates[address(arg1)].field_0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg1)
            staticcall arg1.positionMultiplier() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(arg1)
                call arg1.editPositionMultiplier(int256 arg1) with:
                     gas gas_remaining wei
                    args 0
            else:
                require ext_call.return_data[0]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 
                                32,
                                39,
                                0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(6 * ceil32(return_data.size)) + 651 len 25]
                require ext_code.size(arg1)
                call arg1.editPositionMultiplier(int256 arg1) with:
                     gas gas_remaining wei
                    args (10^18 * ext_call.return_data[0] / 10^18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            feeStates[address(arg1)].field_768 = block.timestamp
            emit FeeActualized(address arg1, uint256 arg2, uint256 arg3):
                               0,
                               arg1,
        else:
            if (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / block.timestamp - feeStates[address(arg1)].field_768 != feeStates[address(arg1)].field_512:
                revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600:
                if (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 > 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(controllerAddress)
                staticcall controllerAddress.0x46904840 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(controllerAddress)
                staticcall controllerAddress.0x792aa04f with:
                        gas gas_remaining wei
                       args address(this.address), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18:
                    if 0 > 0 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(arg1)
                    call arg1.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args feeStates[address(arg1)].field_0, 0 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    staticcall arg1.positionMultiplier() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 >= 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7753616665436173743a2076616c756520646f65736e27742066697420696e20616e20696e743235,
                                    mem[(6 * ceil32(return_data.size)) + 652 len 24]
                    if not ext_call.return_data[0]:
                        require ext_code.size(arg1)
                        call arg1.editPositionMultiplier(int256 arg1) with:
                             gas gas_remaining wei
                            args 0
                    else:
                        if -1 == ext_call.return_data[0]:
                            if -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            39,
                                            0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(6 * ceil32(return_data.size)) + 651 len 25]
                        require ext_call.return_data[0]
                        if (10^18 * ext_call.return_data[0]) - ((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 * ext_call.return_data[0]) / ext_call.return_data[0] != -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18:
                            revert with 0, 
                                        32,
                                        39,
                                        0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(6 * ceil32(return_data.size)) + 651 len 25]
                        require ext_code.size(arg1)
                        call arg1.editPositionMultiplier(int256 arg1) with:
                             gas gas_remaining wei
                            args ((10^18 * ext_call.return_data[0]) - ((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 * ext_call.return_data[0]) / 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    feeStates[address(arg1)].field_768 = block.timestamp
                    emit FeeActualized(0 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18, 0, arg1);
                else:
                    if ext_call.return_data[0] * 0 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 / 0 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(4 * ceil32(return_data.size)) + 453 len 31]
                    if ext_call.return_data[0] * 0 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 / 10^18 > 0 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(arg1)
                    call arg1.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args feeStates[address(arg1)].field_0, (0 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18) - (ext_call.return_data[0] * 0 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 / 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    if ext_call.return_data[0] * 0 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 / 10^18 > 0:
                        call arg1.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0] * 0 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    staticcall arg1.positionMultiplier() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 >= 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7753616665436173743a2076616c756520646f65736e27742066697420696e20616e20696e743235,
                                    mem[(6 * ceil32(return_data.size)) + 652 len 24]
                    if not ext_call.return_data[0]:
                        require ext_code.size(arg1)
                        call arg1.editPositionMultiplier(int256 arg1) with:
                             gas gas_remaining wei
                            args 0
                    else:
                        if -1 == ext_call.return_data[0]:
                            if -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            39,
                                            0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(6 * ceil32(return_data.size)) + 651 len 25]
                        require ext_call.return_data[0]
                        if (10^18 * ext_call.return_data[0]) - ((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 * ext_call.return_data[0]) / ext_call.return_data[0] != -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18:
                            revert with 0, 
                                        32,
                                        39,
                                        0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(6 * ceil32(return_data.size)) + 651 len 25]
                        require ext_code.size(arg1)
                        call arg1.editPositionMultiplier(int256 arg1) with:
                             gas gas_remaining wei
                            args ((10^18 * ext_call.return_data[0]) - ((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 * ext_call.return_data[0]) / 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    feeStates[address(arg1)].field_768 = block.timestamp
                    emit FeeActualized((0 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18) - (ext_call.return_data[0] * 0 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 / 10^18), ext_call.return_data[0] * 0 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 / 10^18, arg1);
            else:
                if ext_call.return_data[0] * (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 / (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 325 len 31]
                if (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 > 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(controllerAddress)
                staticcall controllerAddress.0x46904840 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(controllerAddress)
                staticcall controllerAddress.0x792aa04f with:
                        gas gas_remaining wei
                       args address(this.address), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0] * (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18:
                    if 0 > ext_call.return_data[0] * (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(arg1)
                    call arg1.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args feeStates[address(arg1)].field_0, ext_call.return_data[0] * (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    staticcall arg1.positionMultiplier() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 >= 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7753616665436173743a2076616c756520646f65736e27742066697420696e20616e20696e743235,
                                    mem[(6 * ceil32(return_data.size)) + 652 len 24]
                    if not ext_call.return_data[0]:
                        require ext_code.size(arg1)
                        call arg1.editPositionMultiplier(int256 arg1) with:
                             gas gas_remaining wei
                            args 0
                    else:
                        if -1 == ext_call.return_data[0]:
                            if -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            39,
                                            0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(6 * ceil32(return_data.size)) + 651 len 25]
                        require ext_call.return_data[0]
                        if (10^18 * ext_call.return_data[0]) - ((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 * ext_call.return_data[0]) / ext_call.return_data[0] != -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18:
                            revert with 0, 
                                        32,
                                        39,
                                        0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(6 * ceil32(return_data.size)) + 651 len 25]
                        require ext_code.size(arg1)
                        call arg1.editPositionMultiplier(int256 arg1) with:
                             gas gas_remaining wei
                            args ((10^18 * ext_call.return_data[0]) - ((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 * ext_call.return_data[0]) / 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    feeStates[address(arg1)].field_768 = block.timestamp
                    emit FeeActualized(ext_call.return_data[0] * (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18, 0, arg1);
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] * (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 / ext_call.return_data[0] * (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(4 * ceil32(return_data.size)) + 453 len 31]
                    if ext_call.return_data[0] * ext_call.return_data[0] * (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 / 10^18 > ext_call.return_data[0] * (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(arg1)
                    call arg1.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args feeStates[address(arg1)].field_0, (ext_call.return_data[0] * (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] * (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 / 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    if ext_call.return_data[0] * ext_call.return_data[0] * (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 / 10^18 > 0:
                        call arg1.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0] * ext_call.return_data[0] * (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    staticcall arg1.positionMultiplier() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 >= 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7753616665436173743a2076616c756520646f65736e27742066697420696e20616e20696e743235,
                                    mem[(6 * ceil32(return_data.size)) + 652 len 24]
                    if not ext_call.return_data[0]:
                        require ext_code.size(arg1)
                        call arg1.editPositionMultiplier(int256 arg1) with:
                             gas gas_remaining wei
                            args 0
                    else:
                        if -1 == ext_call.return_data[0]:
                            if -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            39,
                                            0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(6 * ceil32(return_data.size)) + 651 len 25]
                        require ext_call.return_data[0]
                        if (10^18 * ext_call.return_data[0]) - ((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 * ext_call.return_data[0]) / ext_call.return_data[0] != -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18:
                            revert with 0, 
                                        32,
                                        39,
                                        0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(6 * ceil32(return_data.size)) + 651 len 25]
                        require ext_code.size(arg1)
                        call arg1.editPositionMultiplier(int256 arg1) with:
                             gas gas_remaining wei
                            args ((10^18 * ext_call.return_data[0]) - ((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 * ext_call.return_data[0]) / 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    feeStates[address(arg1)].field_768 = block.timestamp
                    emit FeeActualized((ext_call.return_data[0] * (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] * (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 / 10^18), ext_call.return_data[0] * ext_call.return_data[0] * (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 / 10^18, arg1);
    stor1 = 1
}

function updateStreamingFee(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x481c6a75 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Must be the Domani manager'
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xe5ef0088 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    require ext_code.size(arg1)
    staticcall arg1.isInitializedModule(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    if arg2 >= feeStates[address(arg1)].field_256:
        revert with 0, 'Fee must be less than max'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(controllerAddress)
    staticcall controllerAddress.0xe5ef0088 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    require ext_code.size(arg1)
    staticcall arg1.isInitializedModule(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4d75737420626520612076616c696420616e6420696e697469616c697a656420446f6d616e,
                    mem[202 len 26]
    if feeStates[address(arg1)].field_512 <= 0:
        feeStates[address(arg1)].field_768 = block.timestamp
        emit FeeActualized(address arg1, uint256 arg2, uint256 arg3):
                           0,
                           arg1,
    else:
        if feeStates[address(arg1)].field_768 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - feeStates[address(arg1)].field_768:
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(controllerAddress)
            staticcall controllerAddress.0x46904840 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(controllerAddress)
            staticcall controllerAddress.0x792aa04f with:
                    gas gas_remaining wei
                   args address(this.address), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            call arg1.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args feeStates[address(arg1)].field_0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg1)
            staticcall arg1.positionMultiplier() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(arg1)
                call arg1.editPositionMultiplier(int256 arg1) with:
                     gas gas_remaining wei
                    args 0
            else:
                require ext_call.return_data[0]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 
                                32,
                                39,
                                0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(6 * ceil32(return_data.size)) + 651 len 25]
                require ext_code.size(arg1)
                call arg1.editPositionMultiplier(int256 arg1) with:
                     gas gas_remaining wei
                    args (10^18 * ext_call.return_data[0] / 10^18)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            feeStates[address(arg1)].field_768 = block.timestamp
            emit FeeActualized(address arg1, uint256 arg2, uint256 arg3):
                               0,
                               arg1,
        else:
            if (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / block.timestamp - feeStates[address(arg1)].field_768 != feeStates[address(arg1)].field_512:
                revert with 0, 32, 33, 0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600:
                if (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 > 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(controllerAddress)
                staticcall controllerAddress.0x46904840 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(controllerAddress)
                staticcall controllerAddress.0x792aa04f with:
                        gas gas_remaining wei
                       args address(this.address), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not 0 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18:
                    if 0 > 0 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(arg1)
                    call arg1.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args feeStates[address(arg1)].field_0, 0 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    staticcall arg1.positionMultiplier() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 >= 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7753616665436173743a2076616c756520646f65736e27742066697420696e20616e20696e743235,
                                    mem[(6 * ceil32(return_data.size)) + 652 len 24]
                    if not ext_call.return_data[0]:
                        require ext_code.size(arg1)
                        call arg1.editPositionMultiplier(int256 arg1) with:
                             gas gas_remaining wei
                            args 0
                    else:
                        if -1 == ext_call.return_data[0]:
                            if -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            39,
                                            0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(6 * ceil32(return_data.size)) + 651 len 25]
                        require ext_call.return_data[0]
                        if (10^18 * ext_call.return_data[0]) - ((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 * ext_call.return_data[0]) / ext_call.return_data[0] != -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18:
                            revert with 0, 
                                        32,
                                        39,
                                        0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(6 * ceil32(return_data.size)) + 651 len 25]
                        require ext_code.size(arg1)
                        call arg1.editPositionMultiplier(int256 arg1) with:
                             gas gas_remaining wei
                            args ((10^18 * ext_call.return_data[0]) - ((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 * ext_call.return_data[0]) / 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    feeStates[address(arg1)].field_768 = block.timestamp
                    emit FeeActualized(0 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18, 0, arg1);
                else:
                    if ext_call.return_data[0] * 0 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 / 0 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(4 * ceil32(return_data.size)) + 453 len 31]
                    if ext_call.return_data[0] * 0 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 / 10^18 > 0 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(arg1)
                    call arg1.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args feeStates[address(arg1)].field_0, (0 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18) - (ext_call.return_data[0] * 0 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 / 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    if ext_call.return_data[0] * 0 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 / 10^18 > 0:
                        call arg1.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0] * 0 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    staticcall arg1.positionMultiplier() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 >= 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7753616665436173743a2076616c756520646f65736e27742066697420696e20616e20696e743235,
                                    mem[(6 * ceil32(return_data.size)) + 652 len 24]
                    if not ext_call.return_data[0]:
                        require ext_code.size(arg1)
                        call arg1.editPositionMultiplier(int256 arg1) with:
                             gas gas_remaining wei
                            args 0
                    else:
                        if -1 == ext_call.return_data[0]:
                            if -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            39,
                                            0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(6 * ceil32(return_data.size)) + 651 len 25]
                        require ext_call.return_data[0]
                        if (10^18 * ext_call.return_data[0]) - ((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 * ext_call.return_data[0]) / ext_call.return_data[0] != -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18:
                            revert with 0, 
                                        32,
                                        39,
                                        0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(6 * ceil32(return_data.size)) + 651 len 25]
                        require ext_code.size(arg1)
                        call arg1.editPositionMultiplier(int256 arg1) with:
                             gas gas_remaining wei
                            args ((10^18 * ext_call.return_data[0]) - ((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 * ext_call.return_data[0]) / 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    feeStates[address(arg1)].field_768 = block.timestamp
                    emit FeeActualized((0 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18) - (ext_call.return_data[0] * 0 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 / 10^18), ext_call.return_data[0] * 0 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 / 10^18, arg1);
            else:
                if ext_call.return_data[0] * (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 / (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 325 len 31]
                if (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 > 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18:
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(controllerAddress)
                staticcall controllerAddress.0x46904840 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(controllerAddress)
                staticcall controllerAddress.0x792aa04f with:
                        gas gas_remaining wei
                       args address(this.address), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0] * (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18:
                    if 0 > ext_call.return_data[0] * (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(arg1)
                    call arg1.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args feeStates[address(arg1)].field_0, ext_call.return_data[0] * (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    staticcall arg1.positionMultiplier() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 >= 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7753616665436173743a2076616c756520646f65736e27742066697420696e20616e20696e743235,
                                    mem[(6 * ceil32(return_data.size)) + 652 len 24]
                    if not ext_call.return_data[0]:
                        require ext_code.size(arg1)
                        call arg1.editPositionMultiplier(int256 arg1) with:
                             gas gas_remaining wei
                            args 0
                    else:
                        if -1 == ext_call.return_data[0]:
                            if -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            39,
                                            0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(6 * ceil32(return_data.size)) + 651 len 25]
                        require ext_call.return_data[0]
                        if (10^18 * ext_call.return_data[0]) - ((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 * ext_call.return_data[0]) / ext_call.return_data[0] != -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18:
                            revert with 0, 
                                        32,
                                        39,
                                        0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(6 * ceil32(return_data.size)) + 651 len 25]
                        require ext_code.size(arg1)
                        call arg1.editPositionMultiplier(int256 arg1) with:
                             gas gas_remaining wei
                            args ((10^18 * ext_call.return_data[0]) - ((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 * ext_call.return_data[0]) / 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    feeStates[address(arg1)].field_768 = block.timestamp
                    emit FeeActualized(ext_call.return_data[0] * (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18, 0, arg1);
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] * (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 / ext_call.return_data[0] * (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(4 * ceil32(return_data.size)) + 453 len 31]
                    if ext_call.return_data[0] * ext_call.return_data[0] * (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 / 10^18 > ext_call.return_data[0] * (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(arg1)
                    call arg1.mint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args feeStates[address(arg1)].field_0, (ext_call.return_data[0] * (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] * (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 / 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(arg1)
                    if ext_call.return_data[0] * ext_call.return_data[0] * (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 / 10^18 > 0:
                        call arg1.mint(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), ext_call.return_data[0] * ext_call.return_data[0] * (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    staticcall arg1.positionMultiplier() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 > 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 >= 0x8000000000000000000000000000000000000000000000000000000000000000:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7753616665436173743a2076616c756520646f65736e27742066697420696e20616e20696e743235,
                                    mem[(6 * ceil32(return_data.size)) + 652 len 24]
                    if not ext_call.return_data[0]:
                        require ext_code.size(arg1)
                        call arg1.editPositionMultiplier(int256 arg1) with:
                             gas gas_remaining wei
                            args 0
                    else:
                        if -1 == ext_call.return_data[0]:
                            if -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 
                                            32,
                                            39,
                                            0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(6 * ceil32(return_data.size)) + 651 len 25]
                        require ext_call.return_data[0]
                        if (10^18 * ext_call.return_data[0]) - ((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 * ext_call.return_data[0]) / ext_call.return_data[0] != -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18:
                            revert with 0, 
                                        32,
                                        39,
                                        0x775369676e6564536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(6 * ceil32(return_data.size)) + 651 len 25]
                        require ext_code.size(arg1)
                        call arg1.editPositionMultiplier(int256 arg1) with:
                             gas gas_remaining wei
                            args ((10^18 * ext_call.return_data[0]) - ((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 * ext_call.return_data[0]) / 10^18)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    feeStates[address(arg1)].field_768 = block.timestamp
                    emit FeeActualized((ext_call.return_data[0] * (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18) - (ext_call.return_data[0] * ext_call.return_data[0] * (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 / 10^18), ext_call.return_data[0] * ext_call.return_data[0] * (block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600 / -((block.timestamp * feeStates[address(arg1)].field_512) - (feeStates[address(arg1)].field_768 * feeStates[address(arg1)].field_512) / 8766 * 3600) + 10^18 / 10^18, arg1);
    stor1 = 1
    feeStates[address(arg1)].field_512 = arg2
    emit StreamingFeeUpdated(arg2, arg1);
}



}
