contract main {




// =====================  Runtime code  =====================


#
#  - sub_03e1ebd1(?)
#  - sub_2570189c(?)
#
const REVISION = 208


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address sub_5491cd67Address;
address pairFactoryAddress;
address swapRouterAddress;
address swapFactoryAddress;
uint32 stor55;
address stor55;
uint32 stor56;
address WETHAddress;
uint32 stor57;
address stor57;

function sub_5491cd67(?) {
    return sub_5491cd67Address
}

function swapFactory() {
    return swapFactoryAddress
}

function WETH() {
    return address(WETHAddress)
}

function swapRouter() {
    return swapRouterAddress
}

function pairFactory() {
    return pairFactoryAddress
}

function _fallback() payable {
    revert
}

function unstake(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(address(stor55))
    call address(stor55).0xf21f3c08 with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_66e616cf(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(sub_5491cd67Address)
    staticcall sub_5491cd67Address.getReserve(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not address(ext_call.return_data[0]):
        revert with 0, 
                    32,
                    50,
                    0x64556e61626c6520746f2066696e64207265736572766520666f722070726f7669646564206c656e6461626c6520746f6b65, mem[ceil32(return_data.size) + 178 len 14] >> 144,
                    0
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x38e3127f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_dbcb1863(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(sub_5491cd67Address)
    staticcall sub_5491cd67Address.getReserve(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not address(ext_call.return_data[0]):
        revert with 0, 
                    32,
                    50,
                    0x64556e61626c6520746f2066696e64207265736572766520666f722070726f7669646564206c656e6461626c6520746f6b65, mem[ceil32(return_data.size) + 178 len 14] >> 144,
                    0
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x38e3127f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function incentivize(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(stor57), Mask(224, 32, arg2) >> 32
    mem[352 len 4] = uint32(arg2)
    call arg1 with:
       funct uint32(stor57)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        49,
                        0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                        mem[345 len 7],
                        uint32(arg2),
                        mem[356 len 4]
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        49,
                        0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                        mem[345 len 7],
                        uint32(arg2),
                        mem[356 len 4]
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        49,
                        0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                        mem[ceil32(return_data.size) + 346 len 15]
        if return_data.size:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 
                            32,
                            49,
                            0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                            mem[ceil32(return_data.size) + 346 len 15]
    require ext_code.size(address(stor57))
    call address(stor57).incentivize(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f1b3f4d7(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg3 == uint16(arg3)
    require arg4 == address(arg4)
    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(stor55), Mask(224, 32, arg2) >> 32
    mem[352 len 4] = uint32(arg2)
    call address(arg1) with:
       funct uint32(stor55)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        49,
                        0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                        mem[345 len 7],
                        uint32(arg2),
                        mem[356 len 4]
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        49,
                        0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                        mem[345 len 7],
                        uint32(arg2),
                        mem[356 len 4]
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        49,
                        0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                        mem[ceil32(return_data.size) + 346 len 15]
        if return_data.size:
            require return_data.size >= 32
            if not mem[260]:
                revert with 0, 
                            32,
                            49,
                            0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                            mem[ceil32(return_data.size) + 346 len 15]
    require ext_code.size(address(stor55))
    call address(stor55).0xac9e520c with:
         gas gas_remaining wei
        args address(arg4), address(arg1), uint16(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if uint8(stor0.field_8):
        sub_5491cd67Address = arg1
        pairFactoryAddress = arg2
        swapRouterAddress = arg3
        address(WETHAddress) = arg4
        address(stor55) = arg5
        address(stor57) = arg6
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x64496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            sub_5491cd67Address = arg1
            pairFactoryAddress = arg2
            swapRouterAddress = arg3
            address(WETHAddress) = arg4
            address(stor55) = arg5
            address(stor57) = arg6
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x64496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                sub_5491cd67Address = arg1
                pairFactoryAddress = arg2
                swapRouterAddress = arg3
                address(WETHAddress) = arg4
                address(stor55) = arg5
                address(stor57) = arg6
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                uint8(stor0.field_8) = 0
                sub_5491cd67Address = arg1
                pairFactoryAddress = arg2
                swapRouterAddress = arg3
                address(WETHAddress) = arg4
                address(stor55) = arg5
                address(stor57) = arg6
                uint8(stor0.field_8) = 0
}

function depositETH(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(address(WETHAddress))
    call address(WETHAddress).deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[100] = address(WETHAddress)
    require ext_code.size(sub_5491cd67Address)
    call sub_5491cd67Address.getOrCreateReserve(address arg1) with:
         gas gas_remaining wei
        args address(WETHAddress)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196 len 64] = 0, ext_call.return_data[12 len 20], Mask(224, 32, msg.value) >> 32
    call address(WETHAddress).mem[ceil32(return_data.size) + 160 len 4] with:
         gas gas_remaining wei
        args msg.value, Mask(224, 32, ext_call.return_data[12 len 20], Mask(224, 32, msg.value) >> 32) >> 32, mem[ceil32(return_data.size) + 260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        45,
                        0x775472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                        mem[ceil32(return_data.size) + 309 len 19]
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            if not uint32(stor56), mem[132 len 28]:
                revert with 0, 
                            32,
                            45,
                            0x775472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                            mem[ceil32(return_data.size) + 309 len 19]
    else:
        mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        45,
                        0x775472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 310 len 19]
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 228]:
                revert with 0, 
                            32,
                            45,
                            0x775472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 310 len 19]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).deposit(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9d200c3f(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    mem[100] = address(arg1)
    require ext_code.size(sub_5491cd67Address)
    staticcall sub_5491cd67Address.getReserve(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228 len 96] = unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], Mask(224, 32, arg2) >> 32
    mem[ceil32(return_data.size) + 352 len 4] = uint32(arg2)
    call address(arg1).mem[ceil32(return_data.size) + 192 len 4] with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[ceil32(return_data.size) + 324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        49,
                        0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                        mem[ceil32(return_data.size) + 345 len 7],
                        uint32(arg2),
                        mem[ceil32(return_data.size) + 356 len 4]
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            if not 0, mem[132 len 28]:
                revert with 0, 
                            32,
                            49,
                            0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                            mem[ceil32(return_data.size) + 345 len 7],
                            uint32(arg2),
                            mem[ceil32(return_data.size) + 356 len 4]
    else:
        mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        49,
                        0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 346 len 15]
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 260]:
                revert with 0, 
                            32,
                            49,
                            0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 346 len 15]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).fill() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0787ec64(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    mem[100] = address(arg1)
    require ext_code.size(sub_5491cd67Address)
    call sub_5491cd67Address.0x7bf8c2fb with:
         gas gas_remaining wei
        args address(arg1)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228 len 96] = unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], Mask(224, 32, arg2) >> 32
    mem[ceil32(return_data.size) + 352 len 4] = uint32(arg2)
    call address(arg1).mem[ceil32(return_data.size) + 192 len 4] with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[ceil32(return_data.size) + 324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        49,
                        0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                        mem[ceil32(return_data.size) + 345 len 7],
                        uint32(arg2),
                        mem[ceil32(return_data.size) + 356 len 4]
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            if not 0, mem[132 len 28]:
                revert with 0, 
                            32,
                            49,
                            0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                            mem[ceil32(return_data.size) + 345 len 7],
                            uint32(arg2),
                            mem[ceil32(return_data.size) + 356 len 4]
    else:
        mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        49,
                        0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 346 len 15]
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 260]:
                revert with 0, 
                            32,
                            49,
                            0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 346 len 15]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).deposit(address arg1) with:
         gas gas_remaining wei
        args address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deposit(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    mem[100] = arg1
    require ext_code.size(sub_5491cd67Address)
    call sub_5491cd67Address.getOrCreateReserve(address arg1) with:
         gas gas_remaining wei
        args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228 len 96] = unknown_0x23b872dd(?????), msg.sender, ext_call.return_data[12 len 20], Mask(224, 32, arg2) >> 32
    mem[ceil32(return_data.size) + 352 len 4] = uint32(arg2)
    call arg1.mem[ceil32(return_data.size) + 192 len 4] with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[ceil32(return_data.size) + 324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 
                        32,
                        49,
                        0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                        mem[ceil32(return_data.size) + 345 len 7],
                        uint32(arg2),
                        mem[ceil32(return_data.size) + 356 len 4]
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            if not 0, mem[132 len 28]:
                revert with 0, 
                            32,
                            49,
                            0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                            mem[ceil32(return_data.size) + 345 len 7],
                            uint32(arg2),
                            mem[ceil32(return_data.size) + 356 len 4]
    else:
        mem[ceil32(return_data.size) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 
                        32,
                        49,
                        0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 346 len 15]
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(return_data.size) + 260]:
                revert with 0, 
                            32,
                            49,
                            0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 346 len 15]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).deposit(address arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_713390f5(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(pairFactoryAddress)
    staticcall pairFactoryAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg2), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(sub_5491cd67Address)
    staticcall sub_5491cd67Address.getReserve(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if not ext_call.return_data[0]:
        staticcall address(ext_call.return_data[0]).0xe831fd1d with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if bool((6 * ceil32(return_data.size)) + 1056 <= test266151307()):
            return ext_call.return_data[0], 
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   ext_call.return_data[0],
                   ext_call.return_data[32],
                   ext_call.return_data[64],
                   ext_call.return_data[96]
    else:
        staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xb9248b68 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require ext_code.size(address(ext_call.return_data[0]))
        if not ext_call.return_data[0]:
            staticcall address(ext_call.return_data[0]).0xe831fd1d with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            if bool((8 * ceil32(return_data.size)) + 1056 <= test266151307()):
                return ext_call.return_data[0], 
                       0,
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[32],
                       ext_call.return_data[64],
                       0,
                       0,
                       ext_call.return_data[0],
                       ext_call.return_data[32],
                       ext_call.return_data[64],
                       ext_call.return_data[96]
        else:
            call address(ext_call.return_data[0]).0xb516f7b1 with:
                 gas gas_remaining wei
                args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xe831fd1d with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            if bool((10 * ceil32(return_data.size)) + 1056 <= test266151307()):
                return ext_call.return_data[0], 
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[32],
                       ext_call.return_data[64],
                       ext_call.return_data[0],
                       ext_call.return_data[32],
                       ext_call.return_data[0],
                       ext_call.return_data[32],
                       ext_call.return_data[64],
                       ext_call.return_data[96]
    revert
}

function sub_e43af08e(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require ext_code.size(pairFactoryAddress)
    staticcall pairFactoryAddress.0x4dad2624 with:
            gas gas_remaining wei
           args address(arg2), address(arg3), address(arg4)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(sub_5491cd67Address)
    staticcall sub_5491cd67Address.getReserve(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if not ext_call.return_data[0]:
        staticcall address(ext_call.return_data[0]).0xe831fd1d with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if bool((6 * ceil32(return_data.size)) + 1056 <= test266151307()):
            return ext_call.return_data[0], 
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   ext_call.return_data[0],
                   ext_call.return_data[32],
                   ext_call.return_data[64],
                   ext_call.return_data[96]
    else:
        staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xb9248b68 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require ext_code.size(address(ext_call.return_data[0]))
        if not ext_call.return_data[0]:
            staticcall address(ext_call.return_data[0]).0xe831fd1d with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            if bool((8 * ceil32(return_data.size)) + 1056 <= test266151307()):
                return ext_call.return_data[0], 
                       0,
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[32],
                       ext_call.return_data[64],
                       0,
                       0,
                       ext_call.return_data[0],
                       ext_call.return_data[32],
                       ext_call.return_data[64],
                       ext_call.return_data[96]
        else:
            call address(ext_call.return_data[0]).0xb516f7b1 with:
                 gas gas_remaining wei
                args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xe831fd1d with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            if bool((10 * ceil32(return_data.size)) + 1056 <= test266151307()):
                return ext_call.return_data[0], 
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       ext_call.return_data[32],
                       ext_call.return_data[64],
                       ext_call.return_data[0],
                       ext_call.return_data[32],
                       ext_call.return_data[0],
                       ext_call.return_data[32],
                       ext_call.return_data[64],
                       ext_call.return_data[96]
    revert
}

function sub_723f864c(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(pairFactoryAddress)
    staticcall pairFactoryAddress.0x2c11db0c with:
            gas gas_remaining wei
           args address(arg2), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(sub_5491cd67Address)
    staticcall sub_5491cd67Address.getReserve(address arg1) with:
            gas gas_remaining wei
           args address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).underlyingBalanceOf(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if not ext_call.return_data[0]:
        staticcall address(ext_call.return_data[0]).0xe831fd1d with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if bool((6 * ceil32(return_data.size)) + 1056 <= test266151307()):
            return ext_call.return_data[0], 
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   ext_call.return_data[0],
                   ext_call.return_data[32],
                   ext_call.return_data[64],
                   ext_call.return_data[96]
    else:
        staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xb9248b68 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require ext_code.size(address(ext_call.return_data[0]))
        if not ext_call.return_data[0]:
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getAmountOut(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xe831fd1d with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            if bool((11 * ceil32(return_data.size)) + 1056 <= test266151307()):
                return ext_call.return_data[0], 
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       0,
                       ext_call.return_data[32],
                       ext_call.return_data[64],
                       0,
                       0,
                       ext_call.return_data[0],
                       ext_call.return_data[32],
                       ext_call.return_data[64],
                       ext_call.return_data[96]
        else:
            call address(ext_call.return_data[0]).0xb516f7b1 with:
                 gas gas_remaining wei
                args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getAmountOut(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xe831fd1d with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            if bool((12 * ceil32(return_data.size)) + 1056 <= test266151307()):
                return ext_call.return_data[0], 
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       0,
                       ext_call.return_data[32],
                       ext_call.return_data[64],
                       ext_call.return_data[0],
                       ext_call.return_data[32],
                       ext_call.return_data[0],
                       ext_call.return_data[32],
                       ext_call.return_data[64],
                       ext_call.return_data[96]
    revert
}

function sub_b25f9483(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(pairFactoryAddress)
    staticcall pairFactoryAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(sub_5491cd67Address)
    staticcall sub_5491cd67Address.getReserve(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
            gas gas_remaining wei
           args address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getDebt(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getAmountOut(uint256 arg1) with:
         gas gas_remaining wei
        args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if 0 / ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                    gas gas_remaining wei
                   args ext_call.return_data[0] - (0 / ext_call.return_data[0]), 0 / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            return ext_call.return_data[0], ext_call.return_data[0], 0 / ext_call.return_data[0], ext_call.return_data[32]
        if arg4 * ext_call.return_data[0] / ext_call.return_data[0] != arg4:
            revert with 0, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(8 * ceil32(return_data.size)) + 261 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if arg4 * ext_call.return_data[0] / ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                gas gas_remaining wei
               args ext_call.return_data[0] - (arg4 * ext_call.return_data[0] / ext_call.return_data[0]), 0 / ext_call.return_data[0]
    else:
        if arg4 * ext_call.return_data[0] / ext_call.return_data[0] != arg4:
            revert with 0, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(8 * ceil32(return_data.size)) + 197 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if 0 / ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                    gas gas_remaining wei
                   args ext_call.return_data[0] - (0 / ext_call.return_data[0]), arg4 * ext_call.return_data[0] / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            return ext_call.return_data[0], ext_call.return_data[0], 0 / ext_call.return_data[0], ext_call.return_data[32]
        if arg4 * ext_call.return_data[0] / ext_call.return_data[0] != arg4:
            revert with 0, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(8 * ceil32(return_data.size)) + 261 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if arg4 * ext_call.return_data[0] / ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                gas gas_remaining wei
               args ext_call.return_data[0] - (arg4 * ext_call.return_data[0] / ext_call.return_data[0]), arg4 * ext_call.return_data[0] / ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], 
           ext_call.return_data[0],
           arg4 * ext_call.return_data[0] / ext_call.return_data[0],
           ext_call.return_data[32]
}

function sub_bfd4e1d3(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require ext_code.size(pairFactoryAddress)
    staticcall pairFactoryAddress.0x870bd025 with:
            gas gas_remaining wei
           args address(arg2), address(arg3), address(arg4)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(sub_5491cd67Address)
    staticcall sub_5491cd67Address.getReserve(address arg1) with:
            gas gas_remaining wei
           args address(arg4)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).underlyingBalanceOf(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if not ext_call.return_data[0]:
        staticcall address(ext_call.return_data[0]).0xe831fd1d with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if bool((6 * ceil32(return_data.size)) + 1056 <= test266151307()):
            return ext_call.return_data[0], 
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   0,
                   ext_call.return_data[0],
                   ext_call.return_data[32],
                   ext_call.return_data[64],
                   ext_call.return_data[96]
    else:
        staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xb9248b68 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), address(arg1)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require ext_code.size(address(ext_call.return_data[0]))
        if not ext_call.return_data[0]:
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getAmountOut(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xe831fd1d with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            if bool((11 * ceil32(return_data.size)) + 1056 <= test266151307()):
                return ext_call.return_data[0], 
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       0,
                       ext_call.return_data[32],
                       ext_call.return_data[64],
                       0,
                       0,
                       ext_call.return_data[0],
                       ext_call.return_data[32],
                       ext_call.return_data[64],
                       ext_call.return_data[96]
        else:
            call address(ext_call.return_data[0]).0xb516f7b1 with:
                 gas gas_remaining wei
                args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getAmountOut(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xe831fd1d with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 128
            if bool((12 * ceil32(return_data.size)) + 1056 <= test266151307()):
                return ext_call.return_data[0], 
                       ext_call.return_data[0],
                       ext_call.return_data[0],
                       0,
                       ext_call.return_data[32],
                       ext_call.return_data[64],
                       ext_call.return_data[0],
                       ext_call.return_data[32],
                       ext_call.return_data[0],
                       ext_call.return_data[32],
                       ext_call.return_data[64],
                       ext_call.return_data[96]
    revert
}

function sub_8ff73ec8(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require ext_code.size(pairFactoryAddress)
    staticcall pairFactoryAddress.0x4dad2624 with:
            gas gas_remaining wei
           args address(arg1), address(arg2), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(sub_5491cd67Address)
    staticcall sub_5491cd67Address.getReserve(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(arg4)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
            gas gas_remaining wei
           args address(arg4)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getDebt(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(arg4)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getAmountOut(uint256 arg1) with:
         gas gas_remaining wei
        args arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if 0 / ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                    gas gas_remaining wei
                   args ext_call.return_data[0] - (0 / ext_call.return_data[0]), 0 / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            return ext_call.return_data[0], ext_call.return_data[0], 0 / ext_call.return_data[0], ext_call.return_data[32]
        if arg5 * ext_call.return_data[0] / ext_call.return_data[0] != arg5:
            revert with 0, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(8 * ceil32(return_data.size)) + 261 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if arg5 * ext_call.return_data[0] / ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                gas gas_remaining wei
               args ext_call.return_data[0] - (arg5 * ext_call.return_data[0] / ext_call.return_data[0]), 0 / ext_call.return_data[0]
    else:
        if arg5 * ext_call.return_data[0] / ext_call.return_data[0] != arg5:
            revert with 0, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(8 * ceil32(return_data.size)) + 197 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if 0 / ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                    gas gas_remaining wei
                   args ext_call.return_data[0] - (0 / ext_call.return_data[0]), arg5 * ext_call.return_data[0] / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            return ext_call.return_data[0], ext_call.return_data[0], 0 / ext_call.return_data[0], ext_call.return_data[32]
        if arg5 * ext_call.return_data[0] / ext_call.return_data[0] != arg5:
            revert with 0, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(8 * ceil32(return_data.size)) + 261 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if arg5 * ext_call.return_data[0] / ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                gas gas_remaining wei
               args ext_call.return_data[0] - (arg5 * ext_call.return_data[0] / ext_call.return_data[0]), arg5 * ext_call.return_data[0] / ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], 
           ext_call.return_data[0],
           arg5 * ext_call.return_data[0] / ext_call.return_data[0],
           ext_call.return_data[32]
}

function sub_1f962278(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(pairFactoryAddress)
    staticcall pairFactoryAddress.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(arg1), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(sub_5491cd67Address)
    staticcall sub_5491cd67Address.getReserve(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getBorrowLimit() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getTotalLoan() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4 <= 10000:
        return 0
    if not arg3:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xd59172f3 with:
                gas gas_remaining wei
               args arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x7e13d160 with:
                gas gas_remaining wei
               args 0, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x2f04bd56 with:
                gas gas_remaining wei
               args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xe831fd1d with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require bool((11 * ceil32(return_data.size)) + 480 <= test266151307())
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x4f6d975d with:
                gas gas_remaining wei
               args msg.sender, arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return 0, 
               0,
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[32],
               ext_call.return_data[64],
               ext_call.return_data[96]
    if not arg4 - 10000:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xd59172f3 with:
                gas gas_remaining wei
               args arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x7e13d160 with:
                gas gas_remaining wei
               args 0, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x2f04bd56 with:
                gas gas_remaining wei
               args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xe831fd1d with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require bool((11 * ceil32(return_data.size)) + 480 <= test266151307())
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x4f6d975d with:
                gas gas_remaining wei
               args msg.sender, arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return 0, 
               0,
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[32],
               ext_call.return_data[64],
               ext_call.return_data[96]
    if arg3 > -5001 / arg4 - 10000:
        revert with 0, ''
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xd59172f3 with:
            gas gas_remaining wei
           args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x7e13d160 with:
            gas gas_remaining wei
           args (-10000 * arg3) + (arg4 * arg3) + 5000 / 10000, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x2f04bd56 with:
            gas gas_remaining wei
           args ((-10000 * arg3) + (arg4 * arg3) + 5000 / 10000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xe831fd1d with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require bool((11 * ceil32(return_data.size)) + 544 <= test266151307())
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x4f6d975d with:
            gas gas_remaining wei
           args msg.sender, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0, 
           (-10000 * arg3) + (arg4 * arg3) + 5000 / 10000,
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96]
}

function sub_b39cff12(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(pairFactoryAddress)
    staticcall pairFactoryAddress.0x4dad2624 with:
            gas gas_remaining wei
           args address(arg1), address(arg2), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(sub_5491cd67Address)
    staticcall sub_5491cd67Address.getReserve(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getBorrowLimit() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getTotalLoan() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg5 <= 10000:
        return 0
    if not arg4:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xd59172f3 with:
                gas gas_remaining wei
               args arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x7e13d160 with:
                gas gas_remaining wei
               args 0, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x2f04bd56 with:
                gas gas_remaining wei
               args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xe831fd1d with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require bool((11 * ceil32(return_data.size)) + 480 <= test266151307())
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x4f6d975d with:
                gas gas_remaining wei
               args msg.sender, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return 0, 
               0,
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[32],
               ext_call.return_data[64],
               ext_call.return_data[96]
    if not arg5 - 10000:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xd59172f3 with:
                gas gas_remaining wei
               args arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x7e13d160 with:
                gas gas_remaining wei
               args 0, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x2f04bd56 with:
                gas gas_remaining wei
               args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xe831fd1d with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require bool((11 * ceil32(return_data.size)) + 480 <= test266151307())
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x4f6d975d with:
                gas gas_remaining wei
               args msg.sender, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return 0, 
               0,
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[32],
               ext_call.return_data[64],
               ext_call.return_data[96]
    if arg4 > -5001 / arg5 - 10000:
        revert with 0, ''
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xd59172f3 with:
            gas gas_remaining wei
           args arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x7e13d160 with:
            gas gas_remaining wei
           args (-10000 * arg4) + (arg5 * arg4) + 5000 / 10000, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x2f04bd56 with:
            gas gas_remaining wei
           args ((-10000 * arg4) + (arg5 * arg4) + 5000 / 10000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xe831fd1d with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require bool((11 * ceil32(return_data.size)) + 544 <= test266151307())
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x4f6d975d with:
            gas gas_remaining wei
           args msg.sender, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0, 
           (-10000 * arg4) + (arg5 * arg4) + 5000 / 10000,
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96]
}

function sub_60c40fca(?) {
    require calldata.size - 4 >= 256
    require arg8 == bool(arg8)
    require arg1 == address(arg1)
    if arg8:
        if address(arg1) != address(WETHAddress):
            revert with 0, 'Router: invalid withdraw request'
    require ext_code.size(sub_5491cd67Address)
    staticcall sub_5491cd67Address.getReserve(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not address(ext_call.return_data[0]):
        revert with 0, 
                    32,
                    50,
                    0x64556e61626c6520746f2066696e64207265736572766520666f722070726f7669646564206c656e6461626c6520746f6b65, mem[ceil32(return_data.size) + 178 len 14] >> 144,
                    0
    if arg2 != -1:
        if arg4:
            require arg5 == uint8(arg5)
            mem[ceil32(return_data.size) + 324] = uint8(arg5)
            mem[ceil32(return_data.size) + 356] = arg6
            mem[ceil32(return_data.size) + 388] = arg7
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xd505accf with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg2, arg4, arg5 << 248, arg6, arg7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(ext_call.return_data[0]), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require arg8 == bool(arg8)
        if not arg8:
            require arg3 == address(arg3)
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).withdraw(address arg1, address arg2) with:
                 gas gas_remaining wei
                args msg.sender, address(arg3)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).withdraw(address arg1, address arg2) with:
                 gas gas_remaining wei
                args msg.sender, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(WETHAddress))
            staticcall address(WETHAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(WETHAddress))
            call address(WETHAddress).0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require arg3 == address(arg3)
            call address(arg3) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                52,
                                0x645472616e7366657248656c7065723a3a736166655472616e736665724554483a20455448207472616e73666572206661696c65,
                                mem[(4 * ceil32(return_data.size)) + 344 len 12]
            else:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                52,
                                0x645472616e7366657248656c7065723a3a736166655472616e736665724554483a20455448207472616e73666572206661696c65,
                                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 345 len 12]
    else:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg4:
            require arg5 == uint8(arg5)
            mem[(2 * ceil32(return_data.size)) + 324] = uint8(arg5)
            mem[(2 * ceil32(return_data.size)) + 356] = arg6
            mem[(2 * ceil32(return_data.size)) + 388] = arg7
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xd505accf with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg2, arg4, arg5 << 248, arg6, arg7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require arg8 == bool(arg8)
        if not arg8:
            require arg3 == address(arg3)
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).withdraw(address arg1, address arg2) with:
                 gas gas_remaining wei
                args msg.sender, address(arg3)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).withdraw(address arg1, address arg2) with:
                 gas gas_remaining wei
                args msg.sender, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(WETHAddress))
            staticcall address(WETHAddress).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(WETHAddress))
            call address(WETHAddress).0x2e1a7d4d with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require arg3 == address(arg3)
            call address(arg3) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                52,
                                0x645472616e7366657248656c7065723a3a736166655472616e736665724554483a20455448207472616e73666572206661696c65,
                                mem[(6 * ceil32(return_data.size)) + 344 len 12]
            else:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                52,
                                0x645472616e7366657248656c7065723a3a736166655472616e736665724554483a20455448207472616e73666572206661696c65,
                                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 345 len 12]
    ('bool', 'ext_call.success')
}

function sub_51c7c990(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(pairFactoryAddress)
    staticcall pairFactoryAddress.0x2c11db0c with:
            gas gas_remaining wei
           args address(arg1), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(sub_5491cd67Address)
    staticcall sub_5491cd67Address.getReserve(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getBorrowLimit() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getTotalLoan() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4 >= 1000:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xb07f80a1 with:
             gas gas_remaining wei
            args arg3, arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xd59172f3 with:
                gas gas_remaining wei
               args arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x7e13d160 with:
                gas gas_remaining wei
               args ext_call.return_data[0], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x2f04bd56 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xe831fd1d with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require bool((12 * ceil32(return_data.size)) + 480 <= test266151307())
        return 0, 
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[32],
               ext_call.return_data[64],
               ext_call.return_data[96]
    if arg4 <= 10000:
        return 0
    if not arg3:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xd59172f3 with:
                gas gas_remaining wei
               args arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x7e13d160 with:
                gas gas_remaining wei
               args 0, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x2f04bd56 with:
                gas gas_remaining wei
               args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xe831fd1d with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require bool((11 * ceil32(return_data.size)) + 480 <= test266151307())
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x4f6d975d with:
                gas gas_remaining wei
               args msg.sender, arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return 0, 
               0,
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[32],
               ext_call.return_data[64],
               ext_call.return_data[96]
    if not arg4 - 10000:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xd59172f3 with:
                gas gas_remaining wei
               args arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x7e13d160 with:
                gas gas_remaining wei
               args 0, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x2f04bd56 with:
                gas gas_remaining wei
               args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xe831fd1d with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require bool((11 * ceil32(return_data.size)) + 480 <= test266151307())
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x4f6d975d with:
                gas gas_remaining wei
               args msg.sender, arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return 0, 
               0,
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[32],
               ext_call.return_data[64],
               ext_call.return_data[96]
    if arg3 > -5001 / arg4 - 10000:
        revert with 0, ''
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xd59172f3 with:
            gas gas_remaining wei
           args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x7e13d160 with:
            gas gas_remaining wei
           args (-10000 * arg3) + (arg4 * arg3) + 5000 / 10000, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x2f04bd56 with:
            gas gas_remaining wei
           args ((-10000 * arg3) + (arg4 * arg3) + 5000 / 10000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xe831fd1d with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require bool((11 * ceil32(return_data.size)) + 544 <= test266151307())
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x4f6d975d with:
            gas gas_remaining wei
           args msg.sender, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0, 
           (-10000 * arg3) + (arg4 * arg3) + 5000 / 10000,
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96]
}

function sub_84a91cfe(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(pairFactoryAddress)
    staticcall pairFactoryAddress.0x870bd025 with:
            gas gas_remaining wei
           args address(arg1), address(arg2), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(sub_5491cd67Address)
    staticcall sub_5491cd67Address.getReserve(address arg1) with:
            gas gas_remaining wei
           args address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getBorrowLimit() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getTotalLoan() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg5 >= 1000:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xb07f80a1 with:
             gas gas_remaining wei
            args arg4, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xd59172f3 with:
                gas gas_remaining wei
               args arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x7e13d160 with:
                gas gas_remaining wei
               args ext_call.return_data[0], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x2f04bd56 with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xe831fd1d with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require bool((12 * ceil32(return_data.size)) + 480 <= test266151307())
        return 0, 
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[32],
               ext_call.return_data[64],
               ext_call.return_data[96]
    if arg5 <= 10000:
        return 0
    if not arg4:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xd59172f3 with:
                gas gas_remaining wei
               args arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x7e13d160 with:
                gas gas_remaining wei
               args 0, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x2f04bd56 with:
                gas gas_remaining wei
               args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xe831fd1d with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require bool((11 * ceil32(return_data.size)) + 480 <= test266151307())
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x4f6d975d with:
                gas gas_remaining wei
               args msg.sender, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return 0, 
               0,
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[32],
               ext_call.return_data[64],
               ext_call.return_data[96]
    if not arg5 - 10000:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xd59172f3 with:
                gas gas_remaining wei
               args arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x7e13d160 with:
                gas gas_remaining wei
               args 0, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x2f04bd56 with:
                gas gas_remaining wei
               args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xe831fd1d with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require bool((11 * ceil32(return_data.size)) + 480 <= test266151307())
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x4f6d975d with:
                gas gas_remaining wei
               args msg.sender, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return 0, 
               0,
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[0],
               ext_call.return_data[32],
               ext_call.return_data[64],
               ext_call.return_data[96]
    if arg4 > -5001 / arg5 - 10000:
        revert with 0, ''
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xd59172f3 with:
            gas gas_remaining wei
           args arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x7e13d160 with:
            gas gas_remaining wei
           args (-10000 * arg4) + (arg5 * arg4) + 5000 / 10000, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x2f04bd56 with:
            gas gas_remaining wei
           args ((-10000 * arg4) + (arg5 * arg4) + 5000 / 10000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xe831fd1d with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require bool((11 * ceil32(return_data.size)) + 544 <= test266151307())
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x4f6d975d with:
            gas gas_remaining wei
           args msg.sender, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0, 
           (-10000 * arg4) + (arg5 * arg4) + 5000 / 10000,
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96]
}

function sub_dde22342(?) payable {
    require calldata.size - 4 >= 768
    require arg23 == bool(arg23)
    if not arg23:
        require arg23 == bool(arg23)
        if not arg23:
            require arg4 == address(arg4)
            require arg5 == address(arg5)
            require arg6 == address(arg6)
            require ext_code.size(pairFactoryAddress)
            if not address(arg5):
                staticcall pairFactoryAddress.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg4), address(arg6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not address(ext_call.return_data[0]):
                    revert with 0, 'Provided address is unknown pair'
                require arg23 == bool(arg23)
                if not arg23:
                    mem[ceil32(return_data.size) + 292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(ext_call.return_data[0]), Mask(224, 32, arg1) >> 32
                    mem[ceil32(return_data.size) + 416 len 4] = uint32(arg1)
                    call address(arg4) with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        49,
                                        0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                                        mem[ceil32(return_data.size) + 409 len 7],
                                        uint32(arg1),
                                        mem[ceil32(return_data.size) + 420 len 4]
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            if not 0, address(arg6) << 64:
                                revert with 0, 
                                            32,
                                            49,
                                            0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                                            mem[ceil32(return_data.size) + 409 len 7],
                                            uint32(arg1),
                                            mem[ceil32(return_data.size) + 420 len 4]
                    else:
                        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        49,
                                        0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 410 len 15]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 324]:
                                revert with 0, 
                                            32,
                                            49,
                                            0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 410 len 15]
                    require arg7 == address(arg7)
                    require arg8 == address(arg8)
                    require arg13 == uint8(arg13)
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x3f4c853e with:
                         gas gas_remaining wei
                        args address(arg7), arg2, arg3, address(arg8), arg9, arg10, arg11, arg12, arg13 << 248, arg14, arg15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg19 == uint8(arg19)
                    if uint8(arg19):
                        if arg22:
                            call address(ext_call.return_data[0]) with:
                               value arg22 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'Failed to send termination reward to pair'
                        require arg7 == address(arg7)
                        require arg19 == uint8(arg19)
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x77f64878 with:
                             gas gas_remaining wei
                            args address(arg7), arg16, arg17, arg18, arg19 << 248, arg20, arg21
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if arg20:
                            if arg22:
                                call address(ext_call.return_data[0]) with:
                                   value arg22 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Failed to send termination reward to pair'
                            require arg7 == address(arg7)
                            require arg19 == uint8(arg19)
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x77f64878 with:
                                 gas gas_remaining wei
                                args address(arg7), arg16, arg17, arg18, arg19 << 248, arg20, arg21
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if arg21:
                                if arg22:
                                    call address(ext_call.return_data[0]) with:
                                       value arg22 wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'Failed to send termination reward to pair'
                                require arg7 == address(arg7)
                                require arg19 == uint8(arg19)
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x77f64878 with:
                                     gas gas_remaining wei
                                    args address(arg7), arg16, arg17, arg18, arg19 << 248, arg20, arg21
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    return ext_call.return_data[0]
                mem[ceil32(return_data.size) + 260 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, arg1) >> 32
                mem[ceil32(return_data.size) + 352 len 4] = uint32(arg1)
                call address(arg4) with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    45,
                                    0x775472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                    mem[ceil32(return_data.size) + 373 len 19]
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        if not 0, address(arg6) << 64:
                            revert with 0, 
                                        32,
                                        45,
                                        0x775472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                        mem[ceil32(return_data.size) + 373 len 19]
                    require arg7 == address(arg7)
                    require arg8 == address(arg8)
                    mem[ceil32(return_data.size) + 264] = address(arg7)
                    mem[ceil32(return_data.size) + 296] = arg2
                    mem[ceil32(return_data.size) + 328] = arg3
                    mem[ceil32(return_data.size) + 360] = address(arg8)
                    mem[ceil32(return_data.size) + 392] = arg9
                    mem[ceil32(return_data.size) + 424] = arg10
                    mem[ceil32(return_data.size) + 456] = arg11
                    mem[ceil32(return_data.size) + 488] = arg12
                    require arg13 == uint8(arg13)
                    mem[ceil32(return_data.size) + 520] = uint8(arg13)
                    mem[ceil32(return_data.size) + 552] = arg14
                    mem[ceil32(return_data.size) + 584] = arg15
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x3f4c853e with:
                         gas gas_remaining wei
                        args address(arg7), arg2, arg3, address(arg8), arg9, arg10, arg11, arg12, arg13 << 248, arg14, arg15
                    mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg19 == uint8(arg19)
                    if not uint8(arg19):
                        if not arg20:
                            if not arg21:
                                mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                                return memory
                                  from (2 * ceil32(return_data.size)) + 260
                                   len ceil32(return_data.size) + 32
                    if not arg22:
                        require arg7 == address(arg7)
                        mem[(2 * ceil32(return_data.size)) + 264] = address(arg7)
                        mem[(2 * ceil32(return_data.size)) + 296] = arg16
                        mem[(2 * ceil32(return_data.size)) + 328] = arg17
                        mem[(2 * ceil32(return_data.size)) + 360] = arg18
                        require arg19 == uint8(arg19)
                        mem[(2 * ceil32(return_data.size)) + 392] = uint8(arg19)
                        mem[(2 * ceil32(return_data.size)) + 424] = arg20
                        mem[(2 * ceil32(return_data.size)) + 456] = arg21
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x77f64878 with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 264 len ceil32(return_data.size) + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                        return memory
                          from (2 * ceil32(return_data.size)) + 260
                           len ceil32(return_data.size) + 32
                    call address(ext_call.return_data[0]) with:
                       value arg22 wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            mem[(2 * ceil32(return_data.size)) + 260] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 264] = 32
                            mem[(2 * ceil32(return_data.size)) + 296] = 41
                            mem[(2 * ceil32(return_data.size)) + 328] = 'Failed to send termination rewar'
                            mem[(2 * ceil32(return_data.size)) + 360] = 0x6420746f20706169720000000000000000000000000000000000000000000000
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 260
                               len ceil32(return_data.size) + 132
                        require arg7 == address(arg7)
                        mem[(2 * ceil32(return_data.size)) + 264] = address(arg7)
                        mem[(2 * ceil32(return_data.size)) + 296] = arg16
                        mem[(2 * ceil32(return_data.size)) + 328] = arg17
                        mem[(2 * ceil32(return_data.size)) + 360] = arg18
                        require arg19 == uint8(arg19)
                        mem[(2 * ceil32(return_data.size)) + 392] = uint8(arg19)
                        mem[(2 * ceil32(return_data.size)) + 424] = arg20
                        mem[(2 * ceil32(return_data.size)) + 456] = arg21
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x77f64878 with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 264 len ceil32(return_data.size) + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                        return memory
                          from (2 * ceil32(return_data.size)) + 260
                           len ceil32(return_data.size) + 32
                    mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 32
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 41
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 'Failed to send termination rewar'
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0x6420746f20706169720000000000000000000000000000000000000000000000
                        revert with memory
                          from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                           len ceil32(return_data.size) + 132
                    require arg7 == address(arg7)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = address(arg7)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg16
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg17
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg18
                    require arg19 == uint8(arg19)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = uint8(arg19)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = arg20
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = arg21
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x77f64878 with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265 len ceil32(return_data.size) + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                    return memory
                      from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                       len ceil32(return_data.size) + 32
            else:
                staticcall pairFactoryAddress.0x4dad2624 with:
                        gas gas_remaining wei
                       args address(arg4), address(arg5), address(arg6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not address(ext_call.return_data[0]):
                    revert with 0, 'Provided address is unknown pair'
                require arg23 == bool(arg23)
                if not arg23:
                    mem[ceil32(return_data.size) + 292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(ext_call.return_data[0]), Mask(224, 32, arg1) >> 32
                    mem[ceil32(return_data.size) + 416 len 4] = uint32(arg1)
                    call address(arg4) with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        49,
                                        0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                                        mem[ceil32(return_data.size) + 409 len 7],
                                        uint32(arg1),
                                        mem[ceil32(return_data.size) + 420 len 4]
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            if not 0, address(arg5) << 64:
                                revert with 0, 
                                            32,
                                            49,
                                            0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                                            mem[ceil32(return_data.size) + 409 len 7],
                                            uint32(arg1),
                                            mem[ceil32(return_data.size) + 420 len 4]
                        require arg7 == address(arg7)
                        require arg8 == address(arg8)
                        mem[ceil32(return_data.size) + 296] = address(arg7)
                        mem[ceil32(return_data.size) + 328] = arg2
                        mem[ceil32(return_data.size) + 360] = arg3
                        mem[ceil32(return_data.size) + 392] = address(arg8)
                        mem[ceil32(return_data.size) + 424] = arg9
                        mem[ceil32(return_data.size) + 456] = arg10
                        mem[ceil32(return_data.size) + 488] = arg11
                        mem[ceil32(return_data.size) + 520] = arg12
                        require arg13 == uint8(arg13)
                        mem[ceil32(return_data.size) + 552] = uint8(arg13)
                        mem[ceil32(return_data.size) + 584] = arg14
                        mem[ceil32(return_data.size) + 616] = arg15
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x3f4c853e with:
                             gas gas_remaining wei
                            args address(arg7), arg2, arg3, address(arg8), arg9, arg10, arg11, arg12, arg13 << 248, arg14, arg15
                        mem[ceil32(return_data.size) + 292] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg19 == uint8(arg19)
                        if not uint8(arg19):
                            if not arg20:
                                if not arg21:
                                    mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                                    return memory
                                      from (2 * ceil32(return_data.size)) + 292
                                       len ceil32(return_data.size) + 32
                        if not arg22:
                            require arg7 == address(arg7)
                            mem[(2 * ceil32(return_data.size)) + 296] = address(arg7)
                            mem[(2 * ceil32(return_data.size)) + 328] = arg16
                            mem[(2 * ceil32(return_data.size)) + 360] = arg17
                            mem[(2 * ceil32(return_data.size)) + 392] = arg18
                            require arg19 == uint8(arg19)
                            mem[(2 * ceil32(return_data.size)) + 424] = uint8(arg19)
                            mem[(2 * ceil32(return_data.size)) + 456] = arg20
                            mem[(2 * ceil32(return_data.size)) + 488] = arg21
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x77f64878 with:
                                 gas gas_remaining wei
                                args mem[(2 * ceil32(return_data.size)) + 296 len ceil32(return_data.size) + 224]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                            return memory
                              from (2 * ceil32(return_data.size)) + 292
                               len ceil32(return_data.size) + 32
                        call address(ext_call.return_data[0]) with:
                           value arg22 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                mem[(2 * ceil32(return_data.size)) + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(2 * ceil32(return_data.size)) + 296] = 32
                                mem[(2 * ceil32(return_data.size)) + 328] = 41
                                mem[(2 * ceil32(return_data.size)) + 360] = 'Failed to send termination rewar'
                                mem[(2 * ceil32(return_data.size)) + 392] = 0x6420746f20706169720000000000000000000000000000000000000000000000
                                revert with memory
                                  from (2 * ceil32(return_data.size)) + 292
                                   len ceil32(return_data.size) + 132
                            require arg7 == address(arg7)
                            mem[(2 * ceil32(return_data.size)) + 296] = address(arg7)
                            mem[(2 * ceil32(return_data.size)) + 328] = arg16
                            mem[(2 * ceil32(return_data.size)) + 360] = arg17
                            mem[(2 * ceil32(return_data.size)) + 392] = arg18
                            require arg19 == uint8(arg19)
                            mem[(2 * ceil32(return_data.size)) + 424] = uint8(arg19)
                            mem[(2 * ceil32(return_data.size)) + 456] = arg20
                            mem[(2 * ceil32(return_data.size)) + 488] = arg21
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x77f64878 with:
                                 gas gas_remaining wei
                                args mem[(2 * ceil32(return_data.size)) + 296 len ceil32(return_data.size) + 224]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                            return memory
                              from (2 * ceil32(return_data.size)) + 292
                               len ceil32(return_data.size) + 32
                        mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 32
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 41
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 'Failed to send termination rewar'
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0x6420746f20706169720000000000000000000000000000000000000000000000
                            revert with memory
                              from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                               len ceil32(return_data.size) + 132
                        require arg7 == address(arg7)
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(arg7)
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg16
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg17
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg18
                        require arg19 == uint8(arg19)
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = uint8(arg19)
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = arg20
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = arg21
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x77f64878 with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len ceil32(return_data.size) + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                        return memory
                          from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                           len ceil32(return_data.size) + 32
                    mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    49,
                                    0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 410 len 15]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 324]:
                            revert with 0, 
                                        32,
                                        49,
                                        0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 410 len 15]
                    require arg7 == address(arg7)
                    require arg8 == address(arg8)
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = address(arg7)
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = arg2
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = arg3
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = address(arg8)
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = arg9
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] = arg10
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 489] = arg11
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 521] = arg12
                    require arg13 == uint8(arg13)
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] = uint8(arg13)
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 585] = arg14
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 617] = arg15
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x3f4c853e with:
                         gas gas_remaining wei
                        args address(arg7), arg2, arg3, address(arg8), arg9, arg10, arg11, arg12, arg13 << 248, arg14, arg15
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg19 == uint8(arg19)
                    if not uint8(arg19):
                        if not arg20:
                            if not arg21:
                                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                                return memory
                                  from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                                   len ceil32(return_data.size) + 32
                    if not arg22:
                        require arg7 == address(arg7)
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(arg7)
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg16
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg17
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg18
                        require arg19 == uint8(arg19)
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = uint8(arg19)
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = arg20
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = arg21
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x77f64878 with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len ceil32(return_data.size) + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                        return memory
                          from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                           len ceil32(return_data.size) + 32
                    call address(ext_call.return_data[0]) with:
                       value arg22 wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 32
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 41
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 'Failed to send termination rewar'
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0x6420746f20706169720000000000000000000000000000000000000000000000
                            revert with memory
                              from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                               len ceil32(return_data.size) + 132
                        require arg7 == address(arg7)
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(arg7)
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg16
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg17
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg18
                        require arg19 == uint8(arg19)
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = uint8(arg19)
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = arg20
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = arg21
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x77f64878 with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len ceil32(return_data.size) + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                        return memory
                          from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                           len ceil32(return_data.size) + 32
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = return_data.size
                    if not ext_call.success:
                        revert with 0, 
                                    'Failed to send termination reward to pair',
                                    mem[(6 * ceil32(return_data.size)) + 426 len 9 * ceil32(return_data.size)]
                    require arg7 == address(arg7)
                    mem[(6 * ceil32(return_data.size)) + 298] = address(arg7)
                    mem[(6 * ceil32(return_data.size)) + 330] = arg16
                    mem[(6 * ceil32(return_data.size)) + 362] = arg17
                    mem[(6 * ceil32(return_data.size)) + 394] = arg18
                    require arg19 == uint8(arg19)
                    mem[(6 * ceil32(return_data.size)) + 426] = uint8(arg19)
                    mem[(6 * ceil32(return_data.size)) + 458] = arg20
                    mem[(6 * ceil32(return_data.size)) + 490] = arg21
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x77f64878 with:
                         gas gas_remaining wei
                        args address(arg7), arg16, arg17, arg18, arg19 << 248, arg20, arg21, mem[(6 * ceil32(return_data.size)) + 522 len 9 * ceil32(return_data.size)]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    return ext_call.return_data[0], mem[(6 * ceil32(return_data.size)) + 326 len 9 * ceil32(return_data.size)]
                mem[ceil32(return_data.size) + 260 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, arg1) >> 32
                mem[ceil32(return_data.size) + 352 len 4] = uint32(arg1)
                call address(arg4) with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    45,
                                    0x775472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                    mem[ceil32(return_data.size) + 373 len 19]
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        if not 0, address(arg5) << 64:
                            revert with 0, 
                                        32,
                                        45,
                                        0x775472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                        mem[ceil32(return_data.size) + 373 len 19]
                    require arg7 == address(arg7)
                    require arg8 == address(arg8)
                    mem[ceil32(return_data.size) + 264] = address(arg7)
                    mem[ceil32(return_data.size) + 296] = arg2
                    mem[ceil32(return_data.size) + 328] = arg3
                    mem[ceil32(return_data.size) + 360] = address(arg8)
                    mem[ceil32(return_data.size) + 392] = arg9
                    mem[ceil32(return_data.size) + 424] = arg10
                    mem[ceil32(return_data.size) + 456] = arg11
                    mem[ceil32(return_data.size) + 488] = arg12
                    require arg13 == uint8(arg13)
                    mem[ceil32(return_data.size) + 520] = uint8(arg13)
                    mem[ceil32(return_data.size) + 552] = arg14
                    mem[ceil32(return_data.size) + 584] = arg15
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x3f4c853e with:
                         gas gas_remaining wei
                        args address(arg7), arg2, arg3, address(arg8), arg9, arg10, arg11, arg12, arg13 << 248, arg14, arg15
                    mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg19 == uint8(arg19)
                    if not uint8(arg19):
                        if not arg20:
                            if not arg21:
                                mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                                return memory
                                  from (2 * ceil32(return_data.size)) + 260
                                   len ceil32(return_data.size) + 32
                    if not arg22:
                        require arg7 == address(arg7)
                        mem[(2 * ceil32(return_data.size)) + 264] = address(arg7)
                        mem[(2 * ceil32(return_data.size)) + 296] = arg16
                        mem[(2 * ceil32(return_data.size)) + 328] = arg17
                        mem[(2 * ceil32(return_data.size)) + 360] = arg18
                        require arg19 == uint8(arg19)
                        mem[(2 * ceil32(return_data.size)) + 392] = uint8(arg19)
                        mem[(2 * ceil32(return_data.size)) + 424] = arg20
                        mem[(2 * ceil32(return_data.size)) + 456] = arg21
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x77f64878 with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 264 len ceil32(return_data.size) + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                        return memory
                          from (2 * ceil32(return_data.size)) + 260
                           len ceil32(return_data.size) + 32
                    call address(ext_call.return_data[0]) with:
                       value arg22 wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            mem[(2 * ceil32(return_data.size)) + 260] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 264] = 32
                            mem[(2 * ceil32(return_data.size)) + 296] = 41
                            mem[(2 * ceil32(return_data.size)) + 328] = 'Failed to send termination rewar'
                            mem[(2 * ceil32(return_data.size)) + 360] = 0x6420746f20706169720000000000000000000000000000000000000000000000
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 260
                               len ceil32(return_data.size) + 132
                        require arg7 == address(arg7)
                        mem[(2 * ceil32(return_data.size)) + 264] = address(arg7)
                        mem[(2 * ceil32(return_data.size)) + 296] = arg16
                        mem[(2 * ceil32(return_data.size)) + 328] = arg17
                        mem[(2 * ceil32(return_data.size)) + 360] = arg18
                        require arg19 == uint8(arg19)
                        mem[(2 * ceil32(return_data.size)) + 392] = uint8(arg19)
                        mem[(2 * ceil32(return_data.size)) + 424] = arg20
                        mem[(2 * ceil32(return_data.size)) + 456] = arg21
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x77f64878 with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 264 len ceil32(return_data.size) + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                        return memory
                          from (2 * ceil32(return_data.size)) + 260
                           len ceil32(return_data.size) + 32
                    mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 32
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 41
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 'Failed to send termination rewar'
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0x6420746f20706169720000000000000000000000000000000000000000000000
                        revert with memory
                          from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                           len ceil32(return_data.size) + 132
                    require arg7 == address(arg7)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = address(arg7)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg16
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg17
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg18
                    require arg19 == uint8(arg19)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = uint8(arg19)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = arg20
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = arg21
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x77f64878 with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265 len ceil32(return_data.size) + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                    return memory
                      from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                       len ceil32(return_data.size) + 32
            ('bool', 'returndatasize')
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            45,
                            0x775472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 374 len 19]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 
                                32,
                                45,
                                0x775472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 374 len 19]
            require arg7 == address(arg7)
            require arg8 == address(arg8)
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = address(arg7)
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = arg2
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = arg3
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = address(arg8)
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = arg9
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = arg10
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] = arg11
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 489] = arg12
            require arg13 == uint8(arg13)
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 521] = uint8(arg13)
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] = arg14
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 585] = arg15
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x3f4c853e with:
                 gas gas_remaining wei
                args address(arg7), arg2, arg3, address(arg8), arg9, arg10, arg11, arg12, arg13 << 248, arg14, arg15
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require arg19 == uint8(arg19)
            if not uint8(arg19):
                if not arg20:
                    if not arg21:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        return memory
                          from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                           len ceil32(return_data.size) + 32
            if not arg22:
                require arg7 == address(arg7)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = address(arg7)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg16
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg17
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg18
                require arg19 == uint8(arg19)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = uint8(arg19)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = arg20
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = arg21
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x77f64878 with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265 len ceil32(return_data.size) + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                return memory
                  from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                   len ceil32(return_data.size) + 32
            call address(ext_call.return_data[0]) with:
               value arg22 wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 32
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 41
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 'Failed to send termination rewar'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0x6420746f20706169720000000000000000000000000000000000000000000000
                    revert with memory
                      from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                       len ceil32(return_data.size) + 132
                require arg7 == address(arg7)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = address(arg7)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg16
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg17
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg18
                require arg19 == uint8(arg19)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = uint8(arg19)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = arg20
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = arg21
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x77f64878 with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265 len ceil32(return_data.size) + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                return memory
                  from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                   len ceil32(return_data.size) + 32
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = return_data.size
            if not ext_call.success:
                revert with 0, 
                            'Failed to send termination reward to pair',
                            mem[(6 * ceil32(return_data.size)) + 394 len 9 * ceil32(return_data.size)]
            require arg7 == address(arg7)
            mem[(6 * ceil32(return_data.size)) + 266] = address(arg7)
            mem[(6 * ceil32(return_data.size)) + 298] = arg16
            mem[(6 * ceil32(return_data.size)) + 330] = arg17
            mem[(6 * ceil32(return_data.size)) + 362] = arg18
            require arg19 == uint8(arg19)
            mem[(6 * ceil32(return_data.size)) + 394] = uint8(arg19)
            mem[(6 * ceil32(return_data.size)) + 426] = arg20
            mem[(6 * ceil32(return_data.size)) + 458] = arg21
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x77f64878 with:
                 gas gas_remaining wei
                args address(arg7), arg16, arg17, arg18, arg19 << 248, arg20, arg21, mem[(6 * ceil32(return_data.size)) + 490 len 9 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            return ext_call.return_data[0], mem[(6 * ceil32(return_data.size)) + 294 len 9 * ceil32(return_data.size)]
        if arg22 > msg.value:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(WETHAddress))
        call address(WETHAddress).deposit() with:
           value msg.value - arg22 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require arg5 == address(arg5)
        require arg6 == address(arg6)
        require ext_code.size(pairFactoryAddress)
        if not address(arg5):
            staticcall pairFactoryAddress.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(WETHAddress), address(arg6)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not address(ext_call.return_data[0]):
                revert with 0, 'Provided address is unknown pair'
            require arg23 == bool(arg23)
            if arg23:
                mem[ceil32(return_data.size) + 324 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, msg.value - arg22) >> 32
                call address(WETHAddress) with:
                     gas gas_remaining wei
                    args Mask(224, 32, msg.value - arg22) << 224, mem[ceil32(return_data.size) + 388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 
                                32,
                                45,
                                0x775472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[ceil32(return_data.size) + 437 len 19]
                mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                45,
                                0x775472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 438 len 19]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 356]:
                        revert with 0, 
                                    32,
                                    45,
                                    0x775472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 438 len 19]
                require arg7 == address(arg7)
                require arg8 == address(arg8)
                require arg13 == uint8(arg13)
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x3f4c853e with:
                     gas gas_remaining wei
                    args address(arg7), arg2, arg3, address(arg8), arg9, arg10, arg11, arg12, arg13 << 248, arg14, arg15
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require arg19 == uint8(arg19)
                if uint8(arg19):
                    if arg22:
                        call address(ext_call.return_data[0]) with:
                           value arg22 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'Failed to send termination reward to pair'
                    require arg7 == address(arg7)
                    require arg19 == uint8(arg19)
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x77f64878 with:
                         gas gas_remaining wei
                        args address(arg7), arg16, arg17, arg18, arg19 << 248, arg20, arg21
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if arg20:
                        if arg22:
                            call address(ext_call.return_data[0]) with:
                               value arg22 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'Failed to send termination reward to pair'
                        require arg7 == address(arg7)
                        require arg19 == uint8(arg19)
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x77f64878 with:
                             gas gas_remaining wei
                            args address(arg7), arg16, arg17, arg18, arg19 << 248, arg20, arg21
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if arg21:
                            if arg22:
                                call address(ext_call.return_data[0]) with:
                                   value arg22 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Failed to send termination reward to pair'
                            require arg7 == address(arg7)
                            require arg19 == uint8(arg19)
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x77f64878 with:
                                 gas gas_remaining wei
                                args address(arg7), arg16, arg17, arg18, arg19 << 248, arg20, arg21
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                return ext_call.return_data[0]
            mem[ceil32(return_data.size) + 356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(ext_call.return_data[0]), Mask(224, 32, msg.value - arg22) >> 32
            mem[ceil32(return_data.size) + 480 len 4] = Mask(32, 64, msg.value - arg22) >> 64
            call address(WETHAddress) with:
                 gas gas_remaining wei
                args Mask(224, 32, msg.value - arg22) << 480, mem[ceil32(return_data.size) + 452 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 
                            32,
                            49,
                            0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                            mem[ceil32(return_data.size) + 473 len 7],
                            Mask(32, 64, msg.value - arg22) >> 64,
                            mem[ceil32(return_data.size) + 484 len 4]
            mem[ceil32(return_data.size) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            49,
                            0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 474 len 15]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 388]:
                    revert with 0, 
                                32,
                                49,
                                0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 474 len 15]
            require arg7 == address(arg7)
            require arg8 == address(arg8)
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = address(arg7)
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = arg2
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = arg3
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] = address(arg8)
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 489] = arg9
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 521] = arg10
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] = arg11
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 585] = arg12
            require arg13 == uint8(arg13)
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 617] = uint8(arg13)
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 649] = arg14
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 681] = arg15
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x3f4c853e with:
                 gas gas_remaining wei
                args address(arg7), arg2, arg3, address(arg8), arg9, arg10, arg11, arg12, arg13 << 248, arg14, arg15
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 357] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require arg19 == uint8(arg19)
            if not uint8(arg19):
                if not arg20:
                    if not arg21:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = ext_call.return_data[0]
                        return memory
                          from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                           len ceil32(return_data.size) + 32
            if not arg22:
                require arg7 == address(arg7)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = address(arg7)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg16
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = arg17
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = arg18
                require arg19 == uint8(arg19)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = uint8(arg19)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = arg20
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = arg21
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x77f64878 with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361 len ceil32(return_data.size) + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = ext_call.return_data[0]
                return memory
                  from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                   len ceil32(return_data.size) + 32
            call address(ext_call.return_data[0]) with:
               value arg22 wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 41
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 'Failed to send termination rewar'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 0x6420746f20706169720000000000000000000000000000000000000000000000
                    revert with memory
                      from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                       len ceil32(return_data.size) + 132
                require arg7 == address(arg7)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = address(arg7)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg16
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = arg17
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = arg18
                require arg19 == uint8(arg19)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = uint8(arg19)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = arg20
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = arg21
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x77f64878 with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361 len ceil32(return_data.size) + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = ext_call.return_data[0]
                return memory
                  from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                   len ceil32(return_data.size) + 32
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = return_data.size
            if not ext_call.success:
                revert with 0, 
                            'Failed to send termination reward to pair',
                            mem[(6 * ceil32(return_data.size)) + 490 len 9 * ceil32(return_data.size)]
            require arg7 == address(arg7)
            mem[(6 * ceil32(return_data.size)) + 362] = address(arg7)
            mem[(6 * ceil32(return_data.size)) + 394] = arg16
            mem[(6 * ceil32(return_data.size)) + 426] = arg17
            mem[(6 * ceil32(return_data.size)) + 458] = arg18
            require arg19 == uint8(arg19)
            mem[(6 * ceil32(return_data.size)) + 490] = uint8(arg19)
            mem[(6 * ceil32(return_data.size)) + 522] = arg20
            mem[(6 * ceil32(return_data.size)) + 554] = arg21
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x77f64878 with:
                 gas gas_remaining wei
                args address(arg7), arg16, arg17, arg18, arg19 << 248, arg20, arg21, mem[(6 * ceil32(return_data.size)) + 586 len 9 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            return ext_call.return_data[0], mem[(6 * ceil32(return_data.size)) + 390 len 9 * ceil32(return_data.size)]
        staticcall pairFactoryAddress.0x4dad2624 with:
                gas gas_remaining wei
               args address(WETHAddress), address(arg5), address(arg6)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not address(ext_call.return_data[0]):
            revert with 0, 'Provided address is unknown pair'
        require arg23 == bool(arg23)
        if not arg23:
            mem[ceil32(return_data.size) + 356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(ext_call.return_data[0]), Mask(224, 32, msg.value - arg22) >> 32
            mem[ceil32(return_data.size) + 480 len 4] = Mask(32, 64, msg.value - arg22) >> 64
            call address(WETHAddress) with:
                 gas gas_remaining wei
                args Mask(224, 32, msg.value - arg22) << 480, mem[ceil32(return_data.size) + 452 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 
                            32,
                            49,
                            0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                            mem[ceil32(return_data.size) + 473 len 7],
                            Mask(32, 64, msg.value - arg22) >> 64,
                            mem[ceil32(return_data.size) + 484 len 4]
            mem[ceil32(return_data.size) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            49,
                            0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 474 len 15]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 388]:
                    revert with 0, 
                                32,
                                49,
                                0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 474 len 15]
            require arg7 == address(arg7)
            require arg8 == address(arg8)
            require arg13 == uint8(arg13)
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x3f4c853e with:
                 gas gas_remaining wei
                args address(arg7), arg2, arg3, address(arg8), arg9, arg10, arg11, arg12, arg13 << 248, arg14, arg15
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require arg19 == uint8(arg19)
            if uint8(arg19):
                if arg22:
                    call address(ext_call.return_data[0]) with:
                       value arg22 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'Failed to send termination reward to pair'
                require arg7 == address(arg7)
                require arg19 == uint8(arg19)
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x77f64878 with:
                     gas gas_remaining wei
                    args address(arg7), arg16, arg17, arg18, arg19 << 248, arg20, arg21
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if arg20:
                    if arg22:
                        call address(ext_call.return_data[0]) with:
                           value arg22 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'Failed to send termination reward to pair'
                    require arg7 == address(arg7)
                    require arg19 == uint8(arg19)
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x77f64878 with:
                         gas gas_remaining wei
                        args address(arg7), arg16, arg17, arg18, arg19 << 248, arg20, arg21
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if arg21:
                        if arg22:
                            call address(ext_call.return_data[0]) with:
                               value arg22 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'Failed to send termination reward to pair'
                        require arg7 == address(arg7)
                        require arg19 == uint8(arg19)
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x77f64878 with:
                             gas gas_remaining wei
                            args address(arg7), arg16, arg17, arg18, arg19 << 248, arg20, arg21
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            return ext_call.return_data[0]
    else:
        require arg4 == address(arg4)
        if address(arg4):
            revert with 0, 'Router: Invalid open request'
        if arg1:
            revert with 0, 'Router: Invalid open request'
        require arg23 == bool(arg23)
        if not arg23:
            require arg4 == address(arg4)
            require arg5 == address(arg5)
            require arg6 == address(arg6)
            require ext_code.size(pairFactoryAddress)
            if not address(arg5):
                staticcall pairFactoryAddress.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg4), address(arg6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if not address(ext_call.return_data[0]):
                    revert with 0, 'Provided address is unknown pair'
                require arg23 == bool(arg23)
                if arg23:
                    mem[ceil32(return_data.size) + 260 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, arg1) >> 32
                    call address(arg4) with:
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 324 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        45,
                                        0x775472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                        mem[ceil32(return_data.size) + 373 len 19]
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            if not 0, address(arg6) << 64:
                                revert with 0, 
                                            32,
                                            45,
                                            0x775472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[ceil32(return_data.size) + 373 len 19]
                    else:
                        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        45,
                                        0x775472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 374 len 19]
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 292]:
                                revert with 0, 
                                            32,
                                            45,
                                            0x775472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 374 len 19]
                    require arg7 == address(arg7)
                    require arg8 == address(arg8)
                    require arg13 == uint8(arg13)
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x3f4c853e with:
                         gas gas_remaining wei
                        args address(arg7), arg2, arg3, address(arg8), arg9, arg10, arg11, arg12, arg13 << 248, arg14, arg15
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg19 == uint8(arg19)
                    if uint8(arg19):
                        if arg22:
                            call address(ext_call.return_data[0]) with:
                               value arg22 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'Failed to send termination reward to pair'
                        require arg7 == address(arg7)
                        require arg19 == uint8(arg19)
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x77f64878 with:
                             gas gas_remaining wei
                            args address(arg7), arg16, arg17, arg18, arg19 << 248, arg20, arg21
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if arg20:
                            if arg22:
                                call address(ext_call.return_data[0]) with:
                                   value arg22 wei
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with 0, 'Failed to send termination reward to pair'
                            require arg7 == address(arg7)
                            require arg19 == uint8(arg19)
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0x77f64878 with:
                                 gas gas_remaining wei
                                args address(arg7), arg16, arg17, arg18, arg19 << 248, arg20, arg21
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if arg21:
                                if arg22:
                                    call address(ext_call.return_data[0]) with:
                                       value arg22 wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with 0, 'Failed to send termination reward to pair'
                                require arg7 == address(arg7)
                                require arg19 == uint8(arg19)
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).0x77f64878 with:
                                     gas gas_remaining wei
                                    args address(arg7), arg16, arg17, arg18, arg19 << 248, arg20, arg21
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    return ext_call.return_data[0]
                mem[ceil32(return_data.size) + 292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(ext_call.return_data[0]), Mask(224, 32, arg1) >> 32
                mem[ceil32(return_data.size) + 416 len 4] = uint32(arg1)
                call address(arg4) with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    49,
                                    0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                                    mem[ceil32(return_data.size) + 409 len 7],
                                    uint32(arg1),
                                    mem[ceil32(return_data.size) + 420 len 4]
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        if not 0, address(arg6) << 64:
                            revert with 0, 
                                        32,
                                        49,
                                        0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                                        mem[ceil32(return_data.size) + 409 len 7],
                                        uint32(arg1),
                                        mem[ceil32(return_data.size) + 420 len 4]
                    require arg7 == address(arg7)
                    require arg8 == address(arg8)
                    mem[ceil32(return_data.size) + 296] = address(arg7)
                    mem[ceil32(return_data.size) + 328] = arg2
                    mem[ceil32(return_data.size) + 360] = arg3
                    mem[ceil32(return_data.size) + 392] = address(arg8)
                    mem[ceil32(return_data.size) + 424] = arg9
                    mem[ceil32(return_data.size) + 456] = arg10
                    mem[ceil32(return_data.size) + 488] = arg11
                    mem[ceil32(return_data.size) + 520] = arg12
                    require arg13 == uint8(arg13)
                    mem[ceil32(return_data.size) + 552] = uint8(arg13)
                    mem[ceil32(return_data.size) + 584] = arg14
                    mem[ceil32(return_data.size) + 616] = arg15
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x3f4c853e with:
                         gas gas_remaining wei
                        args address(arg7), arg2, arg3, address(arg8), arg9, arg10, arg11, arg12, arg13 << 248, arg14, arg15
                    mem[ceil32(return_data.size) + 292] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg19 == uint8(arg19)
                    if not uint8(arg19):
                        if not arg20:
                            if not arg21:
                                mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                                return memory
                                  from (2 * ceil32(return_data.size)) + 292
                                   len ceil32(return_data.size) + 32
                    if not arg22:
                        require arg7 == address(arg7)
                        mem[(2 * ceil32(return_data.size)) + 296] = address(arg7)
                        mem[(2 * ceil32(return_data.size)) + 328] = arg16
                        mem[(2 * ceil32(return_data.size)) + 360] = arg17
                        mem[(2 * ceil32(return_data.size)) + 392] = arg18
                        require arg19 == uint8(arg19)
                        mem[(2 * ceil32(return_data.size)) + 424] = uint8(arg19)
                        mem[(2 * ceil32(return_data.size)) + 456] = arg20
                        mem[(2 * ceil32(return_data.size)) + 488] = arg21
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x77f64878 with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 296 len ceil32(return_data.size) + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        return memory
                          from (2 * ceil32(return_data.size)) + 292
                           len ceil32(return_data.size) + 32
                    call address(ext_call.return_data[0]) with:
                       value arg22 wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 296] = 32
                            mem[(2 * ceil32(return_data.size)) + 328] = 41
                            mem[(2 * ceil32(return_data.size)) + 360] = 'Failed to send termination rewar'
                            mem[(2 * ceil32(return_data.size)) + 392] = 0x6420746f20706169720000000000000000000000000000000000000000000000
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 292
                               len ceil32(return_data.size) + 132
                        require arg7 == address(arg7)
                        mem[(2 * ceil32(return_data.size)) + 296] = address(arg7)
                        mem[(2 * ceil32(return_data.size)) + 328] = arg16
                        mem[(2 * ceil32(return_data.size)) + 360] = arg17
                        mem[(2 * ceil32(return_data.size)) + 392] = arg18
                        require arg19 == uint8(arg19)
                        mem[(2 * ceil32(return_data.size)) + 424] = uint8(arg19)
                        mem[(2 * ceil32(return_data.size)) + 456] = arg20
                        mem[(2 * ceil32(return_data.size)) + 488] = arg21
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x77f64878 with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 296 len ceil32(return_data.size) + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        return memory
                          from (2 * ceil32(return_data.size)) + 292
                           len ceil32(return_data.size) + 32
                    mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 32
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 41
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 'Failed to send termination rewar'
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0x6420746f20706169720000000000000000000000000000000000000000000000
                        revert with memory
                          from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                           len ceil32(return_data.size) + 132
                    require arg7 == address(arg7)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(arg7)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg16
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg17
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg18
                    require arg19 == uint8(arg19)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = uint8(arg19)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = arg20
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = arg21
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x77f64878 with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len ceil32(return_data.size) + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                    return memory
                      from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                       len ceil32(return_data.size) + 32
                mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                49,
                                0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 410 len 15]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 324]:
                        revert with 0, 
                                    32,
                                    49,
                                    0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 410 len 15]
                require arg7 == address(arg7)
                require arg8 == address(arg8)
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = address(arg7)
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = arg2
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = arg3
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = address(arg8)
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = arg9
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] = arg10
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 489] = arg11
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 521] = arg12
                require arg13 == uint8(arg13)
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] = uint8(arg13)
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 585] = arg14
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 617] = arg15
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x3f4c853e with:
                     gas gas_remaining wei
                    args address(arg7), arg2, arg3, address(arg8), arg9, arg10, arg11, arg12, arg13 << 248, arg14, arg15
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require arg19 == uint8(arg19)
                if not uint8(arg19):
                    if not arg20:
                        if not arg21:
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                            return memory
                              from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                               len ceil32(return_data.size) + 32
                if not arg22:
                    require arg7 == address(arg7)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(arg7)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg16
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg17
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg18
                    require arg19 == uint8(arg19)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = uint8(arg19)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = arg20
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = arg21
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x77f64878 with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len ceil32(return_data.size) + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                    return memory
                      from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                       len ceil32(return_data.size) + 32
                call address(ext_call.return_data[0]) with:
                   value arg22 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 32
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 41
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 'Failed to send termination rewar'
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0x6420746f20706169720000000000000000000000000000000000000000000000
                        revert with memory
                          from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                           len ceil32(return_data.size) + 132
                    require arg7 == address(arg7)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(arg7)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg16
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg17
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg18
                    require arg19 == uint8(arg19)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = uint8(arg19)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = arg20
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = arg21
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x77f64878 with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len ceil32(return_data.size) + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                    return memory
                      from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                       len ceil32(return_data.size) + 32
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = return_data.size
                if not ext_call.success:
                    revert with 0, 
                                'Failed to send termination reward to pair',
                                mem[(6 * ceil32(return_data.size)) + 426 len 9 * ceil32(return_data.size)]
                require arg7 == address(arg7)
                mem[(6 * ceil32(return_data.size)) + 298] = address(arg7)
                mem[(6 * ceil32(return_data.size)) + 330] = arg16
                mem[(6 * ceil32(return_data.size)) + 362] = arg17
                mem[(6 * ceil32(return_data.size)) + 394] = arg18
                require arg19 == uint8(arg19)
                mem[(6 * ceil32(return_data.size)) + 426] = uint8(arg19)
                mem[(6 * ceil32(return_data.size)) + 458] = arg20
                mem[(6 * ceil32(return_data.size)) + 490] = arg21
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x77f64878 with:
                     gas gas_remaining wei
                    args address(arg7), arg16, arg17, arg18, arg19 << 248, arg20, arg21, mem[(6 * ceil32(return_data.size)) + 522 len 9 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                return ext_call.return_data[0], mem[(6 * ceil32(return_data.size)) + 326 len 9 * ceil32(return_data.size)]
            staticcall pairFactoryAddress.0x4dad2624 with:
                    gas gas_remaining wei
                   args address(arg4), address(arg5), address(arg6)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if not address(ext_call.return_data[0]):
                revert with 0, 'Provided address is unknown pair'
            require arg23 == bool(arg23)
            if not arg23:
                mem[ceil32(return_data.size) + 292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(ext_call.return_data[0]), Mask(224, 32, arg1) >> 32
                mem[ceil32(return_data.size) + 416 len 4] = uint32(arg1)
                call address(arg4) with:
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 480, mem[ceil32(return_data.size) + 388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    49,
                                    0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                                    mem[ceil32(return_data.size) + 409 len 7],
                                    uint32(arg1),
                                    mem[ceil32(return_data.size) + 420 len 4]
                    if ext_call.return_data[0]:
                        require ext_call.return_data[0] >= 32
                        if not 0, address(arg5) << 64:
                            revert with 0, 
                                        32,
                                        49,
                                        0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                                        mem[ceil32(return_data.size) + 409 len 7],
                                        uint32(arg1),
                                        mem[ceil32(return_data.size) + 420 len 4]
                    require arg7 == address(arg7)
                    require arg8 == address(arg8)
                    mem[ceil32(return_data.size) + 296] = address(arg7)
                    mem[ceil32(return_data.size) + 328] = arg2
                    mem[ceil32(return_data.size) + 360] = arg3
                    mem[ceil32(return_data.size) + 392] = address(arg8)
                    mem[ceil32(return_data.size) + 424] = arg9
                    mem[ceil32(return_data.size) + 456] = arg10
                    mem[ceil32(return_data.size) + 488] = arg11
                    mem[ceil32(return_data.size) + 520] = arg12
                    require arg13 == uint8(arg13)
                    mem[ceil32(return_data.size) + 552] = uint8(arg13)
                    mem[ceil32(return_data.size) + 584] = arg14
                    mem[ceil32(return_data.size) + 616] = arg15
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x3f4c853e with:
                         gas gas_remaining wei
                        args address(arg7), arg2, arg3, address(arg8), arg9, arg10, arg11, arg12, arg13 << 248, arg14, arg15
                    mem[ceil32(return_data.size) + 292] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require arg19 == uint8(arg19)
                    if not uint8(arg19):
                        if not arg20:
                            if not arg21:
                                mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                                return memory
                                  from (2 * ceil32(return_data.size)) + 292
                                   len ceil32(return_data.size) + 32
                    if not arg22:
                        require arg7 == address(arg7)
                        mem[(2 * ceil32(return_data.size)) + 296] = address(arg7)
                        mem[(2 * ceil32(return_data.size)) + 328] = arg16
                        mem[(2 * ceil32(return_data.size)) + 360] = arg17
                        mem[(2 * ceil32(return_data.size)) + 392] = arg18
                        require arg19 == uint8(arg19)
                        mem[(2 * ceil32(return_data.size)) + 424] = uint8(arg19)
                        mem[(2 * ceil32(return_data.size)) + 456] = arg20
                        mem[(2 * ceil32(return_data.size)) + 488] = arg21
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x77f64878 with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 296 len ceil32(return_data.size) + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        return memory
                          from (2 * ceil32(return_data.size)) + 292
                           len ceil32(return_data.size) + 32
                    call address(ext_call.return_data[0]) with:
                       value arg22 wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 296] = 32
                            mem[(2 * ceil32(return_data.size)) + 328] = 41
                            mem[(2 * ceil32(return_data.size)) + 360] = 'Failed to send termination rewar'
                            mem[(2 * ceil32(return_data.size)) + 392] = 0x6420746f20706169720000000000000000000000000000000000000000000000
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 292
                               len ceil32(return_data.size) + 132
                        require arg7 == address(arg7)
                        mem[(2 * ceil32(return_data.size)) + 296] = address(arg7)
                        mem[(2 * ceil32(return_data.size)) + 328] = arg16
                        mem[(2 * ceil32(return_data.size)) + 360] = arg17
                        mem[(2 * ceil32(return_data.size)) + 392] = arg18
                        require arg19 == uint8(arg19)
                        mem[(2 * ceil32(return_data.size)) + 424] = uint8(arg19)
                        mem[(2 * ceil32(return_data.size)) + 456] = arg20
                        mem[(2 * ceil32(return_data.size)) + 488] = arg21
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).0x77f64878 with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 296 len ceil32(return_data.size) + 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(2 * ceil32(return_data.size)) + 292] = ext_call.return_data[0]
                        return memory
                          from (2 * ceil32(return_data.size)) + 292
                           len ceil32(return_data.size) + 32
                    mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 32
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 41
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 'Failed to send termination rewar'
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0x6420746f20706169720000000000000000000000000000000000000000000000
                        revert with memory
                          from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                           len ceil32(return_data.size) + 132
                    require arg7 == address(arg7)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(arg7)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg16
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg17
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg18
                    require arg19 == uint8(arg19)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = uint8(arg19)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = arg20
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = arg21
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x77f64878 with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len ceil32(return_data.size) + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                    return memory
                      from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                       len ceil32(return_data.size) + 32
                mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 
                                32,
                                49,
                                0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 410 len 15]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 324]:
                        revert with 0, 
                                    32,
                                    49,
                                    0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 410 len 15]
                require arg7 == address(arg7)
                require arg8 == address(arg8)
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = address(arg7)
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = arg2
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = arg3
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = address(arg8)
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = arg9
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] = arg10
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 489] = arg11
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 521] = arg12
                require arg13 == uint8(arg13)
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] = uint8(arg13)
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 585] = arg14
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 617] = arg15
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x3f4c853e with:
                     gas gas_remaining wei
                    args address(arg7), arg2, arg3, address(arg8), arg9, arg10, arg11, arg12, arg13 << 248, arg14, arg15
                mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require arg19 == uint8(arg19)
                if not uint8(arg19):
                    if not arg20:
                        if not arg21:
                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                            return memory
                              from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                               len ceil32(return_data.size) + 32
                if not arg22:
                    require arg7 == address(arg7)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(arg7)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg16
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg17
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg18
                    require arg19 == uint8(arg19)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = uint8(arg19)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = arg20
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = arg21
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x77f64878 with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len ceil32(return_data.size) + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                    return memory
                      from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                       len ceil32(return_data.size) + 32
                call address(ext_call.return_data[0]) with:
                   value arg22 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 32
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 41
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 'Failed to send termination rewar'
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 0x6420746f20706169720000000000000000000000000000000000000000000000
                        revert with memory
                          from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                           len ceil32(return_data.size) + 132
                    require arg7 == address(arg7)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(arg7)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg16
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg17
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg18
                    require arg19 == uint8(arg19)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = uint8(arg19)
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = arg20
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = arg21
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x77f64878 with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297 len ceil32(return_data.size) + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = ext_call.return_data[0]
                    return memory
                      from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293
                       len ceil32(return_data.size) + 32
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = return_data.size
                if not ext_call.success:
                    revert with 0, 
                                'Failed to send termination reward to pair',
                                mem[(6 * ceil32(return_data.size)) + 426 len 9 * ceil32(return_data.size)]
                require arg7 == address(arg7)
                mem[(6 * ceil32(return_data.size)) + 298] = address(arg7)
                mem[(6 * ceil32(return_data.size)) + 330] = arg16
                mem[(6 * ceil32(return_data.size)) + 362] = arg17
                mem[(6 * ceil32(return_data.size)) + 394] = arg18
                require arg19 == uint8(arg19)
                mem[(6 * ceil32(return_data.size)) + 426] = uint8(arg19)
                mem[(6 * ceil32(return_data.size)) + 458] = arg20
                mem[(6 * ceil32(return_data.size)) + 490] = arg21
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x77f64878 with:
                     gas gas_remaining wei
                    args address(arg7), arg16, arg17, arg18, arg19 << 248, arg20, arg21, mem[(6 * ceil32(return_data.size)) + 522 len 9 * ceil32(return_data.size)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                return ext_call.return_data[0], mem[(6 * ceil32(return_data.size)) + 326 len 9 * ceil32(return_data.size)]
            mem[ceil32(return_data.size) + 260 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, arg1) >> 32
            mem[ceil32(return_data.size) + 352 len 4] = uint32(arg1)
            call address(arg4) with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                45,
                                0x775472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[ceil32(return_data.size) + 373 len 19]
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    if not 0, address(arg5) << 64:
                        revert with 0, 
                                    32,
                                    45,
                                    0x775472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                    mem[ceil32(return_data.size) + 373 len 19]
                require arg7 == address(arg7)
                require arg8 == address(arg8)
                mem[ceil32(return_data.size) + 264] = address(arg7)
                mem[ceil32(return_data.size) + 296] = arg2
                mem[ceil32(return_data.size) + 328] = arg3
                mem[ceil32(return_data.size) + 360] = address(arg8)
                mem[ceil32(return_data.size) + 392] = arg9
                mem[ceil32(return_data.size) + 424] = arg10
                mem[ceil32(return_data.size) + 456] = arg11
                mem[ceil32(return_data.size) + 488] = arg12
                require arg13 == uint8(arg13)
                mem[ceil32(return_data.size) + 520] = uint8(arg13)
                mem[ceil32(return_data.size) + 552] = arg14
                mem[ceil32(return_data.size) + 584] = arg15
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x3f4c853e with:
                     gas gas_remaining wei
                    args address(arg7), arg2, arg3, address(arg8), arg9, arg10, arg11, arg12, arg13 << 248, arg14, arg15
                mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require arg19 == uint8(arg19)
                if not uint8(arg19):
                    if not arg20:
                        if not arg21:
                            mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                            return memory
                              from (2 * ceil32(return_data.size)) + 260
                               len ceil32(return_data.size) + 32
                if not arg22:
                    require arg7 == address(arg7)
                    mem[(2 * ceil32(return_data.size)) + 264] = address(arg7)
                    mem[(2 * ceil32(return_data.size)) + 296] = arg16
                    mem[(2 * ceil32(return_data.size)) + 328] = arg17
                    mem[(2 * ceil32(return_data.size)) + 360] = arg18
                    require arg19 == uint8(arg19)
                    mem[(2 * ceil32(return_data.size)) + 392] = uint8(arg19)
                    mem[(2 * ceil32(return_data.size)) + 424] = arg20
                    mem[(2 * ceil32(return_data.size)) + 456] = arg21
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x77f64878 with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + 264 len ceil32(return_data.size) + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                    return memory
                      from (2 * ceil32(return_data.size)) + 260
                       len ceil32(return_data.size) + 32
                call address(ext_call.return_data[0]) with:
                   value arg22 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        mem[(2 * ceil32(return_data.size)) + 260] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 264] = 32
                        mem[(2 * ceil32(return_data.size)) + 296] = 41
                        mem[(2 * ceil32(return_data.size)) + 328] = 'Failed to send termination rewar'
                        mem[(2 * ceil32(return_data.size)) + 360] = 0x6420746f20706169720000000000000000000000000000000000000000000000
                        revert with memory
                          from (2 * ceil32(return_data.size)) + 260
                           len ceil32(return_data.size) + 132
                    require arg7 == address(arg7)
                    mem[(2 * ceil32(return_data.size)) + 264] = address(arg7)
                    mem[(2 * ceil32(return_data.size)) + 296] = arg16
                    mem[(2 * ceil32(return_data.size)) + 328] = arg17
                    mem[(2 * ceil32(return_data.size)) + 360] = arg18
                    require arg19 == uint8(arg19)
                    mem[(2 * ceil32(return_data.size)) + 392] = uint8(arg19)
                    mem[(2 * ceil32(return_data.size)) + 424] = arg20
                    mem[(2 * ceil32(return_data.size)) + 456] = arg21
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x77f64878 with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + 264 len ceil32(return_data.size) + 224]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(2 * ceil32(return_data.size)) + 260] = ext_call.return_data[0]
                    return memory
                      from (2 * ceil32(return_data.size)) + 260
                       len ceil32(return_data.size) + 32
                mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 32
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 41
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 'Failed to send termination rewar'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0x6420746f20706169720000000000000000000000000000000000000000000000
                    revert with memory
                      from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                       len ceil32(return_data.size) + 132
                require arg7 == address(arg7)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = address(arg7)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg16
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg17
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg18
                require arg19 == uint8(arg19)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = uint8(arg19)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = arg20
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = arg21
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x77f64878 with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265 len ceil32(return_data.size) + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                return memory
                  from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                   len ceil32(return_data.size) + 32
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            45,
                            0x775472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 374 len 19]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 
                                32,
                                45,
                                0x775472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 374 len 19]
            require arg7 == address(arg7)
            require arg8 == address(arg8)
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = address(arg7)
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = arg2
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = arg3
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = address(arg8)
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = arg9
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = arg10
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] = arg11
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 489] = arg12
            require arg13 == uint8(arg13)
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 521] = uint8(arg13)
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] = arg14
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 585] = arg15
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x3f4c853e with:
                 gas gas_remaining wei
                args address(arg7), arg2, arg3, address(arg8), arg9, arg10, arg11, arg12, arg13 << 248, arg14, arg15
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require arg19 == uint8(arg19)
            if not uint8(arg19):
                if not arg20:
                    if not arg21:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                        return memory
                          from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                           len ceil32(return_data.size) + 32
            if not arg22:
                require arg7 == address(arg7)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = address(arg7)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg16
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg17
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg18
                require arg19 == uint8(arg19)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = uint8(arg19)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = arg20
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = arg21
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x77f64878 with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265 len ceil32(return_data.size) + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                return memory
                  from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                   len ceil32(return_data.size) + 32
            call address(ext_call.return_data[0]) with:
               value arg22 wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = 32
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = 41
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 'Failed to send termination rewar'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 0x6420746f20706169720000000000000000000000000000000000000000000000
                    revert with memory
                      from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                       len ceil32(return_data.size) + 132
                require arg7 == address(arg7)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265] = address(arg7)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = arg16
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg17
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg18
                require arg19 == uint8(arg19)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = uint8(arg19)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = arg20
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = arg21
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x77f64878 with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 265 len ceil32(return_data.size) + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
                return memory
                  from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261
                   len ceil32(return_data.size) + 32
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = return_data.size
            if not ext_call.success:
                revert with 0, 
                            'Failed to send termination reward to pair',
                            mem[(6 * ceil32(return_data.size)) + 394 len 9 * ceil32(return_data.size)]
            require arg7 == address(arg7)
            mem[(6 * ceil32(return_data.size)) + 266] = address(arg7)
            mem[(6 * ceil32(return_data.size)) + 298] = arg16
            mem[(6 * ceil32(return_data.size)) + 330] = arg17
            mem[(6 * ceil32(return_data.size)) + 362] = arg18
            require arg19 == uint8(arg19)
            mem[(6 * ceil32(return_data.size)) + 394] = uint8(arg19)
            mem[(6 * ceil32(return_data.size)) + 426] = arg20
            mem[(6 * ceil32(return_data.size)) + 458] = arg21
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x77f64878 with:
                 gas gas_remaining wei
                args address(arg7), arg16, arg17, arg18, arg19 << 248, arg20, arg21, mem[(6 * ceil32(return_data.size)) + 490 len 9 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            return ext_call.return_data[0], mem[(6 * ceil32(return_data.size)) + 294 len 9 * ceil32(return_data.size)]
        if arg22 > msg.value:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(address(WETHAddress))
        call address(WETHAddress).deposit() with:
           value msg.value - arg22 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require arg5 == address(arg5)
        require arg6 == address(arg6)
        require ext_code.size(pairFactoryAddress)
        if not address(arg5):
            staticcall pairFactoryAddress.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(WETHAddress), address(arg6)
        else:
            staticcall pairFactoryAddress.0x4dad2624 with:
                    gas gas_remaining wei
                   args address(WETHAddress), address(arg5), address(arg6)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if not address(ext_call.return_data[0]):
            revert with 0, 'Provided address is unknown pair'
        require arg23 == bool(arg23)
        if not arg23:
            mem[ceil32(return_data.size) + 356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(ext_call.return_data[0]), Mask(224, 32, msg.value - arg22) >> 32
            mem[ceil32(return_data.size) + 480 len 4] = Mask(32, 64, msg.value - arg22) >> 64
            call address(WETHAddress) with:
                 gas gas_remaining wei
                args Mask(224, 32, msg.value - arg22) << 480, mem[ceil32(return_data.size) + 452 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 
                            32,
                            49,
                            0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                            mem[ceil32(return_data.size) + 473 len 7],
                            Mask(32, 64, msg.value - arg22) >> 64,
                            mem[ceil32(return_data.size) + 484 len 4]
            mem[ceil32(return_data.size) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 
                            32,
                            49,
                            0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                            mem[ceil32(return_data.size) + ceil32(return_data.size) + 474 len 15]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 388]:
                    revert with 0, 
                                32,
                                49,
                                0xfe5472616e7366657248656c7065723a3a7472616e7366657246726f6d3a207472616e7366657246726f6d206661696c65,
                                mem[ceil32(return_data.size) + ceil32(return_data.size) + 474 len 15]
            require arg7 == address(arg7)
            require arg8 == address(arg8)
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = address(arg7)
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = arg2
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = arg3
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] = address(arg8)
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 489] = arg9
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 521] = arg10
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] = arg11
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 585] = arg12
            require arg13 == uint8(arg13)
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 617] = uint8(arg13)
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 649] = arg14
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 681] = arg15
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x3f4c853e with:
                 gas gas_remaining wei
                args address(arg7), arg2, arg3, address(arg8), arg9, arg10, arg11, arg12, arg13 << 248, arg14, arg15
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 357] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require arg19 == uint8(arg19)
            if not uint8(arg19):
                if not arg20:
                    if not arg21:
                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = ext_call.return_data[0]
                        return memory
                          from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                           len ceil32(return_data.size) + 32
            if not arg22:
                require arg7 == address(arg7)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = address(arg7)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg16
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = arg17
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = arg18
                require arg19 == uint8(arg19)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = uint8(arg19)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = arg20
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = arg21
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x77f64878 with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361 len ceil32(return_data.size) + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = ext_call.return_data[0]
                return memory
                  from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                   len ceil32(return_data.size) + 32
            call address(ext_call.return_data[0]) with:
               value arg22 wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 41
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 'Failed to send termination rewar'
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = 0x6420746f20706169720000000000000000000000000000000000000000000000
                    revert with memory
                      from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                       len ceil32(return_data.size) + 132
                require arg7 == address(arg7)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = address(arg7)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg16
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = arg17
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = arg18
                require arg19 == uint8(arg19)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = uint8(arg19)
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = arg20
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 553] = arg21
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x77f64878 with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361 len ceil32(return_data.size) + 224]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = ext_call.return_data[0]
                return memory
                  from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357
                   len ceil32(return_data.size) + 32
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = return_data.size
            if not ext_call.success:
                revert with 0, 
                            'Failed to send termination reward to pair',
                            mem[(6 * ceil32(return_data.size)) + 490 len 9 * ceil32(return_data.size)]
            require arg7 == address(arg7)
            mem[(6 * ceil32(return_data.size)) + 362] = address(arg7)
            mem[(6 * ceil32(return_data.size)) + 394] = arg16
            mem[(6 * ceil32(return_data.size)) + 426] = arg17
            mem[(6 * ceil32(return_data.size)) + 458] = arg18
            require arg19 == uint8(arg19)
            mem[(6 * ceil32(return_data.size)) + 490] = uint8(arg19)
            mem[(6 * ceil32(return_data.size)) + 522] = arg20
            mem[(6 * ceil32(return_data.size)) + 554] = arg21
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0x77f64878 with:
                 gas gas_remaining wei
                args address(arg7), arg16, arg17, arg18, arg19 << 248, arg20, arg21, mem[(6 * ceil32(return_data.size)) + 586 len 9 * ceil32(return_data.size)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            return ext_call.return_data[0], mem[(6 * ceil32(return_data.size)) + 390 len 9 * ceil32(return_data.size)]
    ('bool', ('param', 'arg23'))
    mem[ceil32(return_data.size) + 324 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, msg.value - arg22) >> 32
    mem[ceil32(return_data.size) + 416 len 4] = Mask(32, 64, msg.value - arg22) >> 64
    call address(WETHAddress) with:
         gas gas_remaining wei
        args Mask(224, 32, msg.value - arg22) << 224, mem[ceil32(return_data.size) + 388 len 4]
    if not return_data.size:
        require not ext_call.success
        revert with 0, 
                    32,
                    45,
                    0x775472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                    mem[ceil32(return_data.size) + 437 len 19]
    mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 
                    32,
                    45,
                    0x775472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 438 len 19]
    if return_data.size:
        require return_data.size >= 32
        if not mem[ceil32(return_data.size) + 356]:
            revert with 0, 
                        32,
                        45,
                        0x775472616e7366657248656c7065723a3a736166655472616e736665723a207472616e73666572206661696c65,
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 438 len 19]
    require arg7 == address(arg7)
    require arg8 == address(arg8)
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = address(arg7)
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = arg2
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = arg3
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = address(arg8)
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] = arg9
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 489] = arg10
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 521] = arg11
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 553] = arg12
    require arg13 == uint8(arg13)
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 585] = uint8(arg13)
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 617] = arg14
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 649] = arg15
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x3f4c853e with:
         gas gas_remaining wei
        args address(arg7), arg2, arg3, address(arg8), arg9, arg10, arg11, arg12, arg13 << 248, arg14, arg15
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 325] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg19 == uint8(arg19)
    if not uint8(arg19):
        if not arg20:
            if not arg21:
                mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = ext_call.return_data[0]
                return memory
                  from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
                   len ceil32(return_data.size) + 32
    if not arg22:
        require arg7 == address(arg7)
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = address(arg7)
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg16
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg17
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = arg18
        require arg19 == uint8(arg19)
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = uint8(arg19)
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = arg20
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = arg21
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x77f64878 with:
             gas gas_remaining wei
            args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len ceil32(return_data.size) + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = ext_call.return_data[0]
        return memory
          from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
           len ceil32(return_data.size) + 32
    call address(ext_call.return_data[0]) with:
       value arg22 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 32
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 41
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'Failed to send termination rewar'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = 0x6420746f20706169720000000000000000000000000000000000000000000000
            revert with memory
              from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
               len ceil32(return_data.size) + 132
        require arg7 == address(arg7)
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = address(arg7)
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = arg16
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = arg17
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = arg18
        require arg19 == uint8(arg19)
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] = uint8(arg19)
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 489] = arg20
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 521] = arg21
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x77f64878 with:
             gas gas_remaining wei
            args mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329 len ceil32(return_data.size) + 224]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = ext_call.return_data[0]
        return memory
          from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325
           len ceil32(return_data.size) + 32
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = return_data.size
    if not ext_call.success:
        revert with 0, 
                    'Failed to send termination reward to pair',
                    mem[(6 * ceil32(return_data.size)) + 458 len 9 * ceil32(return_data.size)]
    require arg7 == address(arg7)
    mem[(6 * ceil32(return_data.size)) + 330] = address(arg7)
    mem[(6 * ceil32(return_data.size)) + 362] = arg16
    mem[(6 * ceil32(return_data.size)) + 394] = arg17
    mem[(6 * ceil32(return_data.size)) + 426] = arg18
    require arg19 == uint8(arg19)
    mem[(6 * ceil32(return_data.size)) + 458] = uint8(arg19)
    mem[(6 * ceil32(return_data.size)) + 490] = arg20
    mem[(6 * ceil32(return_data.size)) + 522] = arg21
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x77f64878 with:
         gas gas_remaining wei
        args address(arg7), arg16, arg17, arg18, arg19 << 248, arg20, arg21, mem[(6 * ceil32(return_data.size)) + 554 len 9 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0], mem[(6 * ceil32(return_data.size)) + 358 len 9 * ceil32(return_data.size)]
}

function sub_e5c393e1(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(pairFactoryAddress)
    staticcall pairFactoryAddress.0x2c11db0c with:
            gas gas_remaining wei
           args address(arg1), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if arg4 == -1:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg3)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                if not address(ext_call.return_data[0]):
                    return 0
                else:
                    require ext_code.size(sub_5491cd67Address)
                    staticcall sub_5491cd67Address.getReserve(address arg1) with:
                            gas gas_remaining wei
                           args address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).underlyingBalanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg3)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getDebt(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0]), address(arg3)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, ''
                                else:
                                    if ext_call.return_data[0] > !(ext_call.return_data[0] / 2) / 10^18:
                                        revert with 0, ''
                                    else:
                                        require ext_call.return_data[0]
                                        if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                            if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                revert with 0, ''
                                            else:
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xb516f7b1 with:
                                                     gas gas_remaining wei
                                                    args address(arg3)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 64
                                                    if not ext_call.return_data[0]:
                                                        if not ext_call.return_data[0]:
                                                            if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                revert with 0, ''
                                                        else:
                                                            if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                    revert with 0, ''
                                                                else:
                                                                    if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 0:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        revert with 0, ''
                                                            else:
                                                                if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 0:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    revert with 0, ''
                                                    else:
                                                        if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                            if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                revert with 0, ''
                                                            else:
                                                                if not ext_call.return_data[0]:
                                                                    if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        if not (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                            revert with 0, ''
                                                                        else:
                                                                            if 0 > !((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / 10^18:
                                                                                revert with 0, ''
                                                                            else:
                                                                                require (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 10^18:
                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                            gas gas_remaining wei
                                                                                           args address(arg3)
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        if not ext_call.return_data[0]:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                    gas gas_remaining wei
                                                                                                   args 0
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 64
                                                                                                return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                                                        else:
                                                                                            if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                    revert with 0, ''
                                                                                                else:
                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                            gas gas_remaining wei
                                                                                                           args 0, (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 64
                                                                                                        return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                                                            else:
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args 0
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 64
                                                                                                    return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                                else:
                                                                    if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                        if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                            revert with 0, ''
                                                                        else:
                                                                            if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                            else:
                                                                                if not (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                    revert with 0, ''
                                                                                else:
                                                                                    if 0 > !((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / 10^18:
                                                                                        revert with 0, ''
                                                                                    else:
                                                                                        require (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                        if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 10^18:
                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                        else:
                                                                                            if not (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                                        gas gas_remaining wei
                                                                                                       args address(arg3)
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    if not ext_call.return_data[0]:
                                                                                                        if 0 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                            if 0 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 0
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           0,
                                                                                                                           ext_call.return_data[32]
                                                                                                        else:
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 64
                                                                                                                return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                       ext_call.return_data[0],
                                                                                                                       0,
                                                                                                                       ext_call.return_data[32]
                                                                                                    else:
                                                                                                        if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                            if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                                revert with 0, ''
                                                                                                            else:
                                                                                                                if 0 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    if 0 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require return_data.size >= 64
                                                                                                                            return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                   ext_call.return_data[0],
                                                                                                                                   0,
                                                                                                                                   ext_call.return_data[32]
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args 0, (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               0,
                                                                                                                               ext_call.return_data[32]
                                                                                                        else:
                                                                                                            if 0 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                if 0 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               0,
                                                                                                                               ext_call.return_data[32]
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args 0
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           0,
                                                                                                                           ext_call.return_data[32]
                                                                                            else:
                                                                                                if -((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 10^18:
                                                                                                    if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > -500000000000000001 / -((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 10^18:
                                                                                                        revert with 0, ''
                                                                                                    else:
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                                                gas gas_remaining wei
                                                                                                               args address(arg3)
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            if not ext_call.return_data[0]:
                                                                                                                if (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    if (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18), 0
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require return_data.size >= 64
                                                                                                                            return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                   ext_call.return_data[0],
                                                                                                                                   (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                                   ext_call.return_data[32]
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                               ext_call.return_data[32]
                                                                                                            else:
                                                                                                                if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                                    if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                                        revert with 0, ''
                                                                                                                    else:
                                                                                                                        if (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                            if (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                            else:
                                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                       args ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18), (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require return_data.size >= 64
                                                                                                                                    return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                           ext_call.return_data[0],
                                                                                                                                           (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                                           ext_call.return_data[32]
                                                                                                                        else:
                                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                                   args 0, (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require return_data.size >= 64
                                                                                                                                return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                       ext_call.return_data[0],
                                                                                                                                       (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                                       ext_call.return_data[32]
                                                                                                                else:
                                                                                                                    if (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                        if (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                        else:
                                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                                   args ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18), 0
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require return_data.size >= 64
                                                                                                                                return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                       ext_call.return_data[0],
                                                                                                                                       (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                                       ext_call.return_data[32]
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args 0
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require return_data.size >= 64
                                                                                                                            return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                   ext_call.return_data[0],
                                                                                                                                   (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                                   ext_call.return_data[32]
                                                                                                else:
                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                    staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                                            gas gas_remaining wei
                                                                                                           args address(arg3)
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        if not ext_call.return_data[0]:
                                                                                                            if 0 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                if 0 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               0,
                                                                                                                               ext_call.return_data[32]
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args 0
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           0,
                                                                                                                           ext_call.return_data[32]
                                                                                                        else:
                                                                                                            if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                                if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                                    revert with 0, ''
                                                                                                                else:
                                                                                                                    if 0 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                        if 0 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                        else:
                                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                                   args (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require return_data.size >= 64
                                                                                                                                return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                       ext_call.return_data[0],
                                                                                                                                       0,
                                                                                                                                       ext_call.return_data[32]
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args 0, (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require return_data.size >= 64
                                                                                                                            return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                   ext_call.return_data[0],
                                                                                                                                   0,
                                                                                                                                   ext_call.return_data[32]
                                                                                                            else:
                                                                                                                if 0 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    if 0 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 0
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require return_data.size >= 64
                                                                                                                            return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                   ext_call.return_data[0],
                                                                                                                                   0,
                                                                                                                                   ext_call.return_data[32]
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               0,
                                                                                                                               ext_call.return_data[32]
                                                                    else:
                                                                        if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                        else:
                                                                            if not (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                revert with 0, ''
                                                                            else:
                                                                                if 0 > !((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / 10^18:
                                                                                    revert with 0, ''
                                                                                else:
                                                                                    require (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                    if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 10^18:
                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                                gas gas_remaining wei
                                                                                               args address(arg3)
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            if not ext_call.return_data[0]:
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args 0
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 64
                                                                                                    return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                                                            else:
                                                                                                if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                    if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                        revert with 0, ''
                                                                                                    else:
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                gas gas_remaining wei
                                                                                                               args 0, (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 64
                                                                                                            return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                                                                else:
                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                            gas gas_remaining wei
                                                                                                           args 0
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 64
                                                                                                        return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                        else:
                                                            if not ext_call.return_data[0]:
                                                                if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 0:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    revert with 0, ''
                                                            else:
                                                                if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                    if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                        revert with 0, ''
                                                                    else:
                                                                        if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 0:
                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                        else:
                                                                            revert with 0, ''
                                                                else:
                                                                    if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 0:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        revert with 0, ''
                                        else:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xb516f7b1 with:
                                                 gas gas_remaining wei
                                                args address(arg3)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 64
                                                if not ext_call.return_data[0]:
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, ''
                                                    else:
                                                        if not (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                            revert with 0, ''
                                                        else:
                                                            if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                revert with 0, ''
                                                            else:
                                                                revert with 0, ''
                                                else:
                                                    if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                        if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                            revert with 0, ''
                                                        else:
                                                            if not ext_call.return_data[0]:
                                                                if 0 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    if not (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                        revert with 0, ''
                                                                    else:
                                                                        if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / 10^18:
                                                                            revert with 0, ''
                                                                        else:
                                                                            require (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                            if (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 10^18:
                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                        gas gas_remaining wei
                                                                                       args address(arg3)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    if not ext_call.return_data[0]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                gas gas_remaining wei
                                                                                               args 0
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 64
                                                                                            return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                                                    else:
                                                                                        if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                            if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                revert with 0, ''
                                                                                            else:
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args 0, (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 64
                                                                                                    return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                                                        else:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                    gas gas_remaining wei
                                                                                                   args 0
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 64
                                                                                                return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                            else:
                                                                if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                    if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                        revert with 0, ''
                                                                    else:
                                                                        if 0 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                        else:
                                                                            if not (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                revert with 0, ''
                                                                            else:
                                                                                if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / 10^18:
                                                                                    revert with 0, ''
                                                                                else:
                                                                                    require (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                    if (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 10^18:
                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                    else:
                                                                                        if not (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                                    gas gas_remaining wei
                                                                                                   args address(arg3)
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                if not ext_call.return_data[0]:
                                                                                                    if 0 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                        if 0 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                                        else:
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 64
                                                                                                                return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                       ext_call.return_data[0],
                                                                                                                       0,
                                                                                                                       ext_call.return_data[32]
                                                                                                    else:
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                gas gas_remaining wei
                                                                                                               args 0
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 64
                                                                                                            return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                   ext_call.return_data[0],
                                                                                                                   0,
                                                                                                                   ext_call.return_data[32]
                                                                                                else:
                                                                                                    if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                        if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                            revert with 0, ''
                                                                                                        else:
                                                                                                            if 0 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                if 0 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               0,
                                                                                                                               ext_call.return_data[32]
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args 0, (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           0,
                                                                                                                           ext_call.return_data[32]
                                                                                                    else:
                                                                                                        if 0 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                            if 0 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 0
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           0,
                                                                                                                           ext_call.return_data[32]
                                                                                                        else:
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 64
                                                                                                                return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                       ext_call.return_data[0],
                                                                                                                       0,
                                                                                                                       ext_call.return_data[32]
                                                                                        else:
                                                                                            if -((10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 10^18:
                                                                                                if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > -500000000000000001 / -((10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 10^18:
                                                                                                    revert with 0, ''
                                                                                                else:
                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                    staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                                            gas gas_remaining wei
                                                                                                           args address(arg3)
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        if not ext_call.return_data[0]:
                                                                                                            if (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                if (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18), 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                               ext_call.return_data[32]
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args 0
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                           ext_call.return_data[32]
                                                                                                        else:
                                                                                                            if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                                if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                                    revert with 0, ''
                                                                                                                else:
                                                                                                                    if (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                        if (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                        else:
                                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                                   args ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18), (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require return_data.size >= 64
                                                                                                                                return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                       ext_call.return_data[0],
                                                                                                                                       (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                                       ext_call.return_data[32]
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args 0, (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require return_data.size >= 64
                                                                                                                            return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                   ext_call.return_data[0],
                                                                                                                                   (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                                   ext_call.return_data[32]
                                                                                                            else:
                                                                                                                if (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    if (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18), 0
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require return_data.size >= 64
                                                                                                                            return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                   ext_call.return_data[0],
                                                                                                                                   (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                                   ext_call.return_data[32]
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                               ext_call.return_data[32]
                                                                                            else:
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                                        gas gas_remaining wei
                                                                                                       args address(arg3)
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    if not ext_call.return_data[0]:
                                                                                                        if 0 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                            if 0 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 0
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           0,
                                                                                                                           ext_call.return_data[32]
                                                                                                        else:
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 64
                                                                                                                return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                       ext_call.return_data[0],
                                                                                                                       0,
                                                                                                                       ext_call.return_data[32]
                                                                                                    else:
                                                                                                        if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                            if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                                revert with 0, ''
                                                                                                            else:
                                                                                                                if 0 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    if 0 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require return_data.size >= 64
                                                                                                                            return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                   ext_call.return_data[0],
                                                                                                                                   0,
                                                                                                                                   ext_call.return_data[32]
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args 0, (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               0,
                                                                                                                               ext_call.return_data[32]
                                                                                                        else:
                                                                                                            if 0 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                if 0 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               0,
                                                                                                                               ext_call.return_data[32]
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args 0
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           0,
                                                                                                                           ext_call.return_data[32]
                                                                else:
                                                                    if 0 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        if not (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                            revert with 0, ''
                                                                        else:
                                                                            if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / 10^18:
                                                                                revert with 0, ''
                                                                            else:
                                                                                require (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                if (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 10^18:
                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                            gas gas_remaining wei
                                                                                           args address(arg3)
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        if not ext_call.return_data[0]:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                    gas gas_remaining wei
                                                                                                   args 0
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 64
                                                                                                return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                                                        else:
                                                                                            if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                    revert with 0, ''
                                                                                                else:
                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                            gas gas_remaining wei
                                                                                                           args 0, (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 64
                                                                                                        return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                                                            else:
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args 0
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 64
                                                                                                    return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                    else:
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, ''
                                                        else:
                                                            if not (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                revert with 0, ''
                                                            else:
                                                                if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                    revert with 0, ''
                                                                else:
                                                                    revert with 0, ''
        else:
            if not ext_call.return_data[12 len 20]:
                return 0
            else:
                require ext_code.size(sub_5491cd67Address)
                staticcall sub_5491cd67Address.getReserve(address arg1) with:
                        gas gas_remaining wei
                       args address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).underlyingBalanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getDebt(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0]), address(arg3)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, ''
                            else:
                                if arg4 > !(ext_call.return_data[0] / 2) / 10^18:
                                    revert with 0, ''
                                else:
                                    require ext_call.return_data[0]
                                    if (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                        if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                            revert with 0, ''
                                        else:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xb516f7b1 with:
                                                 gas gas_remaining wei
                                                args address(arg3)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 64
                                                if not ext_call.return_data[0]:
                                                    if not ext_call.return_data[0]:
                                                        if (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            revert with 0, ''
                                                    else:
                                                        if (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                            if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                revert with 0, ''
                                                            else:
                                                                if (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 0:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    revert with 0, ''
                                                        else:
                                                            if (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                revert with 0, ''
                                                else:
                                                    if (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                        if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                            revert with 0, ''
                                                        else:
                                                            if not ext_call.return_data[0]:
                                                                if (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    if not (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                        revert with 0, ''
                                                                    else:
                                                                        if 0 > !((ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / 10^18:
                                                                            revert with 0, ''
                                                                        else:
                                                                            require (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                            if (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 10^18:
                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                        gas gas_remaining wei
                                                                                       args address(arg3)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    if not ext_call.return_data[0]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                gas gas_remaining wei
                                                                                               args 0
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 64
                                                                                            return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                                                    else:
                                                                                        if (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                            if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                revert with 0, ''
                                                                                            else:
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args 0, (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 64
                                                                                                    return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                                                        else:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                    gas gas_remaining wei
                                                                                                   args 0
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 64
                                                                                                return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                            else:
                                                                if (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                    if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                        revert with 0, ''
                                                                    else:
                                                                        if (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                        else:
                                                                            if not (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                revert with 0, ''
                                                                            else:
                                                                                if 0 > !((ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / 10^18:
                                                                                    revert with 0, ''
                                                                                else:
                                                                                    require (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                    if (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 10^18:
                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                    else:
                                                                                        if not (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                                    gas gas_remaining wei
                                                                                                   args address(arg3)
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                if not ext_call.return_data[0]:
                                                                                                    if 0 < (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                        if 0 > (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                                        else:
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 64
                                                                                                                return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                       ext_call.return_data[0],
                                                                                                                       0,
                                                                                                                       ext_call.return_data[32]
                                                                                                    else:
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                gas gas_remaining wei
                                                                                                               args 0
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 64
                                                                                                            return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                   ext_call.return_data[0],
                                                                                                                   0,
                                                                                                                   ext_call.return_data[32]
                                                                                                else:
                                                                                                    if (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                        if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                            revert with 0, ''
                                                                                                        else:
                                                                                                            if 0 < (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                if 0 > (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               0,
                                                                                                                               ext_call.return_data[32]
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args 0, (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           0,
                                                                                                                           ext_call.return_data[32]
                                                                                                    else:
                                                                                                        if 0 < (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                            if 0 > (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 0
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           0,
                                                                                                                           ext_call.return_data[32]
                                                                                                        else:
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 64
                                                                                                                return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                       ext_call.return_data[0],
                                                                                                                       0,
                                                                                                                       ext_call.return_data[32]
                                                                                        else:
                                                                                            if -((ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 10^18:
                                                                                                if (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > -500000000000000001 / -((ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 10^18:
                                                                                                    revert with 0, ''
                                                                                                else:
                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                    staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                                            gas gas_remaining wei
                                                                                                           args address(arg3)
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        if not ext_call.return_data[0]:
                                                                                                            if (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 < (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                if (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args ((ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18), 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                               ext_call.return_data[32]
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args 0
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                           ext_call.return_data[32]
                                                                                                        else:
                                                                                                            if (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                                if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                                    revert with 0, ''
                                                                                                                else:
                                                                                                                    if (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 < (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                        if (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                        else:
                                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                                   args ((ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18), (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require return_data.size >= 64
                                                                                                                                return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                       ext_call.return_data[0],
                                                                                                                                       (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                                       ext_call.return_data[32]
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args 0, (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require return_data.size >= 64
                                                                                                                            return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                   ext_call.return_data[0],
                                                                                                                                   (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                                   ext_call.return_data[32]
                                                                                                            else:
                                                                                                                if (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 < (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    if (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args ((ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18), 0
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require return_data.size >= 64
                                                                                                                            return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                   ext_call.return_data[0],
                                                                                                                                   (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                                   ext_call.return_data[32]
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                               ext_call.return_data[32]
                                                                                            else:
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                                        gas gas_remaining wei
                                                                                                       args address(arg3)
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    if not ext_call.return_data[0]:
                                                                                                        if 0 < (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                            if 0 > (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 0
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           0,
                                                                                                                           ext_call.return_data[32]
                                                                                                        else:
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 64
                                                                                                                return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                       ext_call.return_data[0],
                                                                                                                       0,
                                                                                                                       ext_call.return_data[32]
                                                                                                    else:
                                                                                                        if (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                            if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                                revert with 0, ''
                                                                                                            else:
                                                                                                                if 0 < (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    if 0 > (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require return_data.size >= 64
                                                                                                                            return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                   ext_call.return_data[0],
                                                                                                                                   0,
                                                                                                                                   ext_call.return_data[32]
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args 0, (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               0,
                                                                                                                               ext_call.return_data[32]
                                                                                                        else:
                                                                                                            if 0 < (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                if 0 > (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               0,
                                                                                                                               ext_call.return_data[32]
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args 0
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           0,
                                                                                                                           ext_call.return_data[32]
                                                                else:
                                                                    if (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        if not (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                            revert with 0, ''
                                                                        else:
                                                                            if 0 > !((ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / 10^18:
                                                                                revert with 0, ''
                                                                            else:
                                                                                require (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                if (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 10^18:
                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                            gas gas_remaining wei
                                                                                           args address(arg3)
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        if not ext_call.return_data[0]:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                    gas gas_remaining wei
                                                                                                   args 0
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 64
                                                                                                return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                                                        else:
                                                                                            if (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                    revert with 0, ''
                                                                                                else:
                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                            gas gas_remaining wei
                                                                                                           args 0, (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 64
                                                                                                        return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                                                            else:
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args 0
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 64
                                                                                                    return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                    else:
                                                        if not ext_call.return_data[0]:
                                                            if (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                revert with 0, ''
                                                        else:
                                                            if (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                    revert with 0, ''
                                                                else:
                                                                    if (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 0:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        revert with 0, ''
                                                            else:
                                                                if (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 0:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    revert with 0, ''
                                    else:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xb516f7b1 with:
                                             gas gas_remaining wei
                                            args address(arg3)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 64
                                            if not ext_call.return_data[0]:
                                                if not ext_call.return_data[0]:
                                                    revert with 0, ''
                                                else:
                                                    if not (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                        revert with 0, ''
                                                    else:
                                                        if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                            revert with 0, ''
                                                        else:
                                                            revert with 0, ''
                                            else:
                                                if (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                    if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                        revert with 0, ''
                                                    else:
                                                        if not ext_call.return_data[0]:
                                                            if 0 > (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                if not (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                    revert with 0, ''
                                                                else:
                                                                    if (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !((ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / 10^18:
                                                                        revert with 0, ''
                                                                    else:
                                                                        require (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                        if (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 10^18:
                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                        else:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                    gas gas_remaining wei
                                                                                   args address(arg3)
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                if not ext_call.return_data[0]:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                            gas gas_remaining wei
                                                                                           args 0
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 64
                                                                                        return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                                                else:
                                                                                    if (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                        if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                            revert with 0, ''
                                                                                        else:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                    gas gas_remaining wei
                                                                                                   args 0, (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 64
                                                                                                return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                gas gas_remaining wei
                                                                                               args 0
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 64
                                                                                            return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                        else:
                                                            if (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                    revert with 0, ''
                                                                else:
                                                                    if 0 > (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        if not (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                            revert with 0, ''
                                                                        else:
                                                                            if (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !((ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / 10^18:
                                                                                revert with 0, ''
                                                                            else:
                                                                                require (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                if (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 10^18:
                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                else:
                                                                                    if not (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                                gas gas_remaining wei
                                                                                               args address(arg3)
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            if not ext_call.return_data[0]:
                                                                                                if 0 < (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                    if 0 > (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                    else:
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                gas gas_remaining wei
                                                                                                               args (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 0
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 64
                                                                                                            return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                   ext_call.return_data[0],
                                                                                                                   0,
                                                                                                                   ext_call.return_data[32]
                                                                                                else:
                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                            gas gas_remaining wei
                                                                                                           args 0
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 64
                                                                                                        return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                               ext_call.return_data[0],
                                                                                                               0,
                                                                                                               ext_call.return_data[32]
                                                                                            else:
                                                                                                if (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                    if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                        revert with 0, ''
                                                                                                    else:
                                                                                                        if 0 < (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                            if 0 > (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           0,
                                                                                                                           ext_call.return_data[32]
                                                                                                        else:
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args 0, (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 64
                                                                                                                return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                       ext_call.return_data[0],
                                                                                                                       0,
                                                                                                                       ext_call.return_data[32]
                                                                                                else:
                                                                                                    if 0 < (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                        if 0 > (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                                        else:
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 64
                                                                                                                return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                       ext_call.return_data[0],
                                                                                                                       0,
                                                                                                                       ext_call.return_data[32]
                                                                                                    else:
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                gas gas_remaining wei
                                                                                                               args 0
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 64
                                                                                                            return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                   ext_call.return_data[0],
                                                                                                                   0,
                                                                                                                   ext_call.return_data[32]
                                                                                    else:
                                                                                        if -((10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 10^18:
                                                                                            if (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > -500000000000000001 / -((10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 10^18:
                                                                                                revert with 0, ''
                                                                                            else:
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                                        gas gas_remaining wei
                                                                                                       args address(arg3)
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    if not ext_call.return_data[0]:
                                                                                                        if (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 < (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                            if (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args ((ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18), 0
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                           ext_call.return_data[32]
                                                                                                        else:
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 64
                                                                                                                return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                       ext_call.return_data[0],
                                                                                                                       (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                       ext_call.return_data[32]
                                                                                                    else:
                                                                                                        if (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                            if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                                revert with 0, ''
                                                                                                            else:
                                                                                                                if (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 < (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    if (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args ((ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18), (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require return_data.size >= 64
                                                                                                                            return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                   ext_call.return_data[0],
                                                                                                                                   (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                                   ext_call.return_data[32]
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args 0, (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                               ext_call.return_data[32]
                                                                                                        else:
                                                                                                            if (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 < (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                if (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args ((ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18), 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                               ext_call.return_data[32]
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args 0
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                           ext_call.return_data[32]
                                                                                        else:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                                    gas gas_remaining wei
                                                                                                   args address(arg3)
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                if not ext_call.return_data[0]:
                                                                                                    if 0 < (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                        if 0 > (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                                        else:
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 64
                                                                                                                return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                       ext_call.return_data[0],
                                                                                                                       0,
                                                                                                                       ext_call.return_data[32]
                                                                                                    else:
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                gas gas_remaining wei
                                                                                                               args 0
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 64
                                                                                                            return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                   ext_call.return_data[0],
                                                                                                                   0,
                                                                                                                   ext_call.return_data[32]
                                                                                                else:
                                                                                                    if (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                        if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                            revert with 0, ''
                                                                                                        else:
                                                                                                            if 0 < (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                if 0 > (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               0,
                                                                                                                               ext_call.return_data[32]
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args 0, (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           0,
                                                                                                                           ext_call.return_data[32]
                                                                                                    else:
                                                                                                        if 0 < (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                            if 0 > (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 0
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           0,
                                                                                                                           ext_call.return_data[32]
                                                                                                        else:
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 64
                                                                                                                return (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                       ext_call.return_data[0],
                                                                                                                       0,
                                                                                                                       ext_call.return_data[32]
                                                            else:
                                                                if 0 > (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    if not (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                        revert with 0, ''
                                                                    else:
                                                                        if (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !((ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / 10^18:
                                                                            revert with 0, ''
                                                                        else:
                                                                            require (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                            if (10^18 * (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 10^18:
                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                        gas gas_remaining wei
                                                                                       args address(arg3)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    if not ext_call.return_data[0]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                gas gas_remaining wei
                                                                                               args 0
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 64
                                                                                            return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                                                    else:
                                                                                        if (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                            if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                revert with 0, ''
                                                                                            else:
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args 0, (ext_call.return_data[0] * (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 64
                                                                                                    return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                                                        else:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                    gas gas_remaining wei
                                                                                                   args 0
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 64
                                                                                                return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                else:
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, ''
                                                    else:
                                                        if not (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                            revert with 0, ''
                                                        else:
                                                            if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg4) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                revert with 0, ''
                                                            else:
                                                                revert with 0, ''
}

function sub_9d2d26d6(?) {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require ext_code.size(pairFactoryAddress)
    staticcall pairFactoryAddress.0x870bd025 with:
            gas gas_remaining wei
           args address(arg1), address(arg2), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if arg5 == -1:
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(arg4)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                if not address(ext_call.return_data[0]):
                    return 0
                else:
                    require ext_code.size(sub_5491cd67Address)
                    staticcall sub_5491cd67Address.getReserve(address arg1) with:
                            gas gas_remaining wei
                           args address(arg3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).underlyingBalanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(arg4)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).getDebt(address arg1, address arg2) with:
                                    gas gas_remaining wei
                                   args address(ext_call.return_data[0]), address(arg4)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, ''
                                else:
                                    if ext_call.return_data[0] > !(ext_call.return_data[0] / 2) / 10^18:
                                        revert with 0, ''
                                    else:
                                        require ext_call.return_data[0]
                                        if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                            if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                revert with 0, ''
                                            else:
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                call address(ext_call.return_data[0]).0xb516f7b1 with:
                                                     gas gas_remaining wei
                                                    args address(arg4)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 64
                                                    if not ext_call.return_data[0]:
                                                        if not ext_call.return_data[0]:
                                                            if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                revert with 0, ''
                                                        else:
                                                            if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                    revert with 0, ''
                                                                else:
                                                                    if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 0:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        revert with 0, ''
                                                            else:
                                                                if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 0:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    revert with 0, ''
                                                    else:
                                                        if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                            if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                revert with 0, ''
                                                            else:
                                                                if not ext_call.return_data[0]:
                                                                    if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        if not (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                            revert with 0, ''
                                                                        else:
                                                                            if 0 > !((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / 10^18:
                                                                                revert with 0, ''
                                                                            else:
                                                                                require (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 10^18:
                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                            gas gas_remaining wei
                                                                                           args address(arg4)
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        if not ext_call.return_data[0]:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                    gas gas_remaining wei
                                                                                                   args 0
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 64
                                                                                                return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                                                        else:
                                                                                            if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                    revert with 0, ''
                                                                                                else:
                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                            gas gas_remaining wei
                                                                                                           args 0, (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 64
                                                                                                        return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                                                            else:
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args 0
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 64
                                                                                                    return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                                else:
                                                                    if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                        if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                            revert with 0, ''
                                                                        else:
                                                                            if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                            else:
                                                                                if not (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                    revert with 0, ''
                                                                                else:
                                                                                    if 0 > !((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / 10^18:
                                                                                        revert with 0, ''
                                                                                    else:
                                                                                        require (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                        if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 10^18:
                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                        else:
                                                                                            if not (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                                        gas gas_remaining wei
                                                                                                       args address(arg4)
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    if not ext_call.return_data[0]:
                                                                                                        if 0 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                            if 0 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 0
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           0,
                                                                                                                           ext_call.return_data[32]
                                                                                                        else:
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 64
                                                                                                                return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                       ext_call.return_data[0],
                                                                                                                       0,
                                                                                                                       ext_call.return_data[32]
                                                                                                    else:
                                                                                                        if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                            if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                                revert with 0, ''
                                                                                                            else:
                                                                                                                if 0 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    if 0 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require return_data.size >= 64
                                                                                                                            return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                   ext_call.return_data[0],
                                                                                                                                   0,
                                                                                                                                   ext_call.return_data[32]
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args 0, (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               0,
                                                                                                                               ext_call.return_data[32]
                                                                                                        else:
                                                                                                            if 0 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                if 0 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               0,
                                                                                                                               ext_call.return_data[32]
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args 0
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           0,
                                                                                                                           ext_call.return_data[32]
                                                                                            else:
                                                                                                if -((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 10^18:
                                                                                                    if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > -500000000000000001 / -((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 10^18:
                                                                                                        revert with 0, ''
                                                                                                    else:
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                                                gas gas_remaining wei
                                                                                                               args address(arg4)
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 32
                                                                                                            if not ext_call.return_data[0]:
                                                                                                                if (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    if (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18), 0
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require return_data.size >= 64
                                                                                                                            return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                   ext_call.return_data[0],
                                                                                                                                   (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                                   ext_call.return_data[32]
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                               ext_call.return_data[32]
                                                                                                            else:
                                                                                                                if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                                    if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                                        revert with 0, ''
                                                                                                                    else:
                                                                                                                        if (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                            if (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                            else:
                                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                        gas gas_remaining wei
                                                                                                                                       args ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18), (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                                if not ext_call.success:
                                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                                else:
                                                                                                                                    require return_data.size >= 64
                                                                                                                                    return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                           ext_call.return_data[0],
                                                                                                                                           (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                                           ext_call.return_data[32]
                                                                                                                        else:
                                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                                   args 0, (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require return_data.size >= 64
                                                                                                                                return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                       ext_call.return_data[0],
                                                                                                                                       (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                                       ext_call.return_data[32]
                                                                                                                else:
                                                                                                                    if (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                        if (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                        else:
                                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                                   args ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18), 0
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require return_data.size >= 64
                                                                                                                                return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                       ext_call.return_data[0],
                                                                                                                                       (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                                       ext_call.return_data[32]
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args 0
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require return_data.size >= 64
                                                                                                                            return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                   ext_call.return_data[0],
                                                                                                                                   (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                                   ext_call.return_data[32]
                                                                                                else:
                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                    staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                                            gas gas_remaining wei
                                                                                                           args address(arg4)
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        if not ext_call.return_data[0]:
                                                                                                            if 0 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                if 0 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               0,
                                                                                                                               ext_call.return_data[32]
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args 0
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           0,
                                                                                                                           ext_call.return_data[32]
                                                                                                        else:
                                                                                                            if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                                if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                                    revert with 0, ''
                                                                                                                else:
                                                                                                                    if 0 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                        if 0 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                        else:
                                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                                   args (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require return_data.size >= 64
                                                                                                                                return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                       ext_call.return_data[0],
                                                                                                                                       0,
                                                                                                                                       ext_call.return_data[32]
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args 0, (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require return_data.size >= 64
                                                                                                                            return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                   ext_call.return_data[0],
                                                                                                                                   0,
                                                                                                                                   ext_call.return_data[32]
                                                                                                            else:
                                                                                                                if 0 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    if 0 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 0
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require return_data.size >= 64
                                                                                                                            return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                   ext_call.return_data[0],
                                                                                                                                   0,
                                                                                                                                   ext_call.return_data[32]
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               0,
                                                                                                                               ext_call.return_data[32]
                                                                    else:
                                                                        if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                        else:
                                                                            if not (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                revert with 0, ''
                                                                            else:
                                                                                if 0 > !((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / 10^18:
                                                                                    revert with 0, ''
                                                                                else:
                                                                                    require (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                    if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 10^18:
                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                                gas gas_remaining wei
                                                                                               args address(arg4)
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            if not ext_call.return_data[0]:
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args 0
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 64
                                                                                                    return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                                                            else:
                                                                                                if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                    if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                        revert with 0, ''
                                                                                                    else:
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                gas gas_remaining wei
                                                                                                               args 0, (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 64
                                                                                                            return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                                                                else:
                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                            gas gas_remaining wei
                                                                                                           args 0
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 64
                                                                                                        return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                        else:
                                                            if not ext_call.return_data[0]:
                                                                if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 0:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    revert with 0, ''
                                                            else:
                                                                if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                    if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                        revert with 0, ''
                                                                    else:
                                                                        if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 0:
                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                        else:
                                                                            revert with 0, ''
                                                                else:
                                                                    if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 0:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        revert with 0, ''
                                        else:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xb516f7b1 with:
                                                 gas gas_remaining wei
                                                args address(arg4)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 64
                                                if not ext_call.return_data[0]:
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, ''
                                                    else:
                                                        if not (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                            revert with 0, ''
                                                        else:
                                                            if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                revert with 0, ''
                                                            else:
                                                                revert with 0, ''
                                                else:
                                                    if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                        if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                            revert with 0, ''
                                                        else:
                                                            if not ext_call.return_data[0]:
                                                                if 0 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    if not (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                        revert with 0, ''
                                                                    else:
                                                                        if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / 10^18:
                                                                            revert with 0, ''
                                                                        else:
                                                                            require (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                            if (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 10^18:
                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                        gas gas_remaining wei
                                                                                       args address(arg4)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    if not ext_call.return_data[0]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                gas gas_remaining wei
                                                                                               args 0
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 64
                                                                                            return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                                                    else:
                                                                                        if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                            if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                revert with 0, ''
                                                                                            else:
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args 0, (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 64
                                                                                                    return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                                                        else:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                    gas gas_remaining wei
                                                                                                   args 0
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 64
                                                                                                return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                            else:
                                                                if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                    if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                        revert with 0, ''
                                                                    else:
                                                                        if 0 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                        else:
                                                                            if not (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                revert with 0, ''
                                                                            else:
                                                                                if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / 10^18:
                                                                                    revert with 0, ''
                                                                                else:
                                                                                    require (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                    if (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 10^18:
                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                    else:
                                                                                        if not (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                                    gas gas_remaining wei
                                                                                                   args address(arg4)
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                if not ext_call.return_data[0]:
                                                                                                    if 0 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                        if 0 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                                        else:
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 64
                                                                                                                return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                       ext_call.return_data[0],
                                                                                                                       0,
                                                                                                                       ext_call.return_data[32]
                                                                                                    else:
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                gas gas_remaining wei
                                                                                                               args 0
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 64
                                                                                                            return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                   ext_call.return_data[0],
                                                                                                                   0,
                                                                                                                   ext_call.return_data[32]
                                                                                                else:
                                                                                                    if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                        if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                            revert with 0, ''
                                                                                                        else:
                                                                                                            if 0 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                if 0 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               0,
                                                                                                                               ext_call.return_data[32]
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args 0, (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           0,
                                                                                                                           ext_call.return_data[32]
                                                                                                    else:
                                                                                                        if 0 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                            if 0 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 0
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           0,
                                                                                                                           ext_call.return_data[32]
                                                                                                        else:
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 64
                                                                                                                return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                       ext_call.return_data[0],
                                                                                                                       0,
                                                                                                                       ext_call.return_data[32]
                                                                                        else:
                                                                                            if -((10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 10^18:
                                                                                                if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > -500000000000000001 / -((10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 10^18:
                                                                                                    revert with 0, ''
                                                                                                else:
                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                    staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                                            gas gas_remaining wei
                                                                                                           args address(arg4)
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        if not ext_call.return_data[0]:
                                                                                                            if (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                if (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18), 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                               ext_call.return_data[32]
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args 0
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                           ext_call.return_data[32]
                                                                                                        else:
                                                                                                            if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                                if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                                    revert with 0, ''
                                                                                                                else:
                                                                                                                    if (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                        if (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                        else:
                                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                                   args ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18), (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require return_data.size >= 64
                                                                                                                                return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                       ext_call.return_data[0],
                                                                                                                                       (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                                       ext_call.return_data[32]
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args 0, (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require return_data.size >= 64
                                                                                                                            return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                   ext_call.return_data[0],
                                                                                                                                   (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                                   ext_call.return_data[32]
                                                                                                            else:
                                                                                                                if (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    if (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18), 0
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require return_data.size >= 64
                                                                                                                            return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                   ext_call.return_data[0],
                                                                                                                                   (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                                   ext_call.return_data[32]
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                               ext_call.return_data[32]
                                                                                            else:
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                                        gas gas_remaining wei
                                                                                                       args address(arg4)
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    if not ext_call.return_data[0]:
                                                                                                        if 0 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                            if 0 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 0
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           0,
                                                                                                                           ext_call.return_data[32]
                                                                                                        else:
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 64
                                                                                                                return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                       ext_call.return_data[0],
                                                                                                                       0,
                                                                                                                       ext_call.return_data[32]
                                                                                                    else:
                                                                                                        if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                            if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                                revert with 0, ''
                                                                                                            else:
                                                                                                                if 0 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    if 0 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require return_data.size >= 64
                                                                                                                            return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                   ext_call.return_data[0],
                                                                                                                                   0,
                                                                                                                                   ext_call.return_data[32]
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args 0, (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               0,
                                                                                                                               ext_call.return_data[32]
                                                                                                        else:
                                                                                                            if 0 < (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                if 0 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               0,
                                                                                                                               ext_call.return_data[32]
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args 0
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           0,
                                                                                                                           ext_call.return_data[32]
                                                                else:
                                                                    if 0 > (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        if not (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                            revert with 0, ''
                                                                        else:
                                                                            if (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / 10^18:
                                                                                revert with 0, ''
                                                                            else:
                                                                                require (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                if (10^18 * (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 10^18:
                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                            gas gas_remaining wei
                                                                                           args address(arg4)
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        if not ext_call.return_data[0]:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                    gas gas_remaining wei
                                                                                                   args 0
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 64
                                                                                                return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                                                        else:
                                                                                            if (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                    revert with 0, ''
                                                                                                else:
                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                            gas gas_remaining wei
                                                                                                           args 0, (ext_call.return_data[0] * (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 64
                                                                                                        return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                                                            else:
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args 0
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 64
                                                                                                    return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                    else:
                                                        if not ext_call.return_data[0]:
                                                            revert with 0, ''
                                                        else:
                                                            if not (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                revert with 0, ''
                                                            else:
                                                                if ext_call.return_data[0] > -500000000000000001 / (10^18 * ext_call.return_data[0]) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                    revert with 0, ''
                                                                else:
                                                                    revert with 0, ''
        else:
            if not ext_call.return_data[12 len 20]:
                return 0
            else:
                require ext_code.size(sub_5491cd67Address)
                staticcall sub_5491cd67Address.getReserve(address arg1) with:
                        gas gas_remaining wei
                       args address(arg3)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).underlyingBalanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(arg4)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).getDebt(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0]), address(arg4)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, ''
                            else:
                                if arg5 > !(ext_call.return_data[0] / 2) / 10^18:
                                    revert with 0, ''
                                else:
                                    require ext_call.return_data[0]
                                    if (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                        if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                            revert with 0, ''
                                        else:
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            call address(ext_call.return_data[0]).0xb516f7b1 with:
                                                 gas gas_remaining wei
                                                args address(arg4)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 64
                                                if not ext_call.return_data[0]:
                                                    if not ext_call.return_data[0]:
                                                        if (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 0:
                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                        else:
                                                            revert with 0, ''
                                                    else:
                                                        if (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                            if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                revert with 0, ''
                                                            else:
                                                                if (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 0:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    revert with 0, ''
                                                        else:
                                                            if (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                revert with 0, ''
                                                else:
                                                    if (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                        if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                            revert with 0, ''
                                                        else:
                                                            if not ext_call.return_data[0]:
                                                                if (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    if not (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                        revert with 0, ''
                                                                    else:
                                                                        if 0 > !((ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / 10^18:
                                                                            revert with 0, ''
                                                                        else:
                                                                            require (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                            if (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 10^18:
                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                        gas gas_remaining wei
                                                                                       args address(arg4)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    if not ext_call.return_data[0]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                gas gas_remaining wei
                                                                                               args 0
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 64
                                                                                            return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                                                    else:
                                                                                        if (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                            if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                revert with 0, ''
                                                                                            else:
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args 0, (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 64
                                                                                                    return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                                                        else:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                    gas gas_remaining wei
                                                                                                   args 0
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 64
                                                                                                return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                            else:
                                                                if (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                    if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                        revert with 0, ''
                                                                    else:
                                                                        if (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                        else:
                                                                            if not (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                revert with 0, ''
                                                                            else:
                                                                                if 0 > !((ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / 10^18:
                                                                                    revert with 0, ''
                                                                                else:
                                                                                    require (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                    if (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 10^18:
                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                    else:
                                                                                        if not (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                                    gas gas_remaining wei
                                                                                                   args address(arg4)
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                if not ext_call.return_data[0]:
                                                                                                    if 0 < (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                        if 0 > (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                                        else:
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 64
                                                                                                                return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                       ext_call.return_data[0],
                                                                                                                       0,
                                                                                                                       ext_call.return_data[32]
                                                                                                    else:
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                gas gas_remaining wei
                                                                                                               args 0
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 64
                                                                                                            return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                   ext_call.return_data[0],
                                                                                                                   0,
                                                                                                                   ext_call.return_data[32]
                                                                                                else:
                                                                                                    if (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                        if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                            revert with 0, ''
                                                                                                        else:
                                                                                                            if 0 < (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                if 0 > (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               0,
                                                                                                                               ext_call.return_data[32]
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args 0, (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           0,
                                                                                                                           ext_call.return_data[32]
                                                                                                    else:
                                                                                                        if 0 < (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                            if 0 > (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 0
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           0,
                                                                                                                           ext_call.return_data[32]
                                                                                                        else:
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 64
                                                                                                                return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                       ext_call.return_data[0],
                                                                                                                       0,
                                                                                                                       ext_call.return_data[32]
                                                                                        else:
                                                                                            if -((ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 10^18:
                                                                                                if (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > -500000000000000001 / -((ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 10^18:
                                                                                                    revert with 0, ''
                                                                                                else:
                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                    staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                                            gas gas_remaining wei
                                                                                                           args address(arg4)
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 32
                                                                                                        if not ext_call.return_data[0]:
                                                                                                            if (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 < (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                if (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args ((ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18), 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                               ext_call.return_data[32]
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args 0
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                           ext_call.return_data[32]
                                                                                                        else:
                                                                                                            if (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                                if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                                    revert with 0, ''
                                                                                                                else:
                                                                                                                    if (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 < (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                        if (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                        else:
                                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                    gas gas_remaining wei
                                                                                                                                   args ((ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18), (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                            if not ext_call.success:
                                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                                            else:
                                                                                                                                require return_data.size >= 64
                                                                                                                                return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                       ext_call.return_data[0],
                                                                                                                                       (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                                       ext_call.return_data[32]
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args 0, (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require return_data.size >= 64
                                                                                                                            return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                   ext_call.return_data[0],
                                                                                                                                   (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                                   ext_call.return_data[32]
                                                                                                            else:
                                                                                                                if (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 < (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    if (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args ((ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18), 0
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require return_data.size >= 64
                                                                                                                            return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                   ext_call.return_data[0],
                                                                                                                                   (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                                   ext_call.return_data[32]
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                               ext_call.return_data[32]
                                                                                            else:
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                                        gas gas_remaining wei
                                                                                                       args address(arg4)
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    if not ext_call.return_data[0]:
                                                                                                        if 0 < (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                            if 0 > (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 0
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           0,
                                                                                                                           ext_call.return_data[32]
                                                                                                        else:
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 64
                                                                                                                return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                       ext_call.return_data[0],
                                                                                                                       0,
                                                                                                                       ext_call.return_data[32]
                                                                                                    else:
                                                                                                        if (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                            if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                                revert with 0, ''
                                                                                                            else:
                                                                                                                if 0 < (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    if 0 > (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require return_data.size >= 64
                                                                                                                            return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                   ext_call.return_data[0],
                                                                                                                                   0,
                                                                                                                                   ext_call.return_data[32]
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args 0, (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               0,
                                                                                                                               ext_call.return_data[32]
                                                                                                        else:
                                                                                                            if 0 < (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                if 0 > (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               0,
                                                                                                                               ext_call.return_data[32]
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args 0
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           0,
                                                                                                                           ext_call.return_data[32]
                                                                else:
                                                                    if (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        if not (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                            revert with 0, ''
                                                                        else:
                                                                            if 0 > !((ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / 10^18:
                                                                                revert with 0, ''
                                                                            else:
                                                                                require (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                if (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2 / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 10^18:
                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                else:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                            gas gas_remaining wei
                                                                                           args address(arg4)
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 32
                                                                                        if not ext_call.return_data[0]:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                    gas gas_remaining wei
                                                                                                   args 0
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 64
                                                                                                return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                                                        else:
                                                                                            if (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                    revert with 0, ''
                                                                                                else:
                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                            gas gas_remaining wei
                                                                                                           args 0, (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 64
                                                                                                        return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                                                            else:
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args 0
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 64
                                                                                                    return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                    else:
                                                        if not ext_call.return_data[0]:
                                                            if (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 0:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                revert with 0, ''
                                                        else:
                                                            if (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                    revert with 0, ''
                                                                else:
                                                                    if (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 0:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        revert with 0, ''
                                                            else:
                                                                if (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 0:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    revert with 0, ''
                                    else:
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).0xb516f7b1 with:
                                             gas gas_remaining wei
                                            args address(arg4)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 64
                                            if not ext_call.return_data[0]:
                                                if not ext_call.return_data[0]:
                                                    revert with 0, ''
                                                else:
                                                    if not (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                        revert with 0, ''
                                                    else:
                                                        if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                            revert with 0, ''
                                                        else:
                                                            revert with 0, ''
                                            else:
                                                if (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                    if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                        revert with 0, ''
                                                    else:
                                                        if not ext_call.return_data[0]:
                                                            if 0 > (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                            else:
                                                                if not (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                    revert with 0, ''
                                                                else:
                                                                    if (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !((ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / 10^18:
                                                                        revert with 0, ''
                                                                    else:
                                                                        require (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                        if (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 10^18:
                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                        else:
                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                            staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                    gas gas_remaining wei
                                                                                   args address(arg4)
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                if not ext_call.return_data[0]:
                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                            gas gas_remaining wei
                                                                                           args 0
                                                                                    if not ext_call.success:
                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                    else:
                                                                                        require return_data.size >= 64
                                                                                        return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                                                else:
                                                                                    if (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                        if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                            revert with 0, ''
                                                                                        else:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                    gas gas_remaining wei
                                                                                                   args 0, (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 64
                                                                                                return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                                                    else:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                gas gas_remaining wei
                                                                                               args 0
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 64
                                                                                            return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                        else:
                                                            if (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                    revert with 0, ''
                                                                else:
                                                                    if 0 > (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        if not (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                            revert with 0, ''
                                                                        else:
                                                                            if (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !((ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / 10^18:
                                                                                revert with 0, ''
                                                                            else:
                                                                                require (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                if (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 10^18:
                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                else:
                                                                                    if not (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                                gas gas_remaining wei
                                                                                               args address(arg4)
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 32
                                                                                            if not ext_call.return_data[0]:
                                                                                                if 0 < (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                    if 0 > (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                    else:
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                gas gas_remaining wei
                                                                                                               args (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 0
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 64
                                                                                                            return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                   ext_call.return_data[0],
                                                                                                                   0,
                                                                                                                   ext_call.return_data[32]
                                                                                                else:
                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                            gas gas_remaining wei
                                                                                                           args 0
                                                                                                    if not ext_call.success:
                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                    else:
                                                                                                        require return_data.size >= 64
                                                                                                        return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                               ext_call.return_data[0],
                                                                                                               0,
                                                                                                               ext_call.return_data[32]
                                                                                            else:
                                                                                                if (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                    if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                        revert with 0, ''
                                                                                                    else:
                                                                                                        if 0 < (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                            if 0 > (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           0,
                                                                                                                           ext_call.return_data[32]
                                                                                                        else:
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args 0, (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 64
                                                                                                                return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                       ext_call.return_data[0],
                                                                                                                       0,
                                                                                                                       ext_call.return_data[32]
                                                                                                else:
                                                                                                    if 0 < (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                        if 0 > (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                                        else:
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 64
                                                                                                                return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                       ext_call.return_data[0],
                                                                                                                       0,
                                                                                                                       ext_call.return_data[32]
                                                                                                    else:
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                gas gas_remaining wei
                                                                                                               args 0
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 64
                                                                                                            return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                   ext_call.return_data[0],
                                                                                                                   0,
                                                                                                                   ext_call.return_data[32]
                                                                                    else:
                                                                                        if -((10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 10^18:
                                                                                            if (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > -500000000000000001 / -((10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 10^18:
                                                                                                revert with 0, ''
                                                                                            else:
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                                        gas gas_remaining wei
                                                                                                       args address(arg4)
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 32
                                                                                                    if not ext_call.return_data[0]:
                                                                                                        if (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 < (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                            if (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args ((ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18), 0
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                           ext_call.return_data[32]
                                                                                                        else:
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 64
                                                                                                                return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                       ext_call.return_data[0],
                                                                                                                       (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                       ext_call.return_data[32]
                                                                                                    else:
                                                                                                        if (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                            if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                                revert with 0, ''
                                                                                                            else:
                                                                                                                if (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 < (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    if (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                    else:
                                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                                gas gas_remaining wei
                                                                                                                               args ((ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18), (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                        if not ext_call.success:
                                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                                        else:
                                                                                                                            require return_data.size >= 64
                                                                                                                            return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                                   ext_call.return_data[0],
                                                                                                                                   (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                                   ext_call.return_data[32]
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args 0, (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                               ext_call.return_data[32]
                                                                                                        else:
                                                                                                            if (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 < (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                if (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18 > (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args ((ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) - ((10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18), 0
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                               ext_call.return_data[32]
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args 0
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + (-1 * (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + 5 * 10^17 / 10^18,
                                                                                                                           ext_call.return_data[32]
                                                                                        else:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                                    gas gas_remaining wei
                                                                                                   args address(arg4)
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 32
                                                                                                if not ext_call.return_data[0]:
                                                                                                    if 0 < (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                        if 0 > (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                                                        else:
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 64
                                                                                                                return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                       ext_call.return_data[0],
                                                                                                                       0,
                                                                                                                       ext_call.return_data[32]
                                                                                                    else:
                                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                gas gas_remaining wei
                                                                                                               args 0
                                                                                                        if not ext_call.success:
                                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                                        else:
                                                                                                            require return_data.size >= 64
                                                                                                            return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                   ext_call.return_data[0],
                                                                                                                   0,
                                                                                                                   ext_call.return_data[32]
                                                                                                else:
                                                                                                    if (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                        if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                            revert with 0, ''
                                                                                                        else:
                                                                                                            if 0 < (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                if 0 > (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                                                else:
                                                                                                                    require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                    staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                            gas gas_remaining wei
                                                                                                                           args (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                    if not ext_call.success:
                                                                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                                                                    else:
                                                                                                                        require return_data.size >= 64
                                                                                                                        return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                               ext_call.return_data[0],
                                                                                                                               0,
                                                                                                                               ext_call.return_data[32]
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args 0, (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           0,
                                                                                                                           ext_call.return_data[32]
                                                                                                    else:
                                                                                                        if 0 < (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                            if 0 > (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                                                            else:
                                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                        gas gas_remaining wei
                                                                                                                       args (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 0
                                                                                                                if not ext_call.success:
                                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                                else:
                                                                                                                    require return_data.size >= 64
                                                                                                                    return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                           ext_call.return_data[0],
                                                                                                                           0,
                                                                                                                           ext_call.return_data[32]
                                                                                                        else:
                                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                                    gas gas_remaining wei
                                                                                                                   args 0
                                                                                                            if not ext_call.success:
                                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                                            else:
                                                                                                                require return_data.size >= 64
                                                                                                                return (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18, 
                                                                                                                       ext_call.return_data[0],
                                                                                                                       0,
                                                                                                                       ext_call.return_data[32]
                                                            else:
                                                                if 0 > (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    if not (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18:
                                                                        revert with 0, ''
                                                                    else:
                                                                        if (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > !((ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / 10^18:
                                                                            revert with 0, ''
                                                                        else:
                                                                            require (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                            if (10^18 * (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18) + ((ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 / 2) / (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18 > 10^18:
                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                            else:
                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                staticcall address(ext_call.return_data[0]).getDeposit(address arg1) with:
                                                                                        gas gas_remaining wei
                                                                                       args address(arg4)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    if not ext_call.return_data[0]:
                                                                                        require ext_code.size(address(ext_call.return_data[0]))
                                                                                        staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                gas gas_remaining wei
                                                                                               args 0
                                                                                        if not ext_call.success:
                                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                                        else:
                                                                                            require return_data.size >= 64
                                                                                            return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                                                    else:
                                                                                        if (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                            if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                                                revert with 0, ''
                                                                                            else:
                                                                                                require ext_code.size(address(ext_call.return_data[0]))
                                                                                                staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                        gas gas_remaining wei
                                                                                                       args 0, (ext_call.return_data[0] * (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]) + 5 * 10^17 / 10^18
                                                                                                if not ext_call.success:
                                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                                else:
                                                                                                    require return_data.size >= 64
                                                                                                    return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                                                        else:
                                                                                            require ext_code.size(address(ext_call.return_data[0]))
                                                                                            staticcall address(ext_call.return_data[0]).0x975bf010 with:
                                                                                                    gas gas_remaining wei
                                                                                                   args 0
                                                                                            if not ext_call.success:
                                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                                            else:
                                                                                                require return_data.size >= 64
                                                                                                return 0, ext_call.return_data[0], 0, ext_call.return_data[32]
                                                else:
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, ''
                                                    else:
                                                        if not (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                            revert with 0, ''
                                                        else:
                                                            if ext_call.return_data[0] > -500000000000000001 / (10^18 * arg5) + (ext_call.return_data[0] / 2) / ext_call.return_data[0]:
                                                                revert with 0, ''
                                                            else:
                                                                revert with 0, ''
}



}
