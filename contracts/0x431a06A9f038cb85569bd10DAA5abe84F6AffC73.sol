contract main {




// =====================  Runtime code  =====================


#
#  - sub_40919124(?)
#
function destroy() payable {
    require 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef == msg.sender
    staticcall 0x4946c0e9f43f4dee607b0ef1fa1c.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.0xa9059cbb with:
             gas gas_remaining wei
            args 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    selfdestruct(msg.sender)
}

function isAllowed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return 1
}

function forbid(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef == msg.sender
}

function withdraw() payable {
    require 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef == msg.sender
    staticcall 0x4946c0e9f43f4dee607b0ef1fa1c.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        call 0x0000000000004946c0e9f43f4dee607b0ef1fa1c.0xa9059cbb with:
             gas gas_remaining wei
            args 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function _fallback() payable {
    require 4 <= calldata.size
    require calldata.size <= calldata.size
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if not -tx.origin + 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef:
        require arg2.length >= 640
        if not bool(ceil32(ceil32(arg2.length)) + 737 <= test266151307()):
            revert with 'NH{q', 65
        require mem[128] == mem[140 len 20]
        mem[ceil32(ceil32(arg2.length)) + 97] = mem[128]
        require mem[160] == mem[172 len 20]
        mem[ceil32(ceil32(arg2.length)) + 129] = mem[160]
        require mem[192] == mem[204 len 20]
        mem[ceil32(ceil32(arg2.length)) + 161] = mem[192]
        require mem[224] == mem[236 len 20]
        mem[ceil32(ceil32(arg2.length)) + 193] = mem[224]
        require mem[256] == mem[268 len 20]
        mem[ceil32(ceil32(arg2.length)) + 225] = mem[256]
        require mem[288] == mem[300 len 20]
        mem[ceil32(ceil32(arg2.length)) + 257] = mem[288]
        require mem[320] == mem[332 len 20]
        mem[ceil32(ceil32(arg2.length)) + 289] = mem[320]
        require mem[352] == mem[364 len 20]
        mem[ceil32(ceil32(arg2.length)) + 321] = mem[352]
        mem[ceil32(ceil32(arg2.length)) + 353] = mem[384]
        mem[ceil32(ceil32(arg2.length)) + 385] = mem[416]
        mem[ceil32(ceil32(arg2.length)) + 417] = mem[448]
        mem[ceil32(ceil32(arg2.length)) + 449] = mem[480]
        mem[ceil32(ceil32(arg2.length)) + 481] = mem[512]
        mem[ceil32(ceil32(arg2.length)) + 513] = mem[544]
        mem[ceil32(ceil32(arg2.length)) + 545] = mem[576]
        mem[ceil32(ceil32(arg2.length)) + 577] = mem[608]
        mem[ceil32(ceil32(arg2.length)) + 609] = mem[640]
        mem[ceil32(ceil32(arg2.length)) + 641] = mem[672]
        mem[ceil32(ceil32(arg2.length)) + 673] = mem[704]
        mem[ceil32(ceil32(arg2.length)) + 705] = mem[736]
        staticcall mem[ceil32(ceil32(arg2.length)) + 205 len 20].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call mem[ceil32(ceil32(arg2.length)) + 205 len 20].0xa9059cbb with:
             gas gas_remaining wei
            args mem[ceil32(ceil32(arg2.length)) + 173 len 20], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        staticcall mem[ceil32(ceil32(arg2.length)) + 205 len 20].0x70a08231 with:
                gas gas_remaining wei
               args mem[ceil32(ceil32(arg2.length)) + 173 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 385]:
            revert with 'NH{q', 17
        if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 385] and mem[ceil32(ceil32(arg2.length)) + 577] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 385]:
            revert with 'NH{q', 17
        if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577]) and mem[ceil32(ceil32(arg2.length)) + 353] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577]):
            revert with 'NH{q', 17
        if mem[ceil32(ceil32(arg2.length)) + 385] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
            revert with 'NH{q', 17
        if 10000 * mem[ceil32(ceil32(arg2.length)) + 385] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577])):
            revert with 'NH{q', 17
        if not (10000 * mem[ceil32(ceil32(arg2.length)) + 385]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577]):
            revert with 'NH{q', 18
        require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 173 len 20])
        call mem[ceil32(ceil32(arg2.length)) + 173 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577] * mem[ceil32(ceil32(arg2.length)) + 353]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577] * mem[ceil32(ceil32(arg2.length)) + 353]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 385]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577]), 0, mem[ceil32(ceil32(arg2.length)) + 237 len 20], 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        staticcall mem[ceil32(ceil32(arg2.length)) + 269 len 20].0x70a08231 with:
                gas gas_remaining wei
               args mem[ceil32(ceil32(arg2.length)) + 237 len 20]
        require return_data.size >= 32
        if 0x1000000000000000000000000000000000000000000000000000000000000000 == Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8:
            if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 417]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 417] and mem[ceil32(ceil32(arg2.length)) + 609] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 417]:
                revert with 'NH{q', 17
            if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]) and mem[ceil32(ceil32(arg2.length)) + 449] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]):
                revert with 'NH{q', 17
            if mem[ceil32(ceil32(arg2.length)) + 417] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 'NH{q', 17
            if 10000 * mem[ceil32(ceil32(arg2.length)) + 417] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609])):
                revert with 'NH{q', 17
            if not (10000 * mem[ceil32(ceil32(arg2.length)) + 417]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]):
                revert with 'NH{q', 18
            require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 237 len 20])
            call mem[ceil32(ceil32(arg2.length)) + 237 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 449]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 449]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 417]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]), mem[ceil32(ceil32(arg2.length)) + 301 len 20], 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            staticcall mem[ceil32(ceil32(arg2.length)) + 333 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args mem[ceil32(ceil32(arg2.length)) + 301 len 20]
            require return_data.size >= 32
            if 0x100000000000000000000000000000000000000000000000000000000000000 == Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8:
                if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 481]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481]:
                    revert with 'NH{q', 17
                if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 513] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                    revert with 'NH{q', 17
                if mem[ceil32(ceil32(arg2.length)) + 481] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 'NH{q', 17
                if 10000 * mem[ceil32(ceil32(arg2.length)) + 481] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641])):
                    revert with 'NH{q', 17
                if not (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                    revert with 'NH{q', 18
                require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]), 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0, None
            else:
                if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8 != 0x1100000000000000000000000000000000000000000000000000000000000000:
                    if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 513]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 513] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 513]:
                        revert with 'NH{q', 17
                    if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 481] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]):
                        revert with 'NH{q', 17
                    if mem[ceil32(ceil32(arg2.length)) + 513] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * mem[ceil32(ceil32(arg2.length)) + 513] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641])):
                        revert with 'NH{q', 17
                    if not (10000 * mem[ceil32(ceil32(arg2.length)) + 513]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]):
                        revert with 'NH{q', 18
                    require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                    call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 481]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 481]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 513]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]), 0, 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0
                else:
                    if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 481]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481]:
                        revert with 'NH{q', 17
                    if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 513] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                        revert with 'NH{q', 17
                    if mem[ceil32(ceil32(arg2.length)) + 481] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * mem[ceil32(ceil32(arg2.length)) + 481] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641])):
                        revert with 'NH{q', 17
                    if not (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                        revert with 'NH{q', 18
                    require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                    call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]), 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0
        else:
            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8 != 0x1100000000000000000000000000000000000000000000000000000000000000:
                if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 449]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 449] and mem[ceil32(ceil32(arg2.length)) + 609] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 449]:
                    revert with 'NH{q', 17
                if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609]) and mem[ceil32(ceil32(arg2.length)) + 417] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609]):
                    revert with 'NH{q', 17
                if mem[ceil32(ceil32(arg2.length)) + 449] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 'NH{q', 17
                if 10000 * mem[ceil32(ceil32(arg2.length)) + 449] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609])):
                    revert with 'NH{q', 17
                if not (10000 * mem[ceil32(ceil32(arg2.length)) + 449]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609]):
                    revert with 'NH{q', 18
                require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 237 len 20])
                call mem[ceil32(ceil32(arg2.length)) + 237 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 417]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 417]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 449]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609]), 0, mem[ceil32(ceil32(arg2.length)) + 301 len 20], 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                staticcall mem[ceil32(ceil32(arg2.length)) + 333 len 20].0x70a08231 with:
                        gas gas_remaining wei
                       args mem[ceil32(ceil32(arg2.length)) + 301 len 20]
                require return_data.size >= 32
                if 0x100000000000000000000000000000000000000000000000000000000000000 == Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8:
                    if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 481]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481]:
                        revert with 'NH{q', 17
                    if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 513] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                        revert with 'NH{q', 17
                    if mem[ceil32(ceil32(arg2.length)) + 481] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * mem[ceil32(ceil32(arg2.length)) + 481] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641])):
                        revert with 'NH{q', 17
                    if not (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                        revert with 'NH{q', 18
                    require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                    call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]), 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0, None
                else:
                    if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8 != 0x1100000000000000000000000000000000000000000000000000000000000000:
                        if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 513]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 513] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 513]:
                            revert with 'NH{q', 17
                        if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 481] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]):
                            revert with 'NH{q', 17
                        if mem[ceil32(ceil32(arg2.length)) + 513] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 'NH{q', 17
                        if 10000 * mem[ceil32(ceil32(arg2.length)) + 513] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641])):
                            revert with 'NH{q', 17
                        if not (10000 * mem[ceil32(ceil32(arg2.length)) + 513]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]):
                            revert with 'NH{q', 18
                        require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                        call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 481]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 481]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 513]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]), 0, 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0
                    else:
                        if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 481]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481]:
                            revert with 'NH{q', 17
                        if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 513] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                            revert with 'NH{q', 17
                        if mem[ceil32(ceil32(arg2.length)) + 481] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 'NH{q', 17
                        if 10000 * mem[ceil32(ceil32(arg2.length)) + 481] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641])):
                            revert with 'NH{q', 17
                        if not (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                            revert with 'NH{q', 18
                        require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                        call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]), 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0
            else:
                if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 417]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 417] and mem[ceil32(ceil32(arg2.length)) + 609] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 417]:
                    revert with 'NH{q', 17
                if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]) and mem[ceil32(ceil32(arg2.length)) + 449] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]):
                    revert with 'NH{q', 17
                if mem[ceil32(ceil32(arg2.length)) + 417] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 'NH{q', 17
                if 10000 * mem[ceil32(ceil32(arg2.length)) + 417] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609])):
                    revert with 'NH{q', 17
                if not (10000 * mem[ceil32(ceil32(arg2.length)) + 417]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]):
                    revert with 'NH{q', 18
                require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 237 len 20])
                call mem[ceil32(ceil32(arg2.length)) + 237 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 449]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 449]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 417]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]), mem[ceil32(ceil32(arg2.length)) + 301 len 20], 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                staticcall mem[ceil32(ceil32(arg2.length)) + 333 len 20].0x70a08231 with:
                        gas gas_remaining wei
                       args mem[ceil32(ceil32(arg2.length)) + 301 len 20]
                require return_data.size >= 32
                if 0x100000000000000000000000000000000000000000000000000000000000000 == Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8:
                    if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 481]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481]:
                        revert with 'NH{q', 17
                    if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 513] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                        revert with 'NH{q', 17
                    if mem[ceil32(ceil32(arg2.length)) + 481] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * mem[ceil32(ceil32(arg2.length)) + 481] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641])):
                        revert with 'NH{q', 17
                    if not (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                        revert with 'NH{q', 18
                    require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                    call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]), 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0
                else:
                    if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8 != 0x1100000000000000000000000000000000000000000000000000000000000000:
                        if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 513]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 513] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 513]:
                            revert with 'NH{q', 17
                        if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 481] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]):
                            revert with 'NH{q', 17
                        if mem[ceil32(ceil32(arg2.length)) + 513] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 'NH{q', 17
                        if 10000 * mem[ceil32(ceil32(arg2.length)) + 513] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641])):
                            revert with 'NH{q', 17
                        if not (10000 * mem[ceil32(ceil32(arg2.length)) + 513]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]):
                            revert with 'NH{q', 18
                        require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                        call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 481]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 481]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 513]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]), 0, 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0
                    else:
                        if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 481]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481]:
                            revert with 'NH{q', 17
                        if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 513] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                            revert with 'NH{q', 17
                        if mem[ceil32(ceil32(arg2.length)) + 481] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 'NH{q', 17
                        if 10000 * mem[ceil32(ceil32(arg2.length)) + 481] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641])):
                            revert with 'NH{q', 17
                        if not (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                            revert with 'NH{q', 18
                        require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                        call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]), 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0, None
    else:
        if not -tx.origin + 0x8f0b5bb53cb3897cfe28330d4ac3b18674915ea4:
            require arg2.length >= 640
            if not bool(ceil32(ceil32(arg2.length)) + 737 <= test266151307()):
                revert with 'NH{q', 65
            require mem[128] == mem[140 len 20]
            mem[ceil32(ceil32(arg2.length)) + 97] = mem[128]
            require mem[160] == mem[172 len 20]
            mem[ceil32(ceil32(arg2.length)) + 129] = mem[160]
            require mem[192] == mem[204 len 20]
            mem[ceil32(ceil32(arg2.length)) + 161] = mem[192]
            require mem[224] == mem[236 len 20]
            mem[ceil32(ceil32(arg2.length)) + 193] = mem[224]
            require mem[256] == mem[268 len 20]
            mem[ceil32(ceil32(arg2.length)) + 225] = mem[256]
            require mem[288] == mem[300 len 20]
            mem[ceil32(ceil32(arg2.length)) + 257] = mem[288]
            require mem[320] == mem[332 len 20]
            mem[ceil32(ceil32(arg2.length)) + 289] = mem[320]
            require mem[352] == mem[364 len 20]
            mem[ceil32(ceil32(arg2.length)) + 321] = mem[352]
            mem[ceil32(ceil32(arg2.length)) + 353] = mem[384]
            mem[ceil32(ceil32(arg2.length)) + 385] = mem[416]
            mem[ceil32(ceil32(arg2.length)) + 417] = mem[448]
            mem[ceil32(ceil32(arg2.length)) + 449] = mem[480]
            mem[ceil32(ceil32(arg2.length)) + 481] = mem[512]
            mem[ceil32(ceil32(arg2.length)) + 513] = mem[544]
            mem[ceil32(ceil32(arg2.length)) + 545] = mem[576]
            mem[ceil32(ceil32(arg2.length)) + 577] = mem[608]
            mem[ceil32(ceil32(arg2.length)) + 609] = mem[640]
            mem[ceil32(ceil32(arg2.length)) + 641] = mem[672]
            mem[ceil32(ceil32(arg2.length)) + 673] = mem[704]
            mem[ceil32(ceil32(arg2.length)) + 705] = mem[736]
            staticcall mem[ceil32(ceil32(arg2.length)) + 205 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            call mem[ceil32(ceil32(arg2.length)) + 205 len 20].0xa9059cbb with:
                 gas gas_remaining wei
                args mem[ceil32(ceil32(arg2.length)) + 173 len 20], ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            staticcall mem[ceil32(ceil32(arg2.length)) + 205 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args mem[ceil32(ceil32(arg2.length)) + 173 len 20]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 385]:
                revert with 'NH{q', 17
            if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 385] and mem[ceil32(ceil32(arg2.length)) + 577] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 385]:
                revert with 'NH{q', 17
            if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577]) and mem[ceil32(ceil32(arg2.length)) + 353] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577]):
                revert with 'NH{q', 17
            if mem[ceil32(ceil32(arg2.length)) + 385] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                revert with 'NH{q', 17
            if 10000 * mem[ceil32(ceil32(arg2.length)) + 385] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577])):
                revert with 'NH{q', 17
            if not (10000 * mem[ceil32(ceil32(arg2.length)) + 385]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577]):
                revert with 'NH{q', 18
            require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 173 len 20])
            call mem[ceil32(ceil32(arg2.length)) + 173 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577] * mem[ceil32(ceil32(arg2.length)) + 353]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577] * mem[ceil32(ceil32(arg2.length)) + 353]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 385]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577]), 0, mem[ceil32(ceil32(arg2.length)) + 237 len 20], 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            staticcall mem[ceil32(ceil32(arg2.length)) + 269 len 20].0x70a08231 with:
                    gas gas_remaining wei
                   args mem[ceil32(ceil32(arg2.length)) + 237 len 20]
            require return_data.size >= 32
            if 0x1000000000000000000000000000000000000000000000000000000000000000 == Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8:
                if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 417]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 417] and mem[ceil32(ceil32(arg2.length)) + 609] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 417]:
                    revert with 'NH{q', 17
                if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]) and mem[ceil32(ceil32(arg2.length)) + 449] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]):
                    revert with 'NH{q', 17
                if mem[ceil32(ceil32(arg2.length)) + 417] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 'NH{q', 17
                if 10000 * mem[ceil32(ceil32(arg2.length)) + 417] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609])):
                    revert with 'NH{q', 17
                if not (10000 * mem[ceil32(ceil32(arg2.length)) + 417]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]):
                    revert with 'NH{q', 18
                require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 237 len 20])
                call mem[ceil32(ceil32(arg2.length)) + 237 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 449]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 449]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 417]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]), mem[ceil32(ceil32(arg2.length)) + 301 len 20], 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                staticcall mem[ceil32(ceil32(arg2.length)) + 333 len 20].0x70a08231 with:
                        gas gas_remaining wei
                       args mem[ceil32(ceil32(arg2.length)) + 301 len 20]
                require return_data.size >= 32
                if 0x100000000000000000000000000000000000000000000000000000000000000 == Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8:
                    if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 481]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481]:
                        revert with 'NH{q', 17
                    if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 513] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                        revert with 'NH{q', 17
                    if mem[ceil32(ceil32(arg2.length)) + 481] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * mem[ceil32(ceil32(arg2.length)) + 481] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641])):
                        revert with 'NH{q', 17
                    if not (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                        revert with 'NH{q', 18
                    require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                    call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]), 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0, None
                else:
                    if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8 != 0x1100000000000000000000000000000000000000000000000000000000000000:
                        if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 513]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 513] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 513]:
                            revert with 'NH{q', 17
                        if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 481] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]):
                            revert with 'NH{q', 17
                        if mem[ceil32(ceil32(arg2.length)) + 513] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 'NH{q', 17
                        if 10000 * mem[ceil32(ceil32(arg2.length)) + 513] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641])):
                            revert with 'NH{q', 17
                        if not (10000 * mem[ceil32(ceil32(arg2.length)) + 513]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]):
                            revert with 'NH{q', 18
                        require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                        call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 481]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 481]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 513]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]), 0, 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0, None
                    else:
                        if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 481]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481]:
                            revert with 'NH{q', 17
                        if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 513] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                            revert with 'NH{q', 17
                        if mem[ceil32(ceil32(arg2.length)) + 481] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 'NH{q', 17
                        if 10000 * mem[ceil32(ceil32(arg2.length)) + 481] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641])):
                            revert with 'NH{q', 17
                        if not (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                            revert with 'NH{q', 18
                        require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                        call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]), 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0
            else:
                if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8 != 0x1100000000000000000000000000000000000000000000000000000000000000:
                    if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 449]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 449] and mem[ceil32(ceil32(arg2.length)) + 609] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 449]:
                        revert with 'NH{q', 17
                    if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609]) and mem[ceil32(ceil32(arg2.length)) + 417] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609]):
                        revert with 'NH{q', 17
                    if mem[ceil32(ceil32(arg2.length)) + 449] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * mem[ceil32(ceil32(arg2.length)) + 449] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609])):
                        revert with 'NH{q', 17
                    if not (10000 * mem[ceil32(ceil32(arg2.length)) + 449]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609]):
                        revert with 'NH{q', 18
                    require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 237 len 20])
                    call mem[ceil32(ceil32(arg2.length)) + 237 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 417]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 417]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 449]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609]), 0, mem[ceil32(ceil32(arg2.length)) + 301 len 20], 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    staticcall mem[ceil32(ceil32(arg2.length)) + 333 len 20].0x70a08231 with:
                            gas gas_remaining wei
                           args mem[ceil32(ceil32(arg2.length)) + 301 len 20]
                    require return_data.size >= 32
                    if 0x100000000000000000000000000000000000000000000000000000000000000 == Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8:
                        if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 481]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481]:
                            revert with 'NH{q', 17
                        if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 513] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                            revert with 'NH{q', 17
                        if mem[ceil32(ceil32(arg2.length)) + 481] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 'NH{q', 17
                        if 10000 * mem[ceil32(ceil32(arg2.length)) + 481] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641])):
                            revert with 'NH{q', 17
                        if not (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                            revert with 'NH{q', 18
                        require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                        call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]), 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0
                    else:
                        if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8 != 0x1100000000000000000000000000000000000000000000000000000000000000:
                            if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 513]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 513] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 513]:
                                revert with 'NH{q', 17
                            if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 481] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                revert with 'NH{q', 17
                            if mem[ceil32(ceil32(arg2.length)) + 513] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 'NH{q', 17
                            if 10000 * mem[ceil32(ceil32(arg2.length)) + 513] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                revert with 'NH{q', 17
                            if not (10000 * mem[ceil32(ceil32(arg2.length)) + 513]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                revert with 'NH{q', 18
                            require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                            call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 481]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 481]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 513]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]), 0, 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0
                        else:
                            if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 481]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481]:
                                revert with 'NH{q', 17
                            if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 513] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                revert with 'NH{q', 17
                            if mem[ceil32(ceil32(arg2.length)) + 481] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 'NH{q', 17
                            if 10000 * mem[ceil32(ceil32(arg2.length)) + 481] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                revert with 'NH{q', 17
                            if not (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                revert with 'NH{q', 18
                            require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                            call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]), 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0
                else:
                    if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 417]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 417] and mem[ceil32(ceil32(arg2.length)) + 609] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 417]:
                        revert with 'NH{q', 17
                    if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]) and mem[ceil32(ceil32(arg2.length)) + 449] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]):
                        revert with 'NH{q', 17
                    if mem[ceil32(ceil32(arg2.length)) + 417] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * mem[ceil32(ceil32(arg2.length)) + 417] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609])):
                        revert with 'NH{q', 17
                    if not (10000 * mem[ceil32(ceil32(arg2.length)) + 417]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]):
                        revert with 'NH{q', 18
                    require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 237 len 20])
                    call mem[ceil32(ceil32(arg2.length)) + 237 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 449]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 449]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 417]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]), mem[ceil32(ceil32(arg2.length)) + 301 len 20], 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    staticcall mem[ceil32(ceil32(arg2.length)) + 333 len 20].0x70a08231 with:
                            gas gas_remaining wei
                           args mem[ceil32(ceil32(arg2.length)) + 301 len 20]
                    require return_data.size >= 32
                    if 0x100000000000000000000000000000000000000000000000000000000000000 == Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8:
                        if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 481]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481]:
                            revert with 'NH{q', 17
                        if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 513] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                            revert with 'NH{q', 17
                        if mem[ceil32(ceil32(arg2.length)) + 481] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 'NH{q', 17
                        if 10000 * mem[ceil32(ceil32(arg2.length)) + 481] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641])):
                            revert with 'NH{q', 17
                        if not (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                            revert with 'NH{q', 18
                        require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                        call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]), 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0, None
                    else:
                        if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8 != 0x1100000000000000000000000000000000000000000000000000000000000000:
                            if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 513]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 513] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 513]:
                                revert with 'NH{q', 17
                            if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 481] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                revert with 'NH{q', 17
                            if mem[ceil32(ceil32(arg2.length)) + 513] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 'NH{q', 17
                            if 10000 * mem[ceil32(ceil32(arg2.length)) + 513] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                revert with 'NH{q', 17
                            if not (10000 * mem[ceil32(ceil32(arg2.length)) + 513]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                revert with 'NH{q', 18
                            require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                            call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 481]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 481]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 513]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]), 0, 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0, None
                        else:
                            if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 481]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481]:
                                revert with 'NH{q', 17
                            if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 513] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                revert with 'NH{q', 17
                            if mem[ceil32(ceil32(arg2.length)) + 481] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 'NH{q', 17
                            if 10000 * mem[ceil32(ceil32(arg2.length)) + 481] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                revert with 'NH{q', 17
                            if not (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                revert with 'NH{q', 18
                            require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                            call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]), 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0
        else:
            if not -tx.origin + 0x42e1fcf92202d171fbd0ae3171dcc3fa7cf83c18:
                require arg2.length >= 640
                if not bool(ceil32(ceil32(arg2.length)) + 737 <= test266151307()):
                    revert with 'NH{q', 65
                require mem[128] == mem[140 len 20]
                mem[ceil32(ceil32(arg2.length)) + 97] = mem[128]
                require mem[160] == mem[172 len 20]
                mem[ceil32(ceil32(arg2.length)) + 129] = mem[160]
                require mem[192] == mem[204 len 20]
                mem[ceil32(ceil32(arg2.length)) + 161] = mem[192]
                require mem[224] == mem[236 len 20]
                mem[ceil32(ceil32(arg2.length)) + 193] = mem[224]
                require mem[256] == mem[268 len 20]
                mem[ceil32(ceil32(arg2.length)) + 225] = mem[256]
                require mem[288] == mem[300 len 20]
                mem[ceil32(ceil32(arg2.length)) + 257] = mem[288]
                require mem[320] == mem[332 len 20]
                mem[ceil32(ceil32(arg2.length)) + 289] = mem[320]
                require mem[352] == mem[364 len 20]
                mem[ceil32(ceil32(arg2.length)) + 321] = mem[352]
                mem[ceil32(ceil32(arg2.length)) + 353] = mem[384]
                mem[ceil32(ceil32(arg2.length)) + 385] = mem[416]
                mem[ceil32(ceil32(arg2.length)) + 417] = mem[448]
                mem[ceil32(ceil32(arg2.length)) + 449] = mem[480]
                mem[ceil32(ceil32(arg2.length)) + 481] = mem[512]
                mem[ceil32(ceil32(arg2.length)) + 513] = mem[544]
                mem[ceil32(ceil32(arg2.length)) + 545] = mem[576]
                mem[ceil32(ceil32(arg2.length)) + 577] = mem[608]
                mem[ceil32(ceil32(arg2.length)) + 609] = mem[640]
                mem[ceil32(ceil32(arg2.length)) + 641] = mem[672]
                mem[ceil32(ceil32(arg2.length)) + 673] = mem[704]
                mem[ceil32(ceil32(arg2.length)) + 705] = mem[736]
                staticcall mem[ceil32(ceil32(arg2.length)) + 205 len 20].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call mem[ceil32(ceil32(arg2.length)) + 205 len 20].0xa9059cbb with:
                     gas gas_remaining wei
                    args mem[ceil32(ceil32(arg2.length)) + 173 len 20], ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                staticcall mem[ceil32(ceil32(arg2.length)) + 205 len 20].0x70a08231 with:
                        gas gas_remaining wei
                       args mem[ceil32(ceil32(arg2.length)) + 173 len 20]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 385]:
                    revert with 'NH{q', 17
                if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 385] and mem[ceil32(ceil32(arg2.length)) + 577] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 385]:
                    revert with 'NH{q', 17
                if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577]) and mem[ceil32(ceil32(arg2.length)) + 353] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577]):
                    revert with 'NH{q', 17
                if mem[ceil32(ceil32(arg2.length)) + 385] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 'NH{q', 17
                if 10000 * mem[ceil32(ceil32(arg2.length)) + 385] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577])):
                    revert with 'NH{q', 17
                if not (10000 * mem[ceil32(ceil32(arg2.length)) + 385]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577]):
                    revert with 'NH{q', 18
                require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 173 len 20])
                call mem[ceil32(ceil32(arg2.length)) + 173 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577] * mem[ceil32(ceil32(arg2.length)) + 353]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577] * mem[ceil32(ceil32(arg2.length)) + 353]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 385]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577]), 0, mem[ceil32(ceil32(arg2.length)) + 237 len 20], 128, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                staticcall mem[ceil32(ceil32(arg2.length)) + 269 len 20].0x70a08231 with:
                        gas gas_remaining wei
                       args mem[ceil32(ceil32(arg2.length)) + 237 len 20]
                require return_data.size >= 32
                if 0x1000000000000000000000000000000000000000000000000000000000000000 == Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8:
                    if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 417]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 417] and mem[ceil32(ceil32(arg2.length)) + 609] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 417]:
                        revert with 'NH{q', 17
                    if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]) and mem[ceil32(ceil32(arg2.length)) + 449] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]):
                        revert with 'NH{q', 17
                    if mem[ceil32(ceil32(arg2.length)) + 417] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * mem[ceil32(ceil32(arg2.length)) + 417] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609])):
                        revert with 'NH{q', 17
                    if not (10000 * mem[ceil32(ceil32(arg2.length)) + 417]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]):
                        revert with 'NH{q', 18
                    require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 237 len 20])
                    call mem[ceil32(ceil32(arg2.length)) + 237 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 449]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 449]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 417]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]), mem[ceil32(ceil32(arg2.length)) + 301 len 20], 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    staticcall mem[ceil32(ceil32(arg2.length)) + 333 len 20].0x70a08231 with:
                            gas gas_remaining wei
                           args mem[ceil32(ceil32(arg2.length)) + 301 len 20]
                    require return_data.size >= 32
                    if 0x100000000000000000000000000000000000000000000000000000000000000 == Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8:
                        if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 481]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481]:
                            revert with 'NH{q', 17
                        if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 513] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                            revert with 'NH{q', 17
                        if mem[ceil32(ceil32(arg2.length)) + 481] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 'NH{q', 17
                        if 10000 * mem[ceil32(ceil32(arg2.length)) + 481] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641])):
                            revert with 'NH{q', 17
                        if not (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                            revert with 'NH{q', 18
                        require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                        call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]), 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0
                    else:
                        if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8 != 0x1100000000000000000000000000000000000000000000000000000000000000:
                            if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 513]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 513] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 513]:
                                revert with 'NH{q', 17
                            if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 481] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                revert with 'NH{q', 17
                            if mem[ceil32(ceil32(arg2.length)) + 513] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 'NH{q', 17
                            if 10000 * mem[ceil32(ceil32(arg2.length)) + 513] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                revert with 'NH{q', 17
                            if not (10000 * mem[ceil32(ceil32(arg2.length)) + 513]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                revert with 'NH{q', 18
                            require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                            call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 481]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 481]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 513]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]), 0, 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0
                        else:
                            if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 481]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481]:
                                revert with 'NH{q', 17
                            if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 513] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                revert with 'NH{q', 17
                            if mem[ceil32(ceil32(arg2.length)) + 481] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 'NH{q', 17
                            if 10000 * mem[ceil32(ceil32(arg2.length)) + 481] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                revert with 'NH{q', 17
                            if not (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                revert with 'NH{q', 18
                            require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                            call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]), 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0
                else:
                    if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8 != 0x1100000000000000000000000000000000000000000000000000000000000000:
                        if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 449]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 449] and mem[ceil32(ceil32(arg2.length)) + 609] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 449]:
                            revert with 'NH{q', 17
                        if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609]) and mem[ceil32(ceil32(arg2.length)) + 417] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609]):
                            revert with 'NH{q', 17
                        if mem[ceil32(ceil32(arg2.length)) + 449] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 'NH{q', 17
                        if 10000 * mem[ceil32(ceil32(arg2.length)) + 449] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609])):
                            revert with 'NH{q', 17
                        if not (10000 * mem[ceil32(ceil32(arg2.length)) + 449]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609]):
                            revert with 'NH{q', 18
                        require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 237 len 20])
                        call mem[ceil32(ceil32(arg2.length)) + 237 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 417]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 417]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 449]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609]), 0, mem[ceil32(ceil32(arg2.length)) + 301 len 20], 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        staticcall mem[ceil32(ceil32(arg2.length)) + 333 len 20].0x70a08231 with:
                                gas gas_remaining wei
                               args mem[ceil32(ceil32(arg2.length)) + 301 len 20]
                        require return_data.size >= 32
                        if 0x100000000000000000000000000000000000000000000000000000000000000 == Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8:
                            if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 481]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481]:
                                revert with 'NH{q', 17
                            if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 513] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                revert with 'NH{q', 17
                            if mem[ceil32(ceil32(arg2.length)) + 481] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 'NH{q', 17
                            if 10000 * mem[ceil32(ceil32(arg2.length)) + 481] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                revert with 'NH{q', 17
                            if not (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                revert with 'NH{q', 18
                            require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                            call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]), 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0, None
                        else:
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8 != 0x1100000000000000000000000000000000000000000000000000000000000000:
                                if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 513]:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 513] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 513]:
                                    revert with 'NH{q', 17
                                if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 481] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                    revert with 'NH{q', 17
                                if mem[ceil32(ceil32(arg2.length)) + 513] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                    revert with 'NH{q', 17
                                if 10000 * mem[ceil32(ceil32(arg2.length)) + 513] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                    revert with 'NH{q', 17
                                if not (10000 * mem[ceil32(ceil32(arg2.length)) + 513]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                    revert with 'NH{q', 18
                                require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                                call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 481]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 481]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 513]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]), 0, 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0, None
                            else:
                                if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 481]:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481]:
                                    revert with 'NH{q', 17
                                if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 513] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                    revert with 'NH{q', 17
                                if mem[ceil32(ceil32(arg2.length)) + 481] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                    revert with 'NH{q', 17
                                if 10000 * mem[ceil32(ceil32(arg2.length)) + 481] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                    revert with 'NH{q', 17
                                if not (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                    revert with 'NH{q', 18
                                require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                                call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]), 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0, None
                    else:
                        if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 417]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 417] and mem[ceil32(ceil32(arg2.length)) + 609] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 417]:
                            revert with 'NH{q', 17
                        if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]) and mem[ceil32(ceil32(arg2.length)) + 449] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]):
                            revert with 'NH{q', 17
                        if mem[ceil32(ceil32(arg2.length)) + 417] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 'NH{q', 17
                        if 10000 * mem[ceil32(ceil32(arg2.length)) + 417] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609])):
                            revert with 'NH{q', 17
                        if not (10000 * mem[ceil32(ceil32(arg2.length)) + 417]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]):
                            revert with 'NH{q', 18
                        require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 237 len 20])
                        call mem[ceil32(ceil32(arg2.length)) + 237 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 449]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 449]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 417]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]), mem[ceil32(ceil32(arg2.length)) + 301 len 20], 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        staticcall mem[ceil32(ceil32(arg2.length)) + 333 len 20].0x70a08231 with:
                                gas gas_remaining wei
                               args mem[ceil32(ceil32(arg2.length)) + 301 len 20]
                        require return_data.size >= 32
                        if 0x100000000000000000000000000000000000000000000000000000000000000 == Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8:
                            if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 481]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481]:
                                revert with 'NH{q', 17
                            if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 513] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                revert with 'NH{q', 17
                            if mem[ceil32(ceil32(arg2.length)) + 481] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 'NH{q', 17
                            if 10000 * mem[ceil32(ceil32(arg2.length)) + 481] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                revert with 'NH{q', 17
                            if not (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                revert with 'NH{q', 18
                            require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                            call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]), 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0
                        else:
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8 != 0x1100000000000000000000000000000000000000000000000000000000000000:
                                if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 513]:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 513] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 513]:
                                    revert with 'NH{q', 17
                                if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 481] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                    revert with 'NH{q', 17
                                if mem[ceil32(ceil32(arg2.length)) + 513] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                    revert with 'NH{q', 17
                                if 10000 * mem[ceil32(ceil32(arg2.length)) + 513] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                    revert with 'NH{q', 17
                                if not (10000 * mem[ceil32(ceil32(arg2.length)) + 513]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                    revert with 'NH{q', 18
                                require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                                call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 481]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 481]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 513]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]), 0, 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0
                            else:
                                if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 481]:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481]:
                                    revert with 'NH{q', 17
                                if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 513] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                    revert with 'NH{q', 17
                                if mem[ceil32(ceil32(arg2.length)) + 481] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                    revert with 'NH{q', 17
                                if 10000 * mem[ceil32(ceil32(arg2.length)) + 481] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                    revert with 'NH{q', 17
                                if not (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                    revert with 'NH{q', 18
                                require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                                call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]), 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0, None
            else:
                if not -tx.origin + 0x6105fead478be719ab74cd5c3a450d948115df3b:
                    require arg2.length >= 640
                    if not bool(ceil32(ceil32(arg2.length)) + 737 <= test266151307()):
                        revert with 'NH{q', 65
                    require mem[128] == mem[140 len 20]
                    mem[ceil32(ceil32(arg2.length)) + 97] = mem[128]
                    require mem[160] == mem[172 len 20]
                    mem[ceil32(ceil32(arg2.length)) + 129] = mem[160]
                    require mem[192] == mem[204 len 20]
                    mem[ceil32(ceil32(arg2.length)) + 161] = mem[192]
                    require mem[224] == mem[236 len 20]
                    mem[ceil32(ceil32(arg2.length)) + 193] = mem[224]
                    require mem[256] == mem[268 len 20]
                    mem[ceil32(ceil32(arg2.length)) + 225] = mem[256]
                    require mem[288] == mem[300 len 20]
                    mem[ceil32(ceil32(arg2.length)) + 257] = mem[288]
                    require mem[320] == mem[332 len 20]
                    mem[ceil32(ceil32(arg2.length)) + 289] = mem[320]
                    require mem[352] == mem[364 len 20]
                    mem[ceil32(ceil32(arg2.length)) + 321] = mem[352]
                    mem[ceil32(ceil32(arg2.length)) + 353] = mem[384]
                    mem[ceil32(ceil32(arg2.length)) + 385] = mem[416]
                    mem[ceil32(ceil32(arg2.length)) + 417] = mem[448]
                    mem[ceil32(ceil32(arg2.length)) + 449] = mem[480]
                    mem[ceil32(ceil32(arg2.length)) + 481] = mem[512]
                    mem[ceil32(ceil32(arg2.length)) + 513] = mem[544]
                    mem[ceil32(ceil32(arg2.length)) + 545] = mem[576]
                    mem[ceil32(ceil32(arg2.length)) + 577] = mem[608]
                    mem[ceil32(ceil32(arg2.length)) + 609] = mem[640]
                    mem[ceil32(ceil32(arg2.length)) + 641] = mem[672]
                    mem[ceil32(ceil32(arg2.length)) + 673] = mem[704]
                    mem[ceil32(ceil32(arg2.length)) + 705] = mem[736]
                    staticcall mem[ceil32(ceil32(arg2.length)) + 205 len 20].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    call mem[ceil32(ceil32(arg2.length)) + 205 len 20].0xa9059cbb with:
                         gas gas_remaining wei
                        args mem[ceil32(ceil32(arg2.length)) + 173 len 20], ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    staticcall mem[ceil32(ceil32(arg2.length)) + 205 len 20].0x70a08231 with:
                            gas gas_remaining wei
                           args mem[ceil32(ceil32(arg2.length)) + 173 len 20]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 385]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 385] and mem[ceil32(ceil32(arg2.length)) + 577] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 385]:
                        revert with 'NH{q', 17
                    if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577]) and mem[ceil32(ceil32(arg2.length)) + 353] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577]):
                        revert with 'NH{q', 17
                    if mem[ceil32(ceil32(arg2.length)) + 385] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                        revert with 'NH{q', 17
                    if 10000 * mem[ceil32(ceil32(arg2.length)) + 385] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577])):
                        revert with 'NH{q', 17
                    if not (10000 * mem[ceil32(ceil32(arg2.length)) + 385]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577]):
                        revert with 'NH{q', 18
                    require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 173 len 20])
                    call mem[ceil32(ceil32(arg2.length)) + 173 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577] * mem[ceil32(ceil32(arg2.length)) + 353]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577] * mem[ceil32(ceil32(arg2.length)) + 353]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 385]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577]), 0, mem[ceil32(ceil32(arg2.length)) + 237 len 20], 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    staticcall mem[ceil32(ceil32(arg2.length)) + 269 len 20].0x70a08231 with:
                            gas gas_remaining wei
                           args mem[ceil32(ceil32(arg2.length)) + 237 len 20]
                    require return_data.size >= 32
                    if 0x1000000000000000000000000000000000000000000000000000000000000000 == Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8:
                        if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 417]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 417] and mem[ceil32(ceil32(arg2.length)) + 609] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 417]:
                            revert with 'NH{q', 17
                        if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]) and mem[ceil32(ceil32(arg2.length)) + 449] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]):
                            revert with 'NH{q', 17
                        if mem[ceil32(ceil32(arg2.length)) + 417] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 'NH{q', 17
                        if 10000 * mem[ceil32(ceil32(arg2.length)) + 417] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609])):
                            revert with 'NH{q', 17
                        if not (10000 * mem[ceil32(ceil32(arg2.length)) + 417]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]):
                            revert with 'NH{q', 18
                        require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 237 len 20])
                        call mem[ceil32(ceil32(arg2.length)) + 237 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 449]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 449]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 417]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]), mem[ceil32(ceil32(arg2.length)) + 301 len 20], 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        staticcall mem[ceil32(ceil32(arg2.length)) + 333 len 20].0x70a08231 with:
                                gas gas_remaining wei
                               args mem[ceil32(ceil32(arg2.length)) + 301 len 20]
                        require return_data.size >= 32
                        if 0x100000000000000000000000000000000000000000000000000000000000000 == Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8:
                            if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 481]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481]:
                                revert with 'NH{q', 17
                            if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 513] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                revert with 'NH{q', 17
                            if mem[ceil32(ceil32(arg2.length)) + 481] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 'NH{q', 17
                            if 10000 * mem[ceil32(ceil32(arg2.length)) + 481] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                revert with 'NH{q', 17
                            if not (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                revert with 'NH{q', 18
                            require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                            call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]), 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0, None
                        else:
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8 != 0x1100000000000000000000000000000000000000000000000000000000000000:
                                if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 513]:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 513] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 513]:
                                    revert with 'NH{q', 17
                                if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 481] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                    revert with 'NH{q', 17
                                if mem[ceil32(ceil32(arg2.length)) + 513] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                    revert with 'NH{q', 17
                                if 10000 * mem[ceil32(ceil32(arg2.length)) + 513] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                    revert with 'NH{q', 17
                                if not (10000 * mem[ceil32(ceil32(arg2.length)) + 513]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                    revert with 'NH{q', 18
                                require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                                call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 481]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 481]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 513]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]), 0, 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0, None
                            else:
                                if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 481]:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481]:
                                    revert with 'NH{q', 17
                                if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 513] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                    revert with 'NH{q', 17
                                if mem[ceil32(ceil32(arg2.length)) + 481] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                    revert with 'NH{q', 17
                                if 10000 * mem[ceil32(ceil32(arg2.length)) + 481] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                    revert with 'NH{q', 17
                                if not (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                    revert with 'NH{q', 18
                                require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                                call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]), 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0
                    else:
                        if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8 != 0x1100000000000000000000000000000000000000000000000000000000000000:
                            if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 449]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 449] and mem[ceil32(ceil32(arg2.length)) + 609] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 449]:
                                revert with 'NH{q', 17
                            if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609]) and mem[ceil32(ceil32(arg2.length)) + 417] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609]):
                                revert with 'NH{q', 17
                            if mem[ceil32(ceil32(arg2.length)) + 449] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 'NH{q', 17
                            if 10000 * mem[ceil32(ceil32(arg2.length)) + 449] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609])):
                                revert with 'NH{q', 17
                            if not (10000 * mem[ceil32(ceil32(arg2.length)) + 449]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609]):
                                revert with 'NH{q', 18
                            require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 237 len 20])
                            call mem[ceil32(ceil32(arg2.length)) + 237 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 417]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 417]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 449]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609]), 0, mem[ceil32(ceil32(arg2.length)) + 301 len 20], 128, 0
                        else:
                            if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 417]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 417] and mem[ceil32(ceil32(arg2.length)) + 609] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 417]:
                                revert with 'NH{q', 17
                            if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]) and mem[ceil32(ceil32(arg2.length)) + 449] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]):
                                revert with 'NH{q', 17
                            if mem[ceil32(ceil32(arg2.length)) + 417] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 'NH{q', 17
                            if 10000 * mem[ceil32(ceil32(arg2.length)) + 417] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609])):
                                revert with 'NH{q', 17
                            if not (10000 * mem[ceil32(ceil32(arg2.length)) + 417]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]):
                                revert with 'NH{q', 18
                            require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 237 len 20])
                            call mem[ceil32(ceil32(arg2.length)) + 237 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 449]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 449]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 417]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]), mem[ceil32(ceil32(arg2.length)) + 301 len 20], 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        staticcall mem[ceil32(ceil32(arg2.length)) + 333 len 20].0x70a08231 with:
                                gas gas_remaining wei
                               args mem[ceil32(ceil32(arg2.length)) + 301 len 20]
                        require return_data.size >= 32
                        if 0x100000000000000000000000000000000000000000000000000000000000000 == Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8:
                            if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 481]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481]:
                                revert with 'NH{q', 17
                            if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 513] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                revert with 'NH{q', 17
                            if mem[ceil32(ceil32(arg2.length)) + 481] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 'NH{q', 17
                            if 10000 * mem[ceil32(ceil32(arg2.length)) + 481] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                revert with 'NH{q', 17
                            if not (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                revert with 'NH{q', 18
                            require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                            call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]), 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0
                        else:
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8 != 0x1100000000000000000000000000000000000000000000000000000000000000:
                                if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 513]:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 513] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 513]:
                                    revert with 'NH{q', 17
                                if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 481] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                    revert with 'NH{q', 17
                                if mem[ceil32(ceil32(arg2.length)) + 513] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                    revert with 'NH{q', 17
                                if 10000 * mem[ceil32(ceil32(arg2.length)) + 513] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                    revert with 'NH{q', 17
                                if not (10000 * mem[ceil32(ceil32(arg2.length)) + 513]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                    revert with 'NH{q', 18
                                require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                                call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 481]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 481]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 513]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]), 0, 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0, None
                            else:
                                if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 481]:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481]:
                                    revert with 'NH{q', 17
                                if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 513] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                    revert with 'NH{q', 17
                                if mem[ceil32(ceil32(arg2.length)) + 481] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                    revert with 'NH{q', 17
                                if 10000 * mem[ceil32(ceil32(arg2.length)) + 481] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                    revert with 'NH{q', 17
                                if not (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                    revert with 'NH{q', 18
                                require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                                call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]), 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0
                else:
                    if not -tx.origin + 0x2db560c2c2bf877ec2e5bead9d7213619a8ef739:
                        require arg2.length >= 640
                        if not bool(ceil32(ceil32(arg2.length)) + 737 <= test266151307()):
                            revert with 'NH{q', 65
                        require mem[128] == mem[140 len 20]
                        mem[ceil32(ceil32(arg2.length)) + 97] = mem[128]
                        require mem[160] == mem[172 len 20]
                        mem[ceil32(ceil32(arg2.length)) + 129] = mem[160]
                        require mem[192] == mem[204 len 20]
                        mem[ceil32(ceil32(arg2.length)) + 161] = mem[192]
                        require mem[224] == mem[236 len 20]
                        mem[ceil32(ceil32(arg2.length)) + 193] = mem[224]
                        require mem[256] == mem[268 len 20]
                        mem[ceil32(ceil32(arg2.length)) + 225] = mem[256]
                        require mem[288] == mem[300 len 20]
                        mem[ceil32(ceil32(arg2.length)) + 257] = mem[288]
                        require mem[320] == mem[332 len 20]
                        mem[ceil32(ceil32(arg2.length)) + 289] = mem[320]
                        require mem[352] == mem[364 len 20]
                        mem[ceil32(ceil32(arg2.length)) + 321] = mem[352]
                        mem[ceil32(ceil32(arg2.length)) + 353] = mem[384]
                        mem[ceil32(ceil32(arg2.length)) + 385] = mem[416]
                        mem[ceil32(ceil32(arg2.length)) + 417] = mem[448]
                        mem[ceil32(ceil32(arg2.length)) + 449] = mem[480]
                        mem[ceil32(ceil32(arg2.length)) + 481] = mem[512]
                        mem[ceil32(ceil32(arg2.length)) + 513] = mem[544]
                        mem[ceil32(ceil32(arg2.length)) + 545] = mem[576]
                        mem[ceil32(ceil32(arg2.length)) + 577] = mem[608]
                        mem[ceil32(ceil32(arg2.length)) + 609] = mem[640]
                        mem[ceil32(ceil32(arg2.length)) + 641] = mem[672]
                        mem[ceil32(ceil32(arg2.length)) + 673] = mem[704]
                        mem[ceil32(ceil32(arg2.length)) + 705] = mem[736]
                        staticcall mem[ceil32(ceil32(arg2.length)) + 205 len 20].0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        call mem[ceil32(ceil32(arg2.length)) + 205 len 20].0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[ceil32(ceil32(arg2.length)) + 173 len 20], ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        staticcall mem[ceil32(ceil32(arg2.length)) + 205 len 20].0x70a08231 with:
                                gas gas_remaining wei
                               args mem[ceil32(ceil32(arg2.length)) + 173 len 20]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 385]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 385] and mem[ceil32(ceil32(arg2.length)) + 577] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 385]:
                            revert with 'NH{q', 17
                        if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577]) and mem[ceil32(ceil32(arg2.length)) + 353] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577]):
                            revert with 'NH{q', 17
                        if mem[ceil32(ceil32(arg2.length)) + 385] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 'NH{q', 17
                        if 10000 * mem[ceil32(ceil32(arg2.length)) + 385] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577])):
                            revert with 'NH{q', 17
                        if not (10000 * mem[ceil32(ceil32(arg2.length)) + 385]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577]):
                            revert with 'NH{q', 18
                        require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 173 len 20])
                        call mem[ceil32(ceil32(arg2.length)) + 173 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577] * mem[ceil32(ceil32(arg2.length)) + 353]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577] * mem[ceil32(ceil32(arg2.length)) + 353]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 385]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577]), 0, mem[ceil32(ceil32(arg2.length)) + 237 len 20], 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        staticcall mem[ceil32(ceil32(arg2.length)) + 269 len 20].0x70a08231 with:
                                gas gas_remaining wei
                               args mem[ceil32(ceil32(arg2.length)) + 237 len 20]
                        require return_data.size >= 32
                        if 0x1000000000000000000000000000000000000000000000000000000000000000 == Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8:
                            if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 417]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 417] and mem[ceil32(ceil32(arg2.length)) + 609] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 417]:
                                revert with 'NH{q', 17
                            if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]) and mem[ceil32(ceil32(arg2.length)) + 449] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]):
                                revert with 'NH{q', 17
                            if mem[ceil32(ceil32(arg2.length)) + 417] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 'NH{q', 17
                            if 10000 * mem[ceil32(ceil32(arg2.length)) + 417] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609])):
                                revert with 'NH{q', 17
                            if not (10000 * mem[ceil32(ceil32(arg2.length)) + 417]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]):
                                revert with 'NH{q', 18
                            require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 237 len 20])
                            call mem[ceil32(ceil32(arg2.length)) + 237 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 449]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 449]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 417]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]), mem[ceil32(ceil32(arg2.length)) + 301 len 20], 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            staticcall mem[ceil32(ceil32(arg2.length)) + 333 len 20].0x70a08231 with:
                                    gas gas_remaining wei
                                   args mem[ceil32(ceil32(arg2.length)) + 301 len 20]
                            require return_data.size >= 32
                            if 0x100000000000000000000000000000000000000000000000000000000000000 == Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8:
                                if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 481]:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481]:
                                    revert with 'NH{q', 17
                                if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 513] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                    revert with 'NH{q', 17
                                if mem[ceil32(ceil32(arg2.length)) + 481] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                    revert with 'NH{q', 17
                                if 10000 * mem[ceil32(ceil32(arg2.length)) + 481] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                    revert with 'NH{q', 17
                                if not (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                    revert with 'NH{q', 18
                                require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                                call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]), 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0, None
                            else:
                                if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8 != 0x1100000000000000000000000000000000000000000000000000000000000000:
                                    if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 513]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 513] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 513]:
                                        revert with 'NH{q', 17
                                    if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 481] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                        revert with 'NH{q', 17
                                    if mem[ceil32(ceil32(arg2.length)) + 513] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[ceil32(ceil32(arg2.length)) + 513] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                        revert with 'NH{q', 17
                                    if not (10000 * mem[ceil32(ceil32(arg2.length)) + 513]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                        revert with 'NH{q', 18
                                    require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                                    call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 481]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 481]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 513]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]), 0, 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0
                                else:
                                    if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 481]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481]:
                                        revert with 'NH{q', 17
                                    if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 513] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                        revert with 'NH{q', 17
                                    if mem[ceil32(ceil32(arg2.length)) + 481] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[ceil32(ceil32(arg2.length)) + 481] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                        revert with 'NH{q', 17
                                    if not (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                        revert with 'NH{q', 18
                                    require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                                    call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]), 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0
                        else:
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8 != 0x1100000000000000000000000000000000000000000000000000000000000000:
                                if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 449]:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 449] and mem[ceil32(ceil32(arg2.length)) + 609] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 449]:
                                    revert with 'NH{q', 17
                                if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609]) and mem[ceil32(ceil32(arg2.length)) + 417] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609]):
                                    revert with 'NH{q', 17
                                if mem[ceil32(ceil32(arg2.length)) + 449] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                    revert with 'NH{q', 17
                                if 10000 * mem[ceil32(ceil32(arg2.length)) + 449] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609])):
                                    revert with 'NH{q', 17
                                if not (10000 * mem[ceil32(ceil32(arg2.length)) + 449]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609]):
                                    revert with 'NH{q', 18
                                require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 237 len 20])
                                call mem[ceil32(ceil32(arg2.length)) + 237 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 417]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 417]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 449]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609]), 0, mem[ceil32(ceil32(arg2.length)) + 301 len 20], 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                staticcall mem[ceil32(ceil32(arg2.length)) + 333 len 20].0x70a08231 with:
                                        gas gas_remaining wei
                                       args mem[ceil32(ceil32(arg2.length)) + 301 len 20]
                                require return_data.size >= 32
                                if 0x100000000000000000000000000000000000000000000000000000000000000 == Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8:
                                    if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 481]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481]:
                                        revert with 'NH{q', 17
                                    if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 513] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                        revert with 'NH{q', 17
                                    if mem[ceil32(ceil32(arg2.length)) + 481] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[ceil32(ceil32(arg2.length)) + 481] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                        revert with 'NH{q', 17
                                    if not (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                        revert with 'NH{q', 18
                                    require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                                    call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]), 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0, None
                                else:
                                    if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8 != 0x1100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 513]:
                                            revert with 'NH{q', 17
                                        if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 513] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 513]:
                                            revert with 'NH{q', 17
                                        if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 481] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                            revert with 'NH{q', 17
                                        if mem[ceil32(ceil32(arg2.length)) + 513] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[ceil32(ceil32(arg2.length)) + 513] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                            revert with 'NH{q', 17
                                        if not (10000 * mem[ceil32(ceil32(arg2.length)) + 513]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                            revert with 'NH{q', 18
                                        require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                                        call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 481]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 481]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 513]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]), 0, 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0, None
                                    else:
                                        if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 481]:
                                            revert with 'NH{q', 17
                                        if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481]:
                                            revert with 'NH{q', 17
                                        if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 513] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                            revert with 'NH{q', 17
                                        if mem[ceil32(ceil32(arg2.length)) + 481] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[ceil32(ceil32(arg2.length)) + 481] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                            revert with 'NH{q', 17
                                        if not (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                            revert with 'NH{q', 18
                                        require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                                        call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]), 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0, None
                            else:
                                if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 417]:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 417] and mem[ceil32(ceil32(arg2.length)) + 609] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 417]:
                                    revert with 'NH{q', 17
                                if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]) and mem[ceil32(ceil32(arg2.length)) + 449] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]):
                                    revert with 'NH{q', 17
                                if mem[ceil32(ceil32(arg2.length)) + 417] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                    revert with 'NH{q', 17
                                if 10000 * mem[ceil32(ceil32(arg2.length)) + 417] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609])):
                                    revert with 'NH{q', 17
                                if not (10000 * mem[ceil32(ceil32(arg2.length)) + 417]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]):
                                    revert with 'NH{q', 18
                                require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 237 len 20])
                                call mem[ceil32(ceil32(arg2.length)) + 237 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 449]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 449]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 417]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]), mem[ceil32(ceil32(arg2.length)) + 301 len 20], 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                staticcall mem[ceil32(ceil32(arg2.length)) + 333 len 20].0x70a08231 with:
                                        gas gas_remaining wei
                                       args mem[ceil32(ceil32(arg2.length)) + 301 len 20]
                                require return_data.size >= 32
                                if 0x100000000000000000000000000000000000000000000000000000000000000 == Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8:
                                    if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 481]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481]:
                                        revert with 'NH{q', 17
                                    if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 513] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                        revert with 'NH{q', 17
                                    if mem[ceil32(ceil32(arg2.length)) + 481] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[ceil32(ceil32(arg2.length)) + 481] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                        revert with 'NH{q', 17
                                    if not (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                        revert with 'NH{q', 18
                                    require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                                    call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]), 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0
                                else:
                                    if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8 != 0x1100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 513]:
                                            revert with 'NH{q', 17
                                        if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 513] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 513]:
                                            revert with 'NH{q', 17
                                        if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 481] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                            revert with 'NH{q', 17
                                        if mem[ceil32(ceil32(arg2.length)) + 513] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[ceil32(ceil32(arg2.length)) + 513] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                            revert with 'NH{q', 17
                                        if not (10000 * mem[ceil32(ceil32(arg2.length)) + 513]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                            revert with 'NH{q', 18
                                        require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                                        call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 481]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 481]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 513]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]), 0, 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0
                                    else:
                                        if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 481]:
                                            revert with 'NH{q', 17
                                        if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481]:
                                            revert with 'NH{q', 17
                                        if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 513] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                            revert with 'NH{q', 17
                                        if mem[ceil32(ceil32(arg2.length)) + 481] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[ceil32(ceil32(arg2.length)) + 481] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                            revert with 'NH{q', 17
                                        if not (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                            revert with 'NH{q', 18
                                        require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                                        call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]), 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0, None
                    else:
                        require not -tx.origin + 0x88129629254e340d82f0a205eb9a309374aea3df
                        require arg2.length >= 640
                        if not bool(ceil32(ceil32(arg2.length)) + 737 <= test266151307()):
                            revert with 'NH{q', 65
                        require mem[128] == mem[140 len 20]
                        mem[ceil32(ceil32(arg2.length)) + 97] = mem[128]
                        require mem[160] == mem[172 len 20]
                        mem[ceil32(ceil32(arg2.length)) + 129] = mem[160]
                        require mem[192] == mem[204 len 20]
                        mem[ceil32(ceil32(arg2.length)) + 161] = mem[192]
                        require mem[224] == mem[236 len 20]
                        mem[ceil32(ceil32(arg2.length)) + 193] = mem[224]
                        require mem[256] == mem[268 len 20]
                        mem[ceil32(ceil32(arg2.length)) + 225] = mem[256]
                        require mem[288] == mem[300 len 20]
                        mem[ceil32(ceil32(arg2.length)) + 257] = mem[288]
                        require mem[320] == mem[332 len 20]
                        mem[ceil32(ceil32(arg2.length)) + 289] = mem[320]
                        require mem[352] == mem[364 len 20]
                        mem[ceil32(ceil32(arg2.length)) + 321] = mem[352]
                        mem[ceil32(ceil32(arg2.length)) + 353] = mem[384]
                        mem[ceil32(ceil32(arg2.length)) + 385] = mem[416]
                        mem[ceil32(ceil32(arg2.length)) + 417] = mem[448]
                        mem[ceil32(ceil32(arg2.length)) + 449] = mem[480]
                        mem[ceil32(ceil32(arg2.length)) + 481] = mem[512]
                        mem[ceil32(ceil32(arg2.length)) + 513] = mem[544]
                        mem[ceil32(ceil32(arg2.length)) + 545] = mem[576]
                        mem[ceil32(ceil32(arg2.length)) + 577] = mem[608]
                        mem[ceil32(ceil32(arg2.length)) + 609] = mem[640]
                        mem[ceil32(ceil32(arg2.length)) + 641] = mem[672]
                        mem[ceil32(ceil32(arg2.length)) + 673] = mem[704]
                        mem[ceil32(ceil32(arg2.length)) + 705] = mem[736]
                        staticcall mem[ceil32(ceil32(arg2.length)) + 205 len 20].0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        call mem[ceil32(ceil32(arg2.length)) + 205 len 20].0xa9059cbb with:
                             gas gas_remaining wei
                            args mem[ceil32(ceil32(arg2.length)) + 173 len 20], ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        staticcall mem[ceil32(ceil32(arg2.length)) + 205 len 20].0x70a08231 with:
                                gas gas_remaining wei
                               args mem[ceil32(ceil32(arg2.length)) + 173 len 20]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 385]:
                            revert with 'NH{q', 17
                        if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 385] and mem[ceil32(ceil32(arg2.length)) + 577] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 385]:
                            revert with 'NH{q', 17
                        if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577]) and mem[ceil32(ceil32(arg2.length)) + 353] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577]):
                            revert with 'NH{q', 17
                        if mem[ceil32(ceil32(arg2.length)) + 385] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                            revert with 'NH{q', 17
                        if 10000 * mem[ceil32(ceil32(arg2.length)) + 385] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577])):
                            revert with 'NH{q', 17
                        if not (10000 * mem[ceil32(ceil32(arg2.length)) + 385]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577]):
                            revert with 'NH{q', 18
                        require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 173 len 20])
                        call mem[ceil32(ceil32(arg2.length)) + 173 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577] * mem[ceil32(ceil32(arg2.length)) + 353]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577] * mem[ceil32(ceil32(arg2.length)) + 353]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 385]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 577]) - (mem[ceil32(ceil32(arg2.length)) + 385] * mem[ceil32(ceil32(arg2.length)) + 577]), 0, mem[ceil32(ceil32(arg2.length)) + 237 len 20], 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        staticcall mem[ceil32(ceil32(arg2.length)) + 269 len 20].0x70a08231 with:
                                gas gas_remaining wei
                               args mem[ceil32(ceil32(arg2.length)) + 237 len 20]
                        require return_data.size >= 32
                        if 0x1000000000000000000000000000000000000000000000000000000000000000 == Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8:
                            if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 417]:
                                revert with 'NH{q', 17
                            if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 417] and mem[ceil32(ceil32(arg2.length)) + 609] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 417]:
                                revert with 'NH{q', 17
                            if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]) and mem[ceil32(ceil32(arg2.length)) + 449] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]):
                                revert with 'NH{q', 17
                            if mem[ceil32(ceil32(arg2.length)) + 417] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                revert with 'NH{q', 17
                            if 10000 * mem[ceil32(ceil32(arg2.length)) + 417] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609])):
                                revert with 'NH{q', 17
                            if not (10000 * mem[ceil32(ceil32(arg2.length)) + 417]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]):
                                revert with 'NH{q', 18
                            require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 237 len 20])
                            call mem[ceil32(ceil32(arg2.length)) + 237 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 449]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 449]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 417]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]), mem[ceil32(ceil32(arg2.length)) + 301 len 20], 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            staticcall mem[ceil32(ceil32(arg2.length)) + 333 len 20].0x70a08231 with:
                                    gas gas_remaining wei
                                   args mem[ceil32(ceil32(arg2.length)) + 301 len 20]
                            require return_data.size >= 32
                            if 0x100000000000000000000000000000000000000000000000000000000000000 == Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8:
                                if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 481]:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481]:
                                    revert with 'NH{q', 17
                                if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 513] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                    revert with 'NH{q', 17
                                if mem[ceil32(ceil32(arg2.length)) + 481] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                    revert with 'NH{q', 17
                                if 10000 * mem[ceil32(ceil32(arg2.length)) + 481] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                    revert with 'NH{q', 17
                                if not (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                    revert with 'NH{q', 18
                                require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                                call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]), 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0, None
                            else:
                                if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8 != 0x1100000000000000000000000000000000000000000000000000000000000000:
                                    if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 513]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 513] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 513]:
                                        revert with 'NH{q', 17
                                    if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 481] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                        revert with 'NH{q', 17
                                    if mem[ceil32(ceil32(arg2.length)) + 513] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[ceil32(ceil32(arg2.length)) + 513] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                        revert with 'NH{q', 17
                                    if not (10000 * mem[ceil32(ceil32(arg2.length)) + 513]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                        revert with 'NH{q', 18
                                    require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                                    call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 481]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 481]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 513]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]), 0, 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0, None
                                else:
                                    if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 481]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481]:
                                        revert with 'NH{q', 17
                                    if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 513] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                        revert with 'NH{q', 17
                                    if mem[ceil32(ceil32(arg2.length)) + 481] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[ceil32(ceil32(arg2.length)) + 481] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                        revert with 'NH{q', 17
                                    if not (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                        revert with 'NH{q', 18
                                    require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                                    call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]), 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0, None
                        else:
                            if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8 != 0x1100000000000000000000000000000000000000000000000000000000000000:
                                if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 449]:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 449] and mem[ceil32(ceil32(arg2.length)) + 609] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 449]:
                                    revert with 'NH{q', 17
                                if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609]) and mem[ceil32(ceil32(arg2.length)) + 417] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609]):
                                    revert with 'NH{q', 17
                                if mem[ceil32(ceil32(arg2.length)) + 449] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                    revert with 'NH{q', 17
                                if 10000 * mem[ceil32(ceil32(arg2.length)) + 449] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609])):
                                    revert with 'NH{q', 17
                                if not (10000 * mem[ceil32(ceil32(arg2.length)) + 449]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609]):
                                    revert with 'NH{q', 18
                                require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 237 len 20])
                                call mem[ceil32(ceil32(arg2.length)) + 237 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 417]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 417]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 449]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 449] * mem[ceil32(ceil32(arg2.length)) + 609]), 0, mem[ceil32(ceil32(arg2.length)) + 301 len 20], 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                staticcall mem[ceil32(ceil32(arg2.length)) + 333 len 20].0x70a08231 with:
                                        gas gas_remaining wei
                                       args mem[ceil32(ceil32(arg2.length)) + 301 len 20]
                                require return_data.size >= 32
                                if 0x100000000000000000000000000000000000000000000000000000000000000 == Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8:
                                    if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 481]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481]:
                                        revert with 'NH{q', 17
                                    if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 513] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                        revert with 'NH{q', 17
                                    if mem[ceil32(ceil32(arg2.length)) + 481] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[ceil32(ceil32(arg2.length)) + 481] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                        revert with 'NH{q', 17
                                    if not (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                        revert with 'NH{q', 18
                                    require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                                    call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]), 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0, None
                                else:
                                    if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8 != 0x1100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 513]:
                                            revert with 'NH{q', 17
                                        if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 513] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 513]:
                                            revert with 'NH{q', 17
                                        if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 481] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                            revert with 'NH{q', 17
                                        if mem[ceil32(ceil32(arg2.length)) + 513] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[ceil32(ceil32(arg2.length)) + 513] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                            revert with 'NH{q', 17
                                        if not (10000 * mem[ceil32(ceil32(arg2.length)) + 513]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                            revert with 'NH{q', 18
                                        require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                                        call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 481]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 481]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 513]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]), 0, 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0, None
                                    else:
                                        if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 481]:
                                            revert with 'NH{q', 17
                                        if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481]:
                                            revert with 'NH{q', 17
                                        if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 513] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                            revert with 'NH{q', 17
                                        if mem[ceil32(ceil32(arg2.length)) + 481] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[ceil32(ceil32(arg2.length)) + 481] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                            revert with 'NH{q', 17
                                        if not (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                            revert with 'NH{q', 18
                                        require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                                        call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]), 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0, None
                            else:
                                if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 417]:
                                    revert with 'NH{q', 17
                                if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 417] and mem[ceil32(ceil32(arg2.length)) + 609] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 417]:
                                    revert with 'NH{q', 17
                                if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]) and mem[ceil32(ceil32(arg2.length)) + 449] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]):
                                    revert with 'NH{q', 17
                                if mem[ceil32(ceil32(arg2.length)) + 417] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                    revert with 'NH{q', 17
                                if 10000 * mem[ceil32(ceil32(arg2.length)) + 417] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609])):
                                    revert with 'NH{q', 17
                                if not (10000 * mem[ceil32(ceil32(arg2.length)) + 417]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]):
                                    revert with 'NH{q', 18
                                require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 237 len 20])
                                call mem[ceil32(ceil32(arg2.length)) + 237 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 449]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609] * mem[ceil32(ceil32(arg2.length)) + 449]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 417]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 609]) - (mem[ceil32(ceil32(arg2.length)) + 417] * mem[ceil32(ceil32(arg2.length)) + 609]), mem[ceil32(ceil32(arg2.length)) + 301 len 20], 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                staticcall mem[ceil32(ceil32(arg2.length)) + 333 len 20].0x70a08231 with:
                                        gas gas_remaining wei
                                       args mem[ceil32(ceil32(arg2.length)) + 301 len 20]
                                require return_data.size >= 32
                                if 0x100000000000000000000000000000000000000000000000000000000000000 == Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8:
                                    if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 481]:
                                        revert with 'NH{q', 17
                                    if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481]:
                                        revert with 'NH{q', 17
                                    if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 513] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                        revert with 'NH{q', 17
                                    if mem[ceil32(ceil32(arg2.length)) + 481] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                        revert with 'NH{q', 17
                                    if 10000 * mem[ceil32(ceil32(arg2.length)) + 481] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                        revert with 'NH{q', 17
                                    if not (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                        revert with 'NH{q', 18
                                    require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                                    call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]), 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0
                                else:
                                    if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) + 256, 1) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 673, ('mask_shl', 256, 5, 0, ('add', 31, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))), 32))), 0) - 8 != 0x1100000000000000000000000000000000000000000000000000000000000000:
                                        if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 513]:
                                            revert with 'NH{q', 17
                                        if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 513] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 513]:
                                            revert with 'NH{q', 17
                                        if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 481] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                            revert with 'NH{q', 17
                                        if mem[ceil32(ceil32(arg2.length)) + 513] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[ceil32(ceil32(arg2.length)) + 513] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                            revert with 'NH{q', 17
                                        if not (10000 * mem[ceil32(ceil32(arg2.length)) + 513]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                            revert with 'NH{q', 18
                                        require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                                        call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 481]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 481]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 513]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 513] * mem[ceil32(ceil32(arg2.length)) + 641]), 0, 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0
                                    else:
                                        if ext_call.return_data[0] < mem[ceil32(ceil32(arg2.length)) + 481]:
                                            revert with 'NH{q', 17
                                        if ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481] and mem[ceil32(ceil32(arg2.length)) + 641] > -1 / ext_call.return_data[0] - mem[ceil32(ceil32(arg2.length)) + 481]:
                                            revert with 'NH{q', 17
                                        if (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]) and mem[ceil32(ceil32(arg2.length)) + 513] > -1 / (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                            revert with 'NH{q', 17
                                        if mem[ceil32(ceil32(arg2.length)) + 481] > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                                            revert with 'NH{q', 17
                                        if 10000 * mem[ceil32(ceil32(arg2.length)) + 481] > !((ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641])):
                                            revert with 'NH{q', 17
                                        if not (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]):
                                            revert with 'NH{q', 18
                                        require ext_code.size(mem[ceil32(ceil32(arg2.length)) + 301 len 20])
                                        call mem[ceil32(ceil32(arg2.length)) + 301 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                             gas gas_remaining wei
                                            args 0, (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641] * mem[ceil32(ceil32(arg2.length)) + 513]) / (10000 * mem[ceil32(ceil32(arg2.length)) + 481]) + (ext_call.return_data[0] * mem[ceil32(ceil32(arg2.length)) + 641]) - (mem[ceil32(ceil32(arg2.length)) + 481] * mem[ceil32(ceil32(arg2.length)) + 641]), 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, 128, 0, None
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call mem[ceil32(ceil32(arg2.length)) + 141 len 20].0x23b872dd with:
         gas gas_remaining wei
        args 0xf7fd3edfcd7c3c51f01e06557fa18ff7fb46e0ef, mem[ceil32(ceil32(arg2.length)) + 109 len 20], mem[ceil32(ceil32(arg2.length)) + 705]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return arg2[all]
}



}
