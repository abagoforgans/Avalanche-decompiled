contract main {




// =====================  Runtime code  =====================


address managerAddress;
address stor1;
mapping of struct sub_7c2975d2;

function manager() payable {
    return managerAddress
}

function sub_7c2975d2(?) payable {
    require calldata.size - 4 >= 32
    return sub_7c2975d2[arg1].field_0, 
           sub_7c2975d2[arg1].field_256,
           sub_7c2975d2[arg1].field_512,
           sub_7c2975d2[arg1].field_768,
           bool(sub_7c2975d2[arg1].field_1024)
}

function _fallback() payable {
    revert
}

function renounceManagement() payable {
    if managerAddress != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipPushed(managerAddress, 0);
    managerAddress = 0
}

function pullManagement() payable {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x214f776e61626c653a206d757374206265206e6577206f776e657220746f2070756c,
                    mem[198 len 30]
    emit OwnershipPulled(managerAddress, stor1);
    managerAddress = stor1
}

function sub_5476e22a(?) payable {
    require calldata.size - 4 >= 64
    if managerAddress != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg2 < 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x73436f6e74726f6c207661726961626c65206d75737420626520657175616c206f722067726561746572207468616e203130,
                    mem[214 len 14]
    sub_7c2975d2[address(arg1)].field_768 = arg2
}

function pushManagement(address arg1) payable {
    require calldata.size - 4 >= 32
    if managerAddress != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipPushed(managerAddress, arg1);
    stor1 = arg1
}

function sub_44963815(?) payable {
    require calldata.size - 4 >= 192
    if managerAddress != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require arg1
    require arg5 >= 10
    if arg6:
        require not arg2
        require not arg3
        require not arg4
    else:
        require arg2
        require arg3
        require arg4
    sub_7c2975d2[address(arg1)].field_0 = arg2
    sub_7c2975d2[address(arg1)].field_256 = arg3
    sub_7c2975d2[address(arg1)].field_512 = arg4
    sub_7c2975d2[address(arg1)].field_768 = arg5
    sub_7c2975d2[address(arg1)].field_1024 = uint8(arg6)
}

function sub_04adfd5c(?) payable {
    require calldata.size - 4 >= 32
    if 1 == bool(sub_7c2975d2[address(arg1)].field_1024):
        return 100
    require ext_code.size(sub_7c2975d2[address(arg1)].field_256)
    staticcall sub_7c2975d2[address(arg1)].field_256.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_7c2975d2[address(arg1)].field_256)
    staticcall sub_7c2975d2[address(arg1)].field_256.0x70a08231 with:
            gas gas_remaining wei
           args sub_7c2975d2[address(arg1)].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if 10^uint8(ext_call.return_data[0]):
            require ext_code.size(sub_7c2975d2[address(arg1)].field_512)
            staticcall sub_7c2975d2[address(arg1)].field_512.0x313ce567 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(sub_7c2975d2[address(arg1)].field_512)
            staticcall sub_7c2975d2[address(arg1)].field_512.0x70a08231 with:
                    gas gas_remaining wei
                   args sub_7c2975d2[address(arg1)].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 10^uint8(ext_call.return_data[0]):
                if ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                    return (0 / 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]))
    else:
        if sub_7c2975d2[address(arg1)].field_768 * ext_call.return_data[0] / ext_call.return_data[0] != sub_7c2975d2[address(arg1)].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not sub_7c2975d2[address(arg1)].field_768 * ext_call.return_data[0]:
            if 10^uint8(ext_call.return_data[0]):
                require ext_code.size(sub_7c2975d2[address(arg1)].field_512)
                staticcall sub_7c2975d2[address(arg1)].field_512.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_7c2975d2[address(arg1)].field_512)
                staticcall sub_7c2975d2[address(arg1)].field_512.0x70a08231 with:
                        gas gas_remaining wei
                       args sub_7c2975d2[address(arg1)].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 10^uint8(ext_call.return_data[0]):
                    if ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                        return (0 / 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]))
        else:
            if 10 * sub_7c2975d2[address(arg1)].field_768 * ext_call.return_data[0] / sub_7c2975d2[address(arg1)].field_768 * ext_call.return_data[0] != 10:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 10^uint8(ext_call.return_data[0]):
                require ext_code.size(sub_7c2975d2[address(arg1)].field_512)
                staticcall sub_7c2975d2[address(arg1)].field_512.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(sub_7c2975d2[address(arg1)].field_512)
                staticcall sub_7c2975d2[address(arg1)].field_512.0x70a08231 with:
                        gas gas_remaining wei
                       args sub_7c2975d2[address(arg1)].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 10^uint8(ext_call.return_data[0]):
                    if ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]):
                        return (10 * sub_7c2975d2[address(arg1)].field_768 * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]) / ext_call.return_data[0] / 10^uint8(ext_call.return_data[0]))
    revert
}



}
