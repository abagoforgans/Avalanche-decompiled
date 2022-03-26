contract main {




// =====================  Runtime code  =====================


function sub_06f6a017(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 5
    return ('storage', 256, 0, ('add', 16, ('param', 'arg1')))
}

function sub_853082a6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 5
    return ('storage', 160, 0, ('add', 11, ('param', 'arg1')))
}

function _fallback() payable {
    revert
}

function sub_64ac8dd1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = bool(('storage', 8, 0, ('sha3', ('data', ('call.data', ('add', 36, ('param', 'arg1')), ('cd', ('add', 4, ('param', 'arg1')))), 22))))
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_27638545(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require bool(('storage', 8, 0, ('add', 2, ('sha3', ('data', 'msg.sender', 21))))) != 1
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160] = 22
    if 1 == bool(('storage', 8, 0, ('sha3', ('data', ('mask_shl', ('mask_shl', 253, 0, 3, ('add', 32, ('mul', -1, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))), ('cd', ('add', 4, ('param', 'arg2'))))), 0, 0, 0), ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('cd', ('add', 4, ('param', 'arg2')))), ('add', ('cd', ('add', 4, ('param', 'arg1'))), ('mul', -1, ('cd', ('add', 4, ('param', 'arg2')))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2')))))))))))):
        revert with 0, 
                    32,
                    55,
                    0x2e43686f6f7365206120646966666572656e74206e69636b6e616d652c2074686174206f6e6520697320616c72656164792074616b656e,
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + 283 len 9]
    uint256(stor[sha3(sha3(msg.sender, 21))][]) = Array(len=arg1.length, data=arg1[all])
    uint256(stor[sha3(sha3(msg.sender, 21) + 1)][]) = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = !(256^(-(arg1.length % 32) + 32) - 1) and call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], Mask(8 * -(arg1.length % 32) + 32, -(8 * -(arg1.length % 32) + 32) + 256, 0) << (8 * -(arg1.length % 32) + 32) - 256 or 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160] = 22
    uint8(stor[sha3(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len arg1.length - arg2.length + ceil32(arg2.length)])]) = 1
    uint8(stor[sha3(msg.sender, 21) + 2]) = 1
}

function sub_cb1d2b51(?) payable {
    require calldata.size - 4 >= 32
    mem[32] = 21
    mem[96] = ('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21))))
    mem[0] = sha3(arg1, 21)
    mem[128] = ('storage', 256, 0, ('sha3', ('sha3', ('data', ('param', 'arg1'), 21))))
    idx = 128
    s = 0
    while ('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21)))) + 96 > idx:
        mem[idx + 32] = ('storage', 256, 0, ('add', 1, ('var', 1), ('sha3', ('sha3', ('data', ('param', 'arg1'), 21)))))
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21))))) + ceil32(('storage', 256, 0, ('length', ('add', 1, ('sha3', ('data', ('param', 'arg1'), 21)))))) + 160
    mem[ceil32(('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21))))) + 128] = ('storage', 256, 0, ('length', ('add', 1, ('sha3', ('data', ('param', 'arg1'), 21)))))
    mem[ceil32(('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21))))) + 160] = ('storage', 256, 0, ('sha3', ('add', 1, ('sha3', ('data', ('param', 'arg1'), 21)))))
    idx = ceil32(('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21))))) + 160
    s = 0
    while ceil32(('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21))))) + ('storage', 256, 0, ('length', ('add', 1, ('sha3', ('data', ('param', 'arg1'), 21))))) + 128 > idx:
        mem[idx + 32] = ('storage', 256, 0, ('add', 1, ('var', 1), ('sha3', ('add', 1, ('sha3', ('data', ('param', 'arg1'), 21))))))
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21))))) + ceil32(('storage', 256, 0, ('length', ('add', 1, ('sha3', ('data', ('param', 'arg1'), 21)))))) + 224] = bool(('storage', 8, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), 21)))))
    mem[ceil32(('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21))))) + ceil32(('storage', 256, 0, ('length', ('add', 1, ('sha3', ('data', ('param', 'arg1'), 21)))))) + 256] = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), 21))))
    mem[ceil32(('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21))))) + ceil32(('storage', 256, 0, ('length', ('add', 1, ('sha3', ('data', ('param', 'arg1'), 21)))))) + 288] = ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), 21))))
    mem[ceil32(('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21))))) + ceil32(('storage', 256, 0, ('length', ('add', 1, ('sha3', ('data', ('param', 'arg1'), 21)))))) + 160] = 160
    mem[ceil32(('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21))))) + ceil32(('storage', 256, 0, ('length', ('add', 1, ('sha3', ('data', ('param', 'arg1'), 21)))))) + 320] = ('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21))))
    mem[ceil32(('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21))))) + ceil32(('storage', 256, 0, ('length', ('add', 1, ('sha3', ('data', ('param', 'arg1'), 21)))))) + 352 len ceil32(('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21)))))] = mem[128 len ceil32(('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21)))))]
    mem[ceil32(('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21))))) + ceil32(('storage', 256, 0, ('length', ('add', 1, ('sha3', ('data', ('param', 'arg1'), 21)))))) + 192] = ('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21)))) + 192
    mem[('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21)))) + ceil32(('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21))))) + ceil32(('storage', 256, 0, ('length', ('add', 1, ('sha3', ('data', ('param', 'arg1'), 21)))))) + 352] = ('storage', 256, 0, ('length', ('add', 1, ('sha3', ('data', ('param', 'arg1'), 21)))))
    mem[('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21)))) + ceil32(('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21))))) + ceil32(('storage', 256, 0, ('length', ('add', 1, ('sha3', ('data', ('param', 'arg1'), 21)))))) + 384 len ceil32(('storage', 256, 0, ('length', ('add', 1, ('sha3', ('data', ('param', 'arg1'), 21))))))] = mem[ceil32(('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21))))) + 160 len ceil32(('storage', 256, 0, ('length', ('add', 1, ('sha3', ('data', ('param', 'arg1'), 21))))))]
    if not ('storage', 5, 0, ('length', ('add', 1, ('sha3', ('data', ('param', 'arg1'), 21))))):
        return Array(len=('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21)))), data=mem[128 len ceil32(('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21)))))], mem[(2 * ceil32(('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21)))))) + ceil32(('storage', 256, 0, ('length', ('add', 1, ('sha3', ('data', ('param', 'arg1'), 21)))))) + 352 len ('storage', 256, 0, ('length', ('add', 1, ('sha3', ('data', ('param', 'arg1'), 21))))) + ('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21)))) + -ceil32(('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21))))) + 32]), 
               ('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21)))) + 192,
               bool(('storage', 8, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), 21))))),
               ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), 21)))),
               ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), 21))))
    mem[floor32(('storage', 256, 0, ('length', ('add', 1, ('sha3', ('data', ('param', 'arg1'), 21)))))) + ('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21)))) + ceil32(('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21))))) + ceil32(('storage', 256, 0, ('length', ('add', 1, ('sha3', ('data', ('param', 'arg1'), 21)))))) + 384] = mem[floor32(('storage', 256, 0, ('length', ('add', 1, ('sha3', ('data', ('param', 'arg1'), 21)))))) + ('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21)))) + ceil32(('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21))))) + ceil32(('storage', 256, 0, ('length', ('add', 1, ('sha3', ('data', ('param', 'arg1'), 21)))))) + -('storage', 5, 0, ('length', ('add', 1, ('sha3', ('data', ('param', 'arg1'), 21))))) + 416 len ('storage', 5, 0, ('length', ('add', 1, ('sha3', ('data', ('param', 'arg1'), 21)))))]
    return Array(len=('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21)))), data=mem[128 len ceil32(('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21)))))], mem[(2 * ceil32(('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21)))))) + ceil32(('storage', 256, 0, ('length', ('add', 1, ('sha3', ('data', ('param', 'arg1'), 21)))))) + 352 len floor32(('storage', 256, 0, ('length', ('add', 1, ('sha3', ('data', ('param', 'arg1'), 21)))))) + ('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21)))) + -ceil32(('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21))))) + 64]), 
           ('storage', 256, 0, ('length', ('sha3', ('data', ('param', 'arg1'), 21)))) + 192,
           bool(('storage', 8, 0, ('add', 2, ('sha3', ('data', ('param', 'arg1'), 21))))),
           ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('param', 'arg1'), 21)))),
           ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('param', 'arg1'), 21))))
}

function claimJackpot() payable {
    if block.timestamp <= ('storage', 256, 0, 7):
        revert with 0, 'Competition still running'
    if ('storage', 8, 0, 10):
        revert with 0, 'Jackpot already claimed'
    uint8(stor[10]) = 1
    if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) > ('storage', 256, 0, 7):
        revert with 0, 'SafeMath: subtraction overflow'
    if ('storage', 256, 0, 7) - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) + ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) < ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))):
        revert with 0, 'SafeMath: addition overflow'
    uint256(stor[sha3(('storage', 160, 0, 2), 21) + 3]) = ('storage', 256, 0, 7) - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) + ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
    idx = 0
    while idx < 5:
        if ('storage', 160, 0, ('add', 11, ('var', 0))) != ('storage', 160, 0, 2):
            idx = idx + 1
            continue 
        s = 0
        while s < 5:
            if ('storage', 256, 0, ('add', 16, ('var', 1))) >= ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))):
                s = s + 1
                continue 
            t = idx
            while t > s:
                require t - 1 < 5
                require t < 5
                uint256(stor[t + 16]) = ('storage', 256, 0, ('add', 15, ('var', 2)))
                require t - 1 < 5
                require t < 5
                address(stor[t + 11]) = ('storage', 160, 0, ('add', 10, ('var', 2)))
                t = t - 1
                continue 
            require s < 5
            uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
            address(stor[s + 11]) = ('storage', 160, 0, 2)
            if not ('storage', 256, 0, 6):
                require ext_code.size(('storage', 160, 0, 1))
                staticcall ('storage', 160, 0, 1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(('storage', 160, 0, 1))
                if 0 <= ext_call.return_data[0]:
                    call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ('storage', 160, 0, 11), 0
                else:
                    call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ('storage', 160, 0, 11), ext_call.return_data[0]
            else:
                if 6000 * ('storage', 256, 0, 6) / ('storage', 256, 0, 6) != 6000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(('storage', 160, 0, 1))
                staticcall ('storage', 160, 0, 1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(('storage', 160, 0, 1))
                if 6000 * ('storage', 256, 0, 6) / 10000 <= ext_call.return_data[0]:
                    call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ('storage', 160, 0, 11), 6000 * ('storage', 256, 0, 6) / 10000
                else:
                    call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ('storage', 160, 0, 11), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                            mem[198 len 30]
            if not ('storage', 256, 0, 6):
                require ext_code.size(('storage', 160, 0, 1))
                staticcall ('storage', 160, 0, 1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(('storage', 160, 0, 1))
                if 0 <= ext_call.return_data[0]:
                    call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ('storage', 160, 0, 12), 0
                else:
                    call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ('storage', 160, 0, 12), ext_call.return_data[0]
            else:
                if 3000 * ('storage', 256, 0, 6) / ('storage', 256, 0, 6) != 3000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(('storage', 160, 0, 1))
                staticcall ('storage', 160, 0, 1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(('storage', 160, 0, 1))
                if 3000 * ('storage', 256, 0, 6) / 10000 <= ext_call.return_data[0]:
                    call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ('storage', 160, 0, 12), 3000 * ('storage', 256, 0, 6) / 10000
                else:
                    call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ('storage', 160, 0, 12), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                            mem[198 len 30]
            if not ('storage', 256, 0, 6):
                require ext_code.size(('storage', 160, 0, 1))
                staticcall ('storage', 160, 0, 1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(('storage', 160, 0, 1))
                if 0 <= ext_call.return_data[0]:
                    call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ('storage', 160, 0, 13), 0
                else:
                    call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ('storage', 160, 0, 13), ext_call.return_data[0]
            else:
                if 1000 * ('storage', 256, 0, 6) / ('storage', 256, 0, 6) != 1000:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require ext_code.size(('storage', 160, 0, 1))
                staticcall ('storage', 160, 0, 1).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(('storage', 160, 0, 1))
                if 1000 * ('storage', 256, 0, 6) / 10000 <= ext_call.return_data[0]:
                    call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ('storage', 160, 0, 13), 1000 * ('storage', 256, 0, 6) / 10000
                else:
                    call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ('storage', 160, 0, 13), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                            mem[198 len 30]
        t = idx
        while t > s:
            require t - 1 < 5
            require t < 5
            uint256(stor[t + 16]) = ('storage', 256, 0, ('add', 15, ('var', 2)))
            require t - 1 < 5
            require t < 5
            address(stor[t + 11]) = ('storage', 160, 0, ('add', 10, ('var', 2)))
            t = t - 1
            continue 
        require s < 5
        uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
        address(stor[s + 11]) = ('storage', 160, 0, 2)
        if not ('storage', 256, 0, 6):
            require ext_code.size(('storage', 160, 0, 1))
            staticcall ('storage', 160, 0, 1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(('storage', 160, 0, 1))
            if 0 <= ext_call.return_data[0]:
                call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args ('storage', 160, 0, 11), 0
            else:
                call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args ('storage', 160, 0, 11), ext_call.return_data[0]
        else:
            if 6000 * ('storage', 256, 0, 6) / ('storage', 256, 0, 6) != 6000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(('storage', 160, 0, 1))
            staticcall ('storage', 160, 0, 1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(('storage', 160, 0, 1))
            if 6000 * ('storage', 256, 0, 6) / 10000 <= ext_call.return_data[0]:
                call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args ('storage', 160, 0, 11), 6000 * ('storage', 256, 0, 6) / 10000
            else:
                call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args ('storage', 160, 0, 11), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                        mem[198 len 30]
        if not ('storage', 256, 0, 6):
            require ext_code.size(('storage', 160, 0, 1))
            staticcall ('storage', 160, 0, 1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(('storage', 160, 0, 1))
            if 0 <= ext_call.return_data[0]:
                call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args ('storage', 160, 0, 12), 0
            else:
                call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args ('storage', 160, 0, 12), ext_call.return_data[0]
        else:
            if 3000 * ('storage', 256, 0, 6) / ('storage', 256, 0, 6) != 3000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(('storage', 160, 0, 1))
            staticcall ('storage', 160, 0, 1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(('storage', 160, 0, 1))
            if 3000 * ('storage', 256, 0, 6) / 10000 <= ext_call.return_data[0]:
                call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args ('storage', 160, 0, 12), 3000 * ('storage', 256, 0, 6) / 10000
            else:
                call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args ('storage', 160, 0, 12), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                        mem[198 len 30]
        if not ('storage', 256, 0, 6):
            require ext_code.size(('storage', 160, 0, 1))
            staticcall ('storage', 160, 0, 1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(('storage', 160, 0, 1))
            if 0 <= ext_call.return_data[0]:
                call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args ('storage', 160, 0, 13), 0
            else:
                call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args ('storage', 160, 0, 13), ext_call.return_data[0]
        else:
            if 1000 * ('storage', 256, 0, 6) / ('storage', 256, 0, 6) != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(('storage', 160, 0, 1))
            staticcall ('storage', 160, 0, 1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(('storage', 160, 0, 1))
            if 1000 * ('storage', 256, 0, 6) / 10000 <= ext_call.return_data[0]:
                call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args ('storage', 160, 0, 13), 1000 * ('storage', 256, 0, 6) / 10000
            else:
                call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args ('storage', 160, 0, 13), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                        mem[198 len 30]
    idx = 0
    while idx < 5:
        if ('storage', 256, 0, ('add', 16, ('var', 0))) >= ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))):
            idx = idx + 1
            continue 
        s = 4
        while s > idx:
            require s - 1 < 5
            require s < 5
            uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 15, ('var', 1)))
            require s - 1 < 5
            require s < 5
            address(stor[s + 11]) = ('storage', 160, 0, ('add', 10, ('var', 1)))
            s = s - 1
            continue 
        if idx < 4:
            uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
            address(stor[idx + 11]) = ('storage', 160, 0, 2)
        else:
            if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) > ('storage', 256, 0, 20):
                require idx < 5
                uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                address(stor[idx + 11]) = ('storage', 160, 0, 2)
        if not ('storage', 256, 0, 6):
            require ext_code.size(('storage', 160, 0, 1))
            staticcall ('storage', 160, 0, 1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(('storage', 160, 0, 1))
            if 0 <= ext_call.return_data[0]:
                call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args ('storage', 160, 0, 11), 0
            else:
                call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args ('storage', 160, 0, 11), ext_call.return_data[0]
        else:
            if 6000 * ('storage', 256, 0, 6) / ('storage', 256, 0, 6) != 6000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(('storage', 160, 0, 1))
            staticcall ('storage', 160, 0, 1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(('storage', 160, 0, 1))
            if 6000 * ('storage', 256, 0, 6) / 10000 <= ext_call.return_data[0]:
                call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args ('storage', 160, 0, 11), 6000 * ('storage', 256, 0, 6) / 10000
            else:
                call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args ('storage', 160, 0, 11), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                        mem[198 len 30]
        if not ('storage', 256, 0, 6):
            require ext_code.size(('storage', 160, 0, 1))
            staticcall ('storage', 160, 0, 1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(('storage', 160, 0, 1))
            if 0 <= ext_call.return_data[0]:
                call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args ('storage', 160, 0, 12), 0
            else:
                call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args ('storage', 160, 0, 12), ext_call.return_data[0]
        else:
            if 3000 * ('storage', 256, 0, 6) / ('storage', 256, 0, 6) != 3000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(('storage', 160, 0, 1))
            staticcall ('storage', 160, 0, 1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(('storage', 160, 0, 1))
            if 3000 * ('storage', 256, 0, 6) / 10000 <= ext_call.return_data[0]:
                call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args ('storage', 160, 0, 12), 3000 * ('storage', 256, 0, 6) / 10000
            else:
                call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args ('storage', 160, 0, 12), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                        mem[198 len 30]
        if not ('storage', 256, 0, 6):
            require ext_code.size(('storage', 160, 0, 1))
            staticcall ('storage', 160, 0, 1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(('storage', 160, 0, 1))
            if 0 <= ext_call.return_data[0]:
                call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args ('storage', 160, 0, 13), 0
            else:
                call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args ('storage', 160, 0, 13), ext_call.return_data[0]
        else:
            if 1000 * ('storage', 256, 0, 6) / ('storage', 256, 0, 6) != 1000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(('storage', 160, 0, 1))
            staticcall ('storage', 160, 0, 1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(('storage', 160, 0, 1))
            if 1000 * ('storage', 256, 0, 6) / 10000 <= ext_call.return_data[0]:
                call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args ('storage', 160, 0, 13), 1000 * ('storage', 256, 0, 6) / 10000
            else:
                call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args ('storage', 160, 0, 13), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                        mem[198 len 30]
    s = 4
    while s > idx:
        require s - 1 < 5
        require s < 5
        uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 15, ('var', 1)))
        require s - 1 < 5
        require s < 5
        address(stor[s + 11]) = ('storage', 160, 0, ('add', 10, ('var', 1)))
        s = s - 1
        continue 
    if idx < 4:
        uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
        address(stor[idx + 11]) = ('storage', 160, 0, 2)
    else:
        if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) > ('storage', 256, 0, 20):
            require idx < 5
            uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
            address(stor[idx + 11]) = ('storage', 160, 0, 2)
    if not ('storage', 256, 0, 6):
        require ext_code.size(('storage', 160, 0, 1))
        staticcall ('storage', 160, 0, 1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(('storage', 160, 0, 1))
        if 0 <= ext_call.return_data[0]:
            call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args ('storage', 160, 0, 11), 0
        else:
            call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args ('storage', 160, 0, 11), ext_call.return_data[0]
    else:
        if 6000 * ('storage', 256, 0, 6) / ('storage', 256, 0, 6) != 6000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(('storage', 160, 0, 1))
        staticcall ('storage', 160, 0, 1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(('storage', 160, 0, 1))
        if 6000 * ('storage', 256, 0, 6) / 10000 <= ext_call.return_data[0]:
            call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args ('storage', 160, 0, 11), 6000 * ('storage', 256, 0, 6) / 10000
        else:
            call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args ('storage', 160, 0, 11), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                    mem[198 len 30]
    if not ('storage', 256, 0, 6):
        require ext_code.size(('storage', 160, 0, 1))
        staticcall ('storage', 160, 0, 1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(('storage', 160, 0, 1))
        if 0 <= ext_call.return_data[0]:
            call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args ('storage', 160, 0, 12), 0
        else:
            call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args ('storage', 160, 0, 12), ext_call.return_data[0]
    else:
        if 3000 * ('storage', 256, 0, 6) / ('storage', 256, 0, 6) != 3000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(('storage', 160, 0, 1))
        staticcall ('storage', 160, 0, 1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(('storage', 160, 0, 1))
        if 3000 * ('storage', 256, 0, 6) / 10000 <= ext_call.return_data[0]:
            call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args ('storage', 160, 0, 12), 3000 * ('storage', 256, 0, 6) / 10000
        else:
            call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args ('storage', 160, 0, 12), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                    mem[198 len 30]
    if not ('storage', 256, 0, 6):
        require ext_code.size(('storage', 160, 0, 1))
        staticcall ('storage', 160, 0, 1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(('storage', 160, 0, 1))
        if 0 <= ext_call.return_data[0]:
            call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args ('storage', 160, 0, 13), 0
        else:
            call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args ('storage', 160, 0, 13), ext_call.return_data[0]
    else:
        if 1000 * ('storage', 256, 0, 6) / ('storage', 256, 0, 6) != 1000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(('storage', 160, 0, 1))
        staticcall ('storage', 160, 0, 1).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(('storage', 160, 0, 1))
        if 1000 * ('storage', 256, 0, 6) / 10000 <= ext_call.return_data[0]:
            call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args ('storage', 160, 0, 13), 1000 * ('storage', 256, 0, 6) / 10000
        else:
            call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args ('storage', 160, 0, 13), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                    mem[198 len 30]
}

function sub_f40a3685(?) payable {
    require calldata.size - 4 >= 32
    if block.timestamp >= ('storage', 256, 0, 7):
        revert with 0, 'The competiton is over.'
    if not ('storage', 8, 0, ('add', 2, ('sha3', ('data', 'msg.sender', 21)))):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x2e506c6561736520726567697374657220796f75722050656e6775696e206669727374,
                    mem[199 len 29]
    if msg.sender == ('storage', 160, 0, 2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x64596f752061726520616c726561647920746865204b696e67206f662050656e6775696e73,
                    mem[201 len 27]
    if arg1 <= ('storage', 256, 0, 3):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x77596f757220626964206973206c6f776572207468616e207468652063757272656e74204b696e67277320626964,
                    mem[210 len 18]
    if ('storage', 256, 0, 8) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
        revert with 0, 'SafeMath: addition overflow'
    if arg1 < ('storage', 256, 0, 8) + ('storage', 256, 0, 3):
        revert with 0, 'Bad bid'
    if ('storage', 256, 0, 9) + ('storage', 256, 0, 3) < ('storage', 256, 0, 3):
        revert with 0, 'SafeMath: addition overflow'
    if arg1 > ('storage', 256, 0, 9) + ('storage', 256, 0, 3):
        revert with 0, 'Bad bid'
    if not ('storage', 256, 0, 3):
        if not ('storage', 256, 0, 3):
            if not ('storage', 256, 0, 3):
                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if block.timestamp - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) + ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) < ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(stor[sha3(('storage', 160, 0, 2), 21) + 3]) = block.timestamp - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) + ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                uint256(stor[sha3(msg.sender, 21) + 4]) = block.timestamp
                idx = 0
                while idx < 5:
                    if ('storage', 160, 0, ('add', 11, ('var', 0))) != ('storage', 160, 0, 2):
                        idx = idx + 1
                        continue 
                    s = 0
                    while s < 5:
                        if ('storage', 256, 0, ('add', 16, ('var', 1))) >= ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))):
                            s = s + 1
                            continue 
                        t = idx
                        while t > s:
                            require t - 1 < 5
                            require t < 5
                            uint256(stor[t + 16]) = ('storage', 256, 0, ('add', 15, ('var', 2)))
                            require t - 1 < 5
                            require t < 5
                            address(stor[t + 11]) = ('storage', 160, 0, ('add', 10, ('var', 2)))
                            t = t - 1
                            continue 
                        require s < 5
                        uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                        address(stor[s + 11]) = ('storage', 160, 0, 2)
                        require ext_code.size(('storage', 160, 0, 1))
                        call ('storage', 160, 0, 1).leave(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(('storage', 160, 0, 0))
                        staticcall ('storage', 160, 0, 0).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(('storage', 160, 0, 0))
                        call ('storage', 160, 0, 0).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 1), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(('storage', 160, 0, 1))
                        staticcall ('storage', 160, 0, 1).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(('storage', 160, 0, 1))
                        if 0 <= ext_call.return_data[0]:
                            call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args ('storage', 160, 0, 2), 0
                        else:
                            call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args ('storage', 160, 0, 2), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        34,
                                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                        mem[198 len 30]
                        if ('storage', 256, 0, 6) < ('storage', 256, 0, 6):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(('storage', 160, 0, 1))
                        call ('storage', 160, 0, 1).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor[2]) = msg.sender or Mask(96, 160, ('storage', 256, 0, 2))
                        uint256(stor[3]) = arg1
                    t = idx
                    while t > s:
                        require t - 1 < 5
                        require t < 5
                        uint256(stor[t + 16]) = ('storage', 256, 0, ('add', 15, ('var', 2)))
                        require t - 1 < 5
                        require t < 5
                        address(stor[t + 11]) = ('storage', 160, 0, ('add', 10, ('var', 2)))
                        t = t - 1
                        continue 
                    require s < 5
                    uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                    address(stor[s + 11]) = ('storage', 160, 0, 2)
                    require ext_code.size(('storage', 160, 0, 1))
                    call ('storage', 160, 0, 1).leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 0))
                    staticcall ('storage', 160, 0, 0).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 0))
                    call ('storage', 160, 0, 0).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ('storage', 160, 0, 1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 1))
                    staticcall ('storage', 160, 0, 1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 1))
                    if 0 <= ext_call.return_data[0]:
                        call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 2), 0
                    else:
                        call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 2), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                    mem[198 len 30]
                    if ('storage', 256, 0, 6) < ('storage', 256, 0, 6):
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(('storage', 160, 0, 1))
                    call ('storage', 160, 0, 1).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor[2]) = msg.sender or Mask(96, 160, ('storage', 256, 0, 2))
                    uint256(stor[3]) = arg1
                idx = 0
                while idx < 5:
                    if ('storage', 256, 0, ('add', 16, ('var', 0))) >= ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))):
                        idx = idx + 1
                        continue 
                    s = 4
                    while s > idx:
                        require s - 1 < 5
                        require s < 5
                        uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 15, ('var', 1)))
                        require s - 1 < 5
                        require s < 5
                        address(stor[s + 11]) = ('storage', 160, 0, ('add', 10, ('var', 1)))
                        s = s - 1
                        continue 
                    if idx < 4:
                        uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                        address(stor[idx + 11]) = ('storage', 160, 0, 2)
                    else:
                        if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) > ('storage', 256, 0, 20):
                            require idx < 5
                            uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                            address(stor[idx + 11]) = ('storage', 160, 0, 2)
                    require ext_code.size(('storage', 160, 0, 1))
                    call ('storage', 160, 0, 1).leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 0))
                    staticcall ('storage', 160, 0, 0).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 0))
                    call ('storage', 160, 0, 0).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ('storage', 160, 0, 1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 1))
                    staticcall ('storage', 160, 0, 1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 1))
                    if 0 <= ext_call.return_data[0]:
                        call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 2), 0
                    else:
                        call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 2), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                    mem[198 len 30]
                    if ('storage', 256, 0, 6) < ('storage', 256, 0, 6):
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(('storage', 160, 0, 1))
                    call ('storage', 160, 0, 1).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor[2]) = msg.sender or Mask(96, 160, ('storage', 256, 0, 2))
                    uint256(stor[3]) = arg1
                s = 4
                while s > idx:
                    require s - 1 < 5
                    require s < 5
                    uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 15, ('var', 1)))
                    require s - 1 < 5
                    require s < 5
                    address(stor[s + 11]) = ('storage', 160, 0, ('add', 10, ('var', 1)))
                    s = s - 1
                    continue 
                if idx < 4:
                    uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                    address(stor[idx + 11]) = ('storage', 160, 0, 2)
                else:
                    if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) > ('storage', 256, 0, 20):
                        require idx < 5
                        uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                        address(stor[idx + 11]) = ('storage', 160, 0, 2)
                require ext_code.size(('storage', 160, 0, 1))
                call ('storage', 160, 0, 1).leave(uint256 rg1) with:
                     gas gas_remaining wei
                    args 0
            else:
                if ('storage', 256, 0, 5) * ('storage', 256, 0, 3) / ('storage', 256, 0, 3) != ('storage', 256, 0, 5):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if block.timestamp - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) + ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) < ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(stor[sha3(('storage', 160, 0, 2), 21) + 3]) = block.timestamp - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) + ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                uint256(stor[sha3(msg.sender, 21) + 4]) = block.timestamp
                idx = 0
                while idx < 5:
                    if ('storage', 160, 0, ('add', 11, ('var', 0))) != ('storage', 160, 0, 2):
                        idx = idx + 1
                        continue 
                    s = 0
                    while s < 5:
                        if ('storage', 256, 0, ('add', 16, ('var', 1))) >= ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))):
                            s = s + 1
                            continue 
                        t = idx
                        while t > s:
                            require t - 1 < 5
                            require t < 5
                            uint256(stor[t + 16]) = ('storage', 256, 0, ('add', 15, ('var', 2)))
                            require t - 1 < 5
                            require t < 5
                            address(stor[t + 11]) = ('storage', 160, 0, ('add', 10, ('var', 2)))
                            t = t - 1
                            continue 
                        require s < 5
                        uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                        address(stor[s + 11]) = ('storage', 160, 0, 2)
                        require ext_code.size(('storage', 160, 0, 1))
                        call ('storage', 160, 0, 1).leave(uint256 rg1) with:
                             gas gas_remaining wei
                            args (('storage', 256, 0, 5) * ('storage', 256, 0, 3) / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(('storage', 160, 0, 0))
                        staticcall ('storage', 160, 0, 0).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(('storage', 160, 0, 0))
                        call ('storage', 160, 0, 0).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 1), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(('storage', 160, 0, 1))
                        staticcall ('storage', 160, 0, 1).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(('storage', 160, 0, 1))
                        if 0 <= ext_call.return_data[0]:
                            call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args ('storage', 160, 0, 2), 0
                        else:
                            call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args ('storage', 160, 0, 2), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        34,
                                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                        mem[198 len 30]
                        if ('storage', 256, 0, 6) < ('storage', 256, 0, 6):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(('storage', 160, 0, 1))
                        call ('storage', 160, 0, 1).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor[2]) = msg.sender or Mask(96, 160, ('storage', 256, 0, 2))
                        uint256(stor[3]) = arg1
                    t = idx
                    while t > s:
                        require t - 1 < 5
                        require t < 5
                        uint256(stor[t + 16]) = ('storage', 256, 0, ('add', 15, ('var', 2)))
                        require t - 1 < 5
                        require t < 5
                        address(stor[t + 11]) = ('storage', 160, 0, ('add', 10, ('var', 2)))
                        t = t - 1
                        continue 
                    require s < 5
                    uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                    address(stor[s + 11]) = ('storage', 160, 0, 2)
                    require ext_code.size(('storage', 160, 0, 1))
                    call ('storage', 160, 0, 1).leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args (('storage', 256, 0, 5) * ('storage', 256, 0, 3) / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 0))
                    staticcall ('storage', 160, 0, 0).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 0))
                    call ('storage', 160, 0, 0).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ('storage', 160, 0, 1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 1))
                    staticcall ('storage', 160, 0, 1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 1))
                    if 0 <= ext_call.return_data[0]:
                        call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 2), 0
                    else:
                        call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 2), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                    mem[198 len 30]
                    if ('storage', 256, 0, 6) < ('storage', 256, 0, 6):
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(('storage', 160, 0, 1))
                    call ('storage', 160, 0, 1).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor[2]) = msg.sender or Mask(96, 160, ('storage', 256, 0, 2))
                    uint256(stor[3]) = arg1
                idx = 0
                while idx < 5:
                    if ('storage', 256, 0, ('add', 16, ('var', 0))) >= ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))):
                        idx = idx + 1
                        continue 
                    s = 4
                    while s > idx:
                        require s - 1 < 5
                        require s < 5
                        uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 15, ('var', 1)))
                        require s - 1 < 5
                        require s < 5
                        address(stor[s + 11]) = ('storage', 160, 0, ('add', 10, ('var', 1)))
                        s = s - 1
                        continue 
                    if idx < 4:
                        uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                        address(stor[idx + 11]) = ('storage', 160, 0, 2)
                    else:
                        if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) > ('storage', 256, 0, 20):
                            require idx < 5
                            uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                            address(stor[idx + 11]) = ('storage', 160, 0, 2)
                    require ext_code.size(('storage', 160, 0, 1))
                    call ('storage', 160, 0, 1).leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args (('storage', 256, 0, 5) * ('storage', 256, 0, 3) / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 0))
                    staticcall ('storage', 160, 0, 0).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 0))
                    call ('storage', 160, 0, 0).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ('storage', 160, 0, 1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 1))
                    staticcall ('storage', 160, 0, 1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 1))
                    if 0 <= ext_call.return_data[0]:
                        call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 2), 0
                    else:
                        call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 2), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                    mem[198 len 30]
                    if ('storage', 256, 0, 6) < ('storage', 256, 0, 6):
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(('storage', 160, 0, 1))
                    call ('storage', 160, 0, 1).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor[2]) = msg.sender or Mask(96, 160, ('storage', 256, 0, 2))
                    uint256(stor[3]) = arg1
                s = 4
                while s > idx:
                    require s - 1 < 5
                    require s < 5
                    uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 15, ('var', 1)))
                    require s - 1 < 5
                    require s < 5
                    address(stor[s + 11]) = ('storage', 160, 0, ('add', 10, ('var', 1)))
                    s = s - 1
                    continue 
                if idx < 4:
                    uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                    address(stor[idx + 11]) = ('storage', 160, 0, 2)
                else:
                    if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) > ('storage', 256, 0, 20):
                        require idx < 5
                        uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                        address(stor[idx + 11]) = ('storage', 160, 0, 2)
                require ext_code.size(('storage', 160, 0, 1))
                call ('storage', 160, 0, 1).leave(uint256 rg1) with:
                     gas gas_remaining wei
                    args (('storage', 256, 0, 5) * ('storage', 256, 0, 3) / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(('storage', 160, 0, 0))
            staticcall ('storage', 160, 0, 0).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(('storage', 160, 0, 0))
            call ('storage', 160, 0, 0).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args ('storage', 160, 0, 1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(('storage', 160, 0, 1))
            staticcall ('storage', 160, 0, 1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(('storage', 160, 0, 1))
            if 0 <= ext_call.return_data[0]:
                call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args ('storage', 160, 0, 2), 0
            else:
                call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args ('storage', 160, 0, 2), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                            mem[198 len 30]
            if ('storage', 256, 0, 6) < ('storage', 256, 0, 6):
                revert with 0, 'SafeMath: addition overflow'
        else:
            if ('storage', 256, 0, 4) * ('storage', 256, 0, 3) / ('storage', 256, 0, 3) != ('storage', 256, 0, 4):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not ('storage', 256, 0, 3):
                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if block.timestamp - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) + ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) < ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(stor[sha3(('storage', 160, 0, 2), 21) + 3]) = block.timestamp - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) + ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                uint256(stor[sha3(msg.sender, 21) + 4]) = block.timestamp
                idx = 0
                while idx < 5:
                    if ('storage', 160, 0, ('add', 11, ('var', 0))) != ('storage', 160, 0, 2):
                        idx = idx + 1
                        continue 
                    s = 0
                    while s < 5:
                        if ('storage', 256, 0, ('add', 16, ('var', 1))) >= ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))):
                            s = s + 1
                            continue 
                        t = idx
                        while t > s:
                            require t - 1 < 5
                            require t < 5
                            uint256(stor[t + 16]) = ('storage', 256, 0, ('add', 15, ('var', 2)))
                            require t - 1 < 5
                            require t < 5
                            address(stor[t + 11]) = ('storage', 160, 0, ('add', 10, ('var', 2)))
                            t = t - 1
                            continue 
                        require s < 5
                        uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                        address(stor[s + 11]) = ('storage', 160, 0, 2)
                        require ext_code.size(('storage', 160, 0, 1))
                        call ('storage', 160, 0, 1).leave(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(('storage', 160, 0, 0))
                        staticcall ('storage', 160, 0, 0).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(('storage', 160, 0, 0))
                        call ('storage', 160, 0, 0).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 1), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(('storage', 160, 0, 1))
                        staticcall ('storage', 160, 0, 1).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(('storage', 160, 0, 1))
                        if 0 <= ext_call.return_data[0]:
                            call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args ('storage', 160, 0, 2), 0
                        else:
                            call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args ('storage', 160, 0, 2), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        34,
                                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                        mem[198 len 30]
                        if (('storage', 256, 0, 4) * ('storage', 256, 0, 3) / 10000) + ('storage', 256, 0, 6) < ('storage', 256, 0, 6):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(stor[6]) = (('storage', 256, 0, 4) * ('storage', 256, 0, 3) / 10000) + ('storage', 256, 0, 6)
                        require ext_code.size(('storage', 160, 0, 1))
                        call ('storage', 160, 0, 1).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor[2]) = msg.sender or Mask(96, 160, ('storage', 256, 0, 2))
                        uint256(stor[3]) = arg1
                    t = idx
                    while t > s:
                        require t - 1 < 5
                        require t < 5
                        uint256(stor[t + 16]) = ('storage', 256, 0, ('add', 15, ('var', 2)))
                        require t - 1 < 5
                        require t < 5
                        address(stor[t + 11]) = ('storage', 160, 0, ('add', 10, ('var', 2)))
                        t = t - 1
                        continue 
                    require s < 5
                    uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                    address(stor[s + 11]) = ('storage', 160, 0, 2)
                    require ext_code.size(('storage', 160, 0, 1))
                    call ('storage', 160, 0, 1).leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 0))
                    staticcall ('storage', 160, 0, 0).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 0))
                    call ('storage', 160, 0, 0).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ('storage', 160, 0, 1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 1))
                    staticcall ('storage', 160, 0, 1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 1))
                    if 0 <= ext_call.return_data[0]:
                        call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 2), 0
                    else:
                        call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 2), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                    mem[198 len 30]
                    if (('storage', 256, 0, 4) * ('storage', 256, 0, 3) / 10000) + ('storage', 256, 0, 6) < ('storage', 256, 0, 6):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(stor[6]) = (('storage', 256, 0, 4) * ('storage', 256, 0, 3) / 10000) + ('storage', 256, 0, 6)
                    require ext_code.size(('storage', 160, 0, 1))
                    call ('storage', 160, 0, 1).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor[2]) = msg.sender or Mask(96, 160, ('storage', 256, 0, 2))
                    uint256(stor[3]) = arg1
                idx = 0
                while idx < 5:
                    if ('storage', 256, 0, ('add', 16, ('var', 0))) >= ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))):
                        idx = idx + 1
                        continue 
                    s = 4
                    while s > idx:
                        require s - 1 < 5
                        require s < 5
                        uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 15, ('var', 1)))
                        require s - 1 < 5
                        require s < 5
                        address(stor[s + 11]) = ('storage', 160, 0, ('add', 10, ('var', 1)))
                        s = s - 1
                        continue 
                    if idx < 4:
                        uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                        address(stor[idx + 11]) = ('storage', 160, 0, 2)
                    else:
                        if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) > ('storage', 256, 0, 20):
                            require idx < 5
                            uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                            address(stor[idx + 11]) = ('storage', 160, 0, 2)
                    require ext_code.size(('storage', 160, 0, 1))
                    call ('storage', 160, 0, 1).leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 0))
                    staticcall ('storage', 160, 0, 0).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 0))
                    call ('storage', 160, 0, 0).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ('storage', 160, 0, 1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 1))
                    staticcall ('storage', 160, 0, 1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 1))
                    if 0 <= ext_call.return_data[0]:
                        call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 2), 0
                    else:
                        call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 2), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                    mem[198 len 30]
                    if (('storage', 256, 0, 4) * ('storage', 256, 0, 3) / 10000) + ('storage', 256, 0, 6) < ('storage', 256, 0, 6):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(stor[6]) = (('storage', 256, 0, 4) * ('storage', 256, 0, 3) / 10000) + ('storage', 256, 0, 6)
                    require ext_code.size(('storage', 160, 0, 1))
                    call ('storage', 160, 0, 1).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor[2]) = msg.sender or Mask(96, 160, ('storage', 256, 0, 2))
                    uint256(stor[3]) = arg1
                s = 4
                while s > idx:
                    require s - 1 < 5
                    require s < 5
                    uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 15, ('var', 1)))
                    require s - 1 < 5
                    require s < 5
                    address(stor[s + 11]) = ('storage', 160, 0, ('add', 10, ('var', 1)))
                    s = s - 1
                    continue 
                if idx < 4:
                    uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                    address(stor[idx + 11]) = ('storage', 160, 0, 2)
                else:
                    if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) > ('storage', 256, 0, 20):
                        require idx < 5
                        uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                        address(stor[idx + 11]) = ('storage', 160, 0, 2)
                require ext_code.size(('storage', 160, 0, 1))
                call ('storage', 160, 0, 1).leave(uint256 rg1) with:
                     gas gas_remaining wei
                    args 0
            else:
                if ('storage', 256, 0, 5) * ('storage', 256, 0, 3) / ('storage', 256, 0, 3) != ('storage', 256, 0, 5):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if block.timestamp - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) + ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) < ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(stor[sha3(('storage', 160, 0, 2), 21) + 3]) = block.timestamp - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) + ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                uint256(stor[sha3(msg.sender, 21) + 4]) = block.timestamp
                idx = 0
                while idx < 5:
                    if ('storage', 160, 0, ('add', 11, ('var', 0))) != ('storage', 160, 0, 2):
                        idx = idx + 1
                        continue 
                    s = 0
                    while s < 5:
                        if ('storage', 256, 0, ('add', 16, ('var', 1))) >= ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))):
                            s = s + 1
                            continue 
                        t = idx
                        while t > s:
                            require t - 1 < 5
                            require t < 5
                            uint256(stor[t + 16]) = ('storage', 256, 0, ('add', 15, ('var', 2)))
                            require t - 1 < 5
                            require t < 5
                            address(stor[t + 11]) = ('storage', 160, 0, ('add', 10, ('var', 2)))
                            t = t - 1
                            continue 
                        require s < 5
                        uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                        address(stor[s + 11]) = ('storage', 160, 0, 2)
                        require ext_code.size(('storage', 160, 0, 1))
                        call ('storage', 160, 0, 1).leave(uint256 rg1) with:
                             gas gas_remaining wei
                            args (('storage', 256, 0, 5) * ('storage', 256, 0, 3) / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(('storage', 160, 0, 0))
                        staticcall ('storage', 160, 0, 0).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(('storage', 160, 0, 0))
                        call ('storage', 160, 0, 0).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 1), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(('storage', 160, 0, 1))
                        staticcall ('storage', 160, 0, 1).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(('storage', 160, 0, 1))
                        if 0 <= ext_call.return_data[0]:
                            call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args ('storage', 160, 0, 2), 0
                        else:
                            call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args ('storage', 160, 0, 2), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        34,
                                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                        mem[198 len 30]
                        if (('storage', 256, 0, 4) * ('storage', 256, 0, 3) / 10000) + ('storage', 256, 0, 6) < ('storage', 256, 0, 6):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(stor[6]) = (('storage', 256, 0, 4) * ('storage', 256, 0, 3) / 10000) + ('storage', 256, 0, 6)
                        require ext_code.size(('storage', 160, 0, 1))
                        call ('storage', 160, 0, 1).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor[2]) = msg.sender or Mask(96, 160, ('storage', 256, 0, 2))
                        uint256(stor[3]) = arg1
                    t = idx
                    while t > s:
                        require t - 1 < 5
                        require t < 5
                        uint256(stor[t + 16]) = ('storage', 256, 0, ('add', 15, ('var', 2)))
                        require t - 1 < 5
                        require t < 5
                        address(stor[t + 11]) = ('storage', 160, 0, ('add', 10, ('var', 2)))
                        t = t - 1
                        continue 
                    require s < 5
                    uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                    address(stor[s + 11]) = ('storage', 160, 0, 2)
                    require ext_code.size(('storage', 160, 0, 1))
                    call ('storage', 160, 0, 1).leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args (('storage', 256, 0, 5) * ('storage', 256, 0, 3) / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 0))
                    staticcall ('storage', 160, 0, 0).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 0))
                    call ('storage', 160, 0, 0).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ('storage', 160, 0, 1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 1))
                    staticcall ('storage', 160, 0, 1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 1))
                    if 0 <= ext_call.return_data[0]:
                        call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 2), 0
                    else:
                        call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 2), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                    mem[198 len 30]
                    if (('storage', 256, 0, 4) * ('storage', 256, 0, 3) / 10000) + ('storage', 256, 0, 6) < ('storage', 256, 0, 6):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(stor[6]) = (('storage', 256, 0, 4) * ('storage', 256, 0, 3) / 10000) + ('storage', 256, 0, 6)
                    require ext_code.size(('storage', 160, 0, 1))
                    call ('storage', 160, 0, 1).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor[2]) = msg.sender or Mask(96, 160, ('storage', 256, 0, 2))
                    uint256(stor[3]) = arg1
                idx = 0
                while idx < 5:
                    if ('storage', 256, 0, ('add', 16, ('var', 0))) >= ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))):
                        idx = idx + 1
                        continue 
                    s = 4
                    while s > idx:
                        require s - 1 < 5
                        require s < 5
                        uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 15, ('var', 1)))
                        require s - 1 < 5
                        require s < 5
                        address(stor[s + 11]) = ('storage', 160, 0, ('add', 10, ('var', 1)))
                        s = s - 1
                        continue 
                    if idx < 4:
                        uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                        address(stor[idx + 11]) = ('storage', 160, 0, 2)
                    else:
                        if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) > ('storage', 256, 0, 20):
                            require idx < 5
                            uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                            address(stor[idx + 11]) = ('storage', 160, 0, 2)
                    require ext_code.size(('storage', 160, 0, 1))
                    call ('storage', 160, 0, 1).leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args (('storage', 256, 0, 5) * ('storage', 256, 0, 3) / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 0))
                    staticcall ('storage', 160, 0, 0).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 0))
                    call ('storage', 160, 0, 0).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ('storage', 160, 0, 1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 1))
                    staticcall ('storage', 160, 0, 1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 1))
                    if 0 <= ext_call.return_data[0]:
                        call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 2), 0
                    else:
                        call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 2), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                    mem[198 len 30]
                    if (('storage', 256, 0, 4) * ('storage', 256, 0, 3) / 10000) + ('storage', 256, 0, 6) < ('storage', 256, 0, 6):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(stor[6]) = (('storage', 256, 0, 4) * ('storage', 256, 0, 3) / 10000) + ('storage', 256, 0, 6)
                    require ext_code.size(('storage', 160, 0, 1))
                    call ('storage', 160, 0, 1).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor[2]) = msg.sender or Mask(96, 160, ('storage', 256, 0, 2))
                    uint256(stor[3]) = arg1
                s = 4
                while s > idx:
                    require s - 1 < 5
                    require s < 5
                    uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 15, ('var', 1)))
                    require s - 1 < 5
                    require s < 5
                    address(stor[s + 11]) = ('storage', 160, 0, ('add', 10, ('var', 1)))
                    s = s - 1
                    continue 
                if idx < 4:
                    uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                    address(stor[idx + 11]) = ('storage', 160, 0, 2)
                else:
                    if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) > ('storage', 256, 0, 20):
                        require idx < 5
                        uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                        address(stor[idx + 11]) = ('storage', 160, 0, 2)
                require ext_code.size(('storage', 160, 0, 1))
                call ('storage', 160, 0, 1).leave(uint256 rg1) with:
                     gas gas_remaining wei
                    args (('storage', 256, 0, 5) * ('storage', 256, 0, 3) / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(('storage', 160, 0, 0))
            staticcall ('storage', 160, 0, 0).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(('storage', 160, 0, 0))
            call ('storage', 160, 0, 0).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args ('storage', 160, 0, 1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(('storage', 160, 0, 1))
            staticcall ('storage', 160, 0, 1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(('storage', 160, 0, 1))
            if 0 <= ext_call.return_data[0]:
                call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args ('storage', 160, 0, 2), 0
            else:
                call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args ('storage', 160, 0, 2), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                            mem[198 len 30]
            if (('storage', 256, 0, 4) * ('storage', 256, 0, 3) / 10000) + ('storage', 256, 0, 6) < ('storage', 256, 0, 6):
                revert with 0, 'SafeMath: addition overflow'
            uint256(stor[6]) = (('storage', 256, 0, 4) * ('storage', 256, 0, 3) / 10000) + ('storage', 256, 0, 6)
    else:
        if (10000 * ('storage', 256, 0, 3)) - (('storage', 256, 0, 4) * ('storage', 256, 0, 3)) - (('storage', 256, 0, 5) * ('storage', 256, 0, 3)) / ('storage', 256, 0, 3) != -('storage', 256, 0, 4) + -('storage', 256, 0, 5) + 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ('storage', 256, 0, 3):
            if not ('storage', 256, 0, 3):
                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if block.timestamp - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) + ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) < ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(stor[sha3(('storage', 160, 0, 2), 21) + 3]) = block.timestamp - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) + ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                uint256(stor[sha3(msg.sender, 21) + 4]) = block.timestamp
                idx = 0
                while idx < 5:
                    if ('storage', 160, 0, ('add', 11, ('var', 0))) != ('storage', 160, 0, 2):
                        idx = idx + 1
                        continue 
                    s = 0
                    while s < 5:
                        if ('storage', 256, 0, ('add', 16, ('var', 1))) >= ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))):
                            s = s + 1
                            continue 
                        t = idx
                        while t > s:
                            require t - 1 < 5
                            require t < 5
                            uint256(stor[t + 16]) = ('storage', 256, 0, ('add', 15, ('var', 2)))
                            require t - 1 < 5
                            require t < 5
                            address(stor[t + 11]) = ('storage', 160, 0, ('add', 10, ('var', 2)))
                            t = t - 1
                            continue 
                        require s < 5
                        uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                        address(stor[s + 11]) = ('storage', 160, 0, 2)
                        require ext_code.size(('storage', 160, 0, 1))
                        call ('storage', 160, 0, 1).leave(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(('storage', 160, 0, 0))
                        staticcall ('storage', 160, 0, 0).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(('storage', 160, 0, 0))
                        call ('storage', 160, 0, 0).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 1), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(('storage', 160, 0, 1))
                        staticcall ('storage', 160, 0, 1).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(('storage', 160, 0, 1))
                        if (10000 * ('storage', 256, 0, 3)) - (('storage', 256, 0, 4) * ('storage', 256, 0, 3)) - (('storage', 256, 0, 5) * ('storage', 256, 0, 3)) / 10000 <= ext_call.return_data[0]:
                            call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args ('storage', 160, 0, 2), (10000 * ('storage', 256, 0, 3)) - (('storage', 256, 0, 4) * ('storage', 256, 0, 3)) - (('storage', 256, 0, 5) * ('storage', 256, 0, 3)) / 10000
                        else:
                            call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args ('storage', 160, 0, 2), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        34,
                                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                        mem[198 len 30]
                        if ('storage', 256, 0, 6) < ('storage', 256, 0, 6):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(('storage', 160, 0, 1))
                        call ('storage', 160, 0, 1).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor[2]) = msg.sender or Mask(96, 160, ('storage', 256, 0, 2))
                        uint256(stor[3]) = arg1
                    t = idx
                    while t > s:
                        require t - 1 < 5
                        require t < 5
                        uint256(stor[t + 16]) = ('storage', 256, 0, ('add', 15, ('var', 2)))
                        require t - 1 < 5
                        require t < 5
                        address(stor[t + 11]) = ('storage', 160, 0, ('add', 10, ('var', 2)))
                        t = t - 1
                        continue 
                    require s < 5
                    uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                    address(stor[s + 11]) = ('storage', 160, 0, 2)
                    require ext_code.size(('storage', 160, 0, 1))
                    call ('storage', 160, 0, 1).leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 0))
                    staticcall ('storage', 160, 0, 0).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 0))
                    call ('storage', 160, 0, 0).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ('storage', 160, 0, 1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 1))
                    staticcall ('storage', 160, 0, 1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 1))
                    if (10000 * ('storage', 256, 0, 3)) - (('storage', 256, 0, 4) * ('storage', 256, 0, 3)) - (('storage', 256, 0, 5) * ('storage', 256, 0, 3)) / 10000 <= ext_call.return_data[0]:
                        call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 2), (10000 * ('storage', 256, 0, 3)) - (('storage', 256, 0, 4) * ('storage', 256, 0, 3)) - (('storage', 256, 0, 5) * ('storage', 256, 0, 3)) / 10000
                    else:
                        call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 2), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                    mem[198 len 30]
                    if ('storage', 256, 0, 6) < ('storage', 256, 0, 6):
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(('storage', 160, 0, 1))
                    call ('storage', 160, 0, 1).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor[2]) = msg.sender or Mask(96, 160, ('storage', 256, 0, 2))
                    uint256(stor[3]) = arg1
                idx = 0
                while idx < 5:
                    if ('storage', 256, 0, ('add', 16, ('var', 0))) >= ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))):
                        idx = idx + 1
                        continue 
                    s = 4
                    while s > idx:
                        require s - 1 < 5
                        require s < 5
                        uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 15, ('var', 1)))
                        require s - 1 < 5
                        require s < 5
                        address(stor[s + 11]) = ('storage', 160, 0, ('add', 10, ('var', 1)))
                        s = s - 1
                        continue 
                    if idx < 4:
                        uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                        address(stor[idx + 11]) = ('storage', 160, 0, 2)
                    else:
                        if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) > ('storage', 256, 0, 20):
                            require idx < 5
                            uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                            address(stor[idx + 11]) = ('storage', 160, 0, 2)
                    require ext_code.size(('storage', 160, 0, 1))
                    call ('storage', 160, 0, 1).leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 0))
                    staticcall ('storage', 160, 0, 0).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 0))
                    call ('storage', 160, 0, 0).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ('storage', 160, 0, 1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 1))
                    staticcall ('storage', 160, 0, 1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 1))
                    if (10000 * ('storage', 256, 0, 3)) - (('storage', 256, 0, 4) * ('storage', 256, 0, 3)) - (('storage', 256, 0, 5) * ('storage', 256, 0, 3)) / 10000 <= ext_call.return_data[0]:
                        call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 2), (10000 * ('storage', 256, 0, 3)) - (('storage', 256, 0, 4) * ('storage', 256, 0, 3)) - (('storage', 256, 0, 5) * ('storage', 256, 0, 3)) / 10000
                    else:
                        call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 2), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                    mem[198 len 30]
                    if ('storage', 256, 0, 6) < ('storage', 256, 0, 6):
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(('storage', 160, 0, 1))
                    call ('storage', 160, 0, 1).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor[2]) = msg.sender or Mask(96, 160, ('storage', 256, 0, 2))
                    uint256(stor[3]) = arg1
                s = 4
                while s > idx:
                    require s - 1 < 5
                    require s < 5
                    uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 15, ('var', 1)))
                    require s - 1 < 5
                    require s < 5
                    address(stor[s + 11]) = ('storage', 160, 0, ('add', 10, ('var', 1)))
                    s = s - 1
                    continue 
                if idx < 4:
                    uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                    address(stor[idx + 11]) = ('storage', 160, 0, 2)
                else:
                    if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) > ('storage', 256, 0, 20):
                        require idx < 5
                        uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                        address(stor[idx + 11]) = ('storage', 160, 0, 2)
                require ext_code.size(('storage', 160, 0, 1))
                call ('storage', 160, 0, 1).leave(uint256 rg1) with:
                     gas gas_remaining wei
                    args 0
            else:
                if ('storage', 256, 0, 5) * ('storage', 256, 0, 3) / ('storage', 256, 0, 3) != ('storage', 256, 0, 5):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if block.timestamp - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) + ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) < ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(stor[sha3(('storage', 160, 0, 2), 21) + 3]) = block.timestamp - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) + ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                uint256(stor[sha3(msg.sender, 21) + 4]) = block.timestamp
                idx = 0
                while idx < 5:
                    if ('storage', 160, 0, ('add', 11, ('var', 0))) != ('storage', 160, 0, 2):
                        idx = idx + 1
                        continue 
                    s = 0
                    while s < 5:
                        if ('storage', 256, 0, ('add', 16, ('var', 1))) >= ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))):
                            s = s + 1
                            continue 
                        t = idx
                        while t > s:
                            require t - 1 < 5
                            require t < 5
                            uint256(stor[t + 16]) = ('storage', 256, 0, ('add', 15, ('var', 2)))
                            require t - 1 < 5
                            require t < 5
                            address(stor[t + 11]) = ('storage', 160, 0, ('add', 10, ('var', 2)))
                            t = t - 1
                            continue 
                        require s < 5
                        uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                        address(stor[s + 11]) = ('storage', 160, 0, 2)
                        require ext_code.size(('storage', 160, 0, 1))
                        call ('storage', 160, 0, 1).leave(uint256 rg1) with:
                             gas gas_remaining wei
                            args (('storage', 256, 0, 5) * ('storage', 256, 0, 3) / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(('storage', 160, 0, 0))
                        staticcall ('storage', 160, 0, 0).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(('storage', 160, 0, 0))
                        call ('storage', 160, 0, 0).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 1), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(('storage', 160, 0, 1))
                        staticcall ('storage', 160, 0, 1).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(('storage', 160, 0, 1))
                        if (10000 * ('storage', 256, 0, 3)) - (('storage', 256, 0, 4) * ('storage', 256, 0, 3)) - (('storage', 256, 0, 5) * ('storage', 256, 0, 3)) / 10000 <= ext_call.return_data[0]:
                            call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args ('storage', 160, 0, 2), (10000 * ('storage', 256, 0, 3)) - (('storage', 256, 0, 4) * ('storage', 256, 0, 3)) - (('storage', 256, 0, 5) * ('storage', 256, 0, 3)) / 10000
                        else:
                            call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args ('storage', 160, 0, 2), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        34,
                                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                        mem[198 len 30]
                        if ('storage', 256, 0, 6) < ('storage', 256, 0, 6):
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(('storage', 160, 0, 1))
                        call ('storage', 160, 0, 1).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor[2]) = msg.sender or Mask(96, 160, ('storage', 256, 0, 2))
                        uint256(stor[3]) = arg1
                    t = idx
                    while t > s:
                        require t - 1 < 5
                        require t < 5
                        uint256(stor[t + 16]) = ('storage', 256, 0, ('add', 15, ('var', 2)))
                        require t - 1 < 5
                        require t < 5
                        address(stor[t + 11]) = ('storage', 160, 0, ('add', 10, ('var', 2)))
                        t = t - 1
                        continue 
                    require s < 5
                    uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                    address(stor[s + 11]) = ('storage', 160, 0, 2)
                    require ext_code.size(('storage', 160, 0, 1))
                    call ('storage', 160, 0, 1).leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args (('storage', 256, 0, 5) * ('storage', 256, 0, 3) / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 0))
                    staticcall ('storage', 160, 0, 0).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 0))
                    call ('storage', 160, 0, 0).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ('storage', 160, 0, 1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 1))
                    staticcall ('storage', 160, 0, 1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 1))
                    if (10000 * ('storage', 256, 0, 3)) - (('storage', 256, 0, 4) * ('storage', 256, 0, 3)) - (('storage', 256, 0, 5) * ('storage', 256, 0, 3)) / 10000 <= ext_call.return_data[0]:
                        call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 2), (10000 * ('storage', 256, 0, 3)) - (('storage', 256, 0, 4) * ('storage', 256, 0, 3)) - (('storage', 256, 0, 5) * ('storage', 256, 0, 3)) / 10000
                    else:
                        call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 2), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                    mem[198 len 30]
                    if ('storage', 256, 0, 6) < ('storage', 256, 0, 6):
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(('storage', 160, 0, 1))
                    call ('storage', 160, 0, 1).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor[2]) = msg.sender or Mask(96, 160, ('storage', 256, 0, 2))
                    uint256(stor[3]) = arg1
                idx = 0
                while idx < 5:
                    if ('storage', 256, 0, ('add', 16, ('var', 0))) >= ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))):
                        idx = idx + 1
                        continue 
                    s = 4
                    while s > idx:
                        require s - 1 < 5
                        require s < 5
                        uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 15, ('var', 1)))
                        require s - 1 < 5
                        require s < 5
                        address(stor[s + 11]) = ('storage', 160, 0, ('add', 10, ('var', 1)))
                        s = s - 1
                        continue 
                    if idx < 4:
                        uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                        address(stor[idx + 11]) = ('storage', 160, 0, 2)
                    else:
                        if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) > ('storage', 256, 0, 20):
                            require idx < 5
                            uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                            address(stor[idx + 11]) = ('storage', 160, 0, 2)
                    require ext_code.size(('storage', 160, 0, 1))
                    call ('storage', 160, 0, 1).leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args (('storage', 256, 0, 5) * ('storage', 256, 0, 3) / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 0))
                    staticcall ('storage', 160, 0, 0).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 0))
                    call ('storage', 160, 0, 0).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ('storage', 160, 0, 1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 1))
                    staticcall ('storage', 160, 0, 1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 1))
                    if (10000 * ('storage', 256, 0, 3)) - (('storage', 256, 0, 4) * ('storage', 256, 0, 3)) - (('storage', 256, 0, 5) * ('storage', 256, 0, 3)) / 10000 <= ext_call.return_data[0]:
                        call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 2), (10000 * ('storage', 256, 0, 3)) - (('storage', 256, 0, 4) * ('storage', 256, 0, 3)) - (('storage', 256, 0, 5) * ('storage', 256, 0, 3)) / 10000
                    else:
                        call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 2), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                    mem[198 len 30]
                    if ('storage', 256, 0, 6) < ('storage', 256, 0, 6):
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(('storage', 160, 0, 1))
                    call ('storage', 160, 0, 1).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor[2]) = msg.sender or Mask(96, 160, ('storage', 256, 0, 2))
                    uint256(stor[3]) = arg1
                s = 4
                while s > idx:
                    require s - 1 < 5
                    require s < 5
                    uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 15, ('var', 1)))
                    require s - 1 < 5
                    require s < 5
                    address(stor[s + 11]) = ('storage', 160, 0, ('add', 10, ('var', 1)))
                    s = s - 1
                    continue 
                if idx < 4:
                    uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                    address(stor[idx + 11]) = ('storage', 160, 0, 2)
                else:
                    if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) > ('storage', 256, 0, 20):
                        require idx < 5
                        uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                        address(stor[idx + 11]) = ('storage', 160, 0, 2)
                require ext_code.size(('storage', 160, 0, 1))
                call ('storage', 160, 0, 1).leave(uint256 rg1) with:
                     gas gas_remaining wei
                    args (('storage', 256, 0, 5) * ('storage', 256, 0, 3) / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(('storage', 160, 0, 0))
            staticcall ('storage', 160, 0, 0).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(('storage', 160, 0, 0))
            call ('storage', 160, 0, 0).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args ('storage', 160, 0, 1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(('storage', 160, 0, 1))
            staticcall ('storage', 160, 0, 1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(('storage', 160, 0, 1))
            if (10000 * ('storage', 256, 0, 3)) - (('storage', 256, 0, 4) * ('storage', 256, 0, 3)) - (('storage', 256, 0, 5) * ('storage', 256, 0, 3)) / 10000 <= ext_call.return_data[0]:
                call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args ('storage', 160, 0, 2), (10000 * ('storage', 256, 0, 3)) - (('storage', 256, 0, 4) * ('storage', 256, 0, 3)) - (('storage', 256, 0, 5) * ('storage', 256, 0, 3)) / 10000
            else:
                call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args ('storage', 160, 0, 2), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                            mem[198 len 30]
            if ('storage', 256, 0, 6) < ('storage', 256, 0, 6):
                revert with 0, 'SafeMath: addition overflow'
        else:
            if ('storage', 256, 0, 4) * ('storage', 256, 0, 3) / ('storage', 256, 0, 3) != ('storage', 256, 0, 4):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not ('storage', 256, 0, 3):
                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if block.timestamp - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) + ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) < ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(stor[sha3(('storage', 160, 0, 2), 21) + 3]) = block.timestamp - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) + ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                uint256(stor[sha3(msg.sender, 21) + 4]) = block.timestamp
                idx = 0
                while idx < 5:
                    if ('storage', 160, 0, ('add', 11, ('var', 0))) != ('storage', 160, 0, 2):
                        idx = idx + 1
                        continue 
                    s = 0
                    while s < 5:
                        if ('storage', 256, 0, ('add', 16, ('var', 1))) >= ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))):
                            s = s + 1
                            continue 
                        t = idx
                        while t > s:
                            require t - 1 < 5
                            require t < 5
                            uint256(stor[t + 16]) = ('storage', 256, 0, ('add', 15, ('var', 2)))
                            require t - 1 < 5
                            require t < 5
                            address(stor[t + 11]) = ('storage', 160, 0, ('add', 10, ('var', 2)))
                            t = t - 1
                            continue 
                        require s < 5
                        uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                        address(stor[s + 11]) = ('storage', 160, 0, 2)
                        require ext_code.size(('storage', 160, 0, 1))
                        call ('storage', 160, 0, 1).leave(uint256 rg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(('storage', 160, 0, 0))
                        staticcall ('storage', 160, 0, 0).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(('storage', 160, 0, 0))
                        call ('storage', 160, 0, 0).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 1), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(('storage', 160, 0, 1))
                        staticcall ('storage', 160, 0, 1).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(('storage', 160, 0, 1))
                        if (10000 * ('storage', 256, 0, 3)) - (('storage', 256, 0, 4) * ('storage', 256, 0, 3)) - (('storage', 256, 0, 5) * ('storage', 256, 0, 3)) / 10000 <= ext_call.return_data[0]:
                            call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args ('storage', 160, 0, 2), (10000 * ('storage', 256, 0, 3)) - (('storage', 256, 0, 4) * ('storage', 256, 0, 3)) - (('storage', 256, 0, 5) * ('storage', 256, 0, 3)) / 10000
                        else:
                            call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args ('storage', 160, 0, 2), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        34,
                                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                        mem[198 len 30]
                        if (('storage', 256, 0, 4) * ('storage', 256, 0, 3) / 10000) + ('storage', 256, 0, 6) < ('storage', 256, 0, 6):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(stor[6]) = (('storage', 256, 0, 4) * ('storage', 256, 0, 3) / 10000) + ('storage', 256, 0, 6)
                        require ext_code.size(('storage', 160, 0, 1))
                        call ('storage', 160, 0, 1).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor[2]) = msg.sender or Mask(96, 160, ('storage', 256, 0, 2))
                        uint256(stor[3]) = arg1
                    t = idx
                    while t > s:
                        require t - 1 < 5
                        require t < 5
                        uint256(stor[t + 16]) = ('storage', 256, 0, ('add', 15, ('var', 2)))
                        require t - 1 < 5
                        require t < 5
                        address(stor[t + 11]) = ('storage', 160, 0, ('add', 10, ('var', 2)))
                        t = t - 1
                        continue 
                    require s < 5
                    uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                    address(stor[s + 11]) = ('storage', 160, 0, 2)
                    require ext_code.size(('storage', 160, 0, 1))
                    call ('storage', 160, 0, 1).leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 0))
                    staticcall ('storage', 160, 0, 0).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 0))
                    call ('storage', 160, 0, 0).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ('storage', 160, 0, 1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 1))
                    staticcall ('storage', 160, 0, 1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 1))
                    if (10000 * ('storage', 256, 0, 3)) - (('storage', 256, 0, 4) * ('storage', 256, 0, 3)) - (('storage', 256, 0, 5) * ('storage', 256, 0, 3)) / 10000 <= ext_call.return_data[0]:
                        call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 2), (10000 * ('storage', 256, 0, 3)) - (('storage', 256, 0, 4) * ('storage', 256, 0, 3)) - (('storage', 256, 0, 5) * ('storage', 256, 0, 3)) / 10000
                    else:
                        call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 2), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                    mem[198 len 30]
                    if (('storage', 256, 0, 4) * ('storage', 256, 0, 3) / 10000) + ('storage', 256, 0, 6) < ('storage', 256, 0, 6):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(stor[6]) = (('storage', 256, 0, 4) * ('storage', 256, 0, 3) / 10000) + ('storage', 256, 0, 6)
                    require ext_code.size(('storage', 160, 0, 1))
                    call ('storage', 160, 0, 1).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor[2]) = msg.sender or Mask(96, 160, ('storage', 256, 0, 2))
                    uint256(stor[3]) = arg1
                idx = 0
                while idx < 5:
                    if ('storage', 256, 0, ('add', 16, ('var', 0))) >= ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))):
                        idx = idx + 1
                        continue 
                    s = 4
                    while s > idx:
                        require s - 1 < 5
                        require s < 5
                        uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 15, ('var', 1)))
                        require s - 1 < 5
                        require s < 5
                        address(stor[s + 11]) = ('storage', 160, 0, ('add', 10, ('var', 1)))
                        s = s - 1
                        continue 
                    if idx < 4:
                        uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                        address(stor[idx + 11]) = ('storage', 160, 0, 2)
                    else:
                        if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) > ('storage', 256, 0, 20):
                            require idx < 5
                            uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                            address(stor[idx + 11]) = ('storage', 160, 0, 2)
                    require ext_code.size(('storage', 160, 0, 1))
                    call ('storage', 160, 0, 1).leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 0))
                    staticcall ('storage', 160, 0, 0).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 0))
                    call ('storage', 160, 0, 0).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ('storage', 160, 0, 1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 1))
                    staticcall ('storage', 160, 0, 1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 1))
                    if (10000 * ('storage', 256, 0, 3)) - (('storage', 256, 0, 4) * ('storage', 256, 0, 3)) - (('storage', 256, 0, 5) * ('storage', 256, 0, 3)) / 10000 <= ext_call.return_data[0]:
                        call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 2), (10000 * ('storage', 256, 0, 3)) - (('storage', 256, 0, 4) * ('storage', 256, 0, 3)) - (('storage', 256, 0, 5) * ('storage', 256, 0, 3)) / 10000
                    else:
                        call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 2), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                    mem[198 len 30]
                    if (('storage', 256, 0, 4) * ('storage', 256, 0, 3) / 10000) + ('storage', 256, 0, 6) < ('storage', 256, 0, 6):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(stor[6]) = (('storage', 256, 0, 4) * ('storage', 256, 0, 3) / 10000) + ('storage', 256, 0, 6)
                    require ext_code.size(('storage', 160, 0, 1))
                    call ('storage', 160, 0, 1).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor[2]) = msg.sender or Mask(96, 160, ('storage', 256, 0, 2))
                    uint256(stor[3]) = arg1
                s = 4
                while s > idx:
                    require s - 1 < 5
                    require s < 5
                    uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 15, ('var', 1)))
                    require s - 1 < 5
                    require s < 5
                    address(stor[s + 11]) = ('storage', 160, 0, ('add', 10, ('var', 1)))
                    s = s - 1
                    continue 
                if idx < 4:
                    uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                    address(stor[idx + 11]) = ('storage', 160, 0, 2)
                else:
                    if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) > ('storage', 256, 0, 20):
                        require idx < 5
                        uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                        address(stor[idx + 11]) = ('storage', 160, 0, 2)
                require ext_code.size(('storage', 160, 0, 1))
                call ('storage', 160, 0, 1).leave(uint256 rg1) with:
                     gas gas_remaining wei
                    args 0
            else:
                if ('storage', 256, 0, 5) * ('storage', 256, 0, 3) / ('storage', 256, 0, 3) != ('storage', 256, 0, 5):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if block.timestamp - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) + ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) < ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))):
                    revert with 0, 'SafeMath: addition overflow'
                uint256(stor[sha3(('storage', 160, 0, 2), 21) + 3]) = block.timestamp - ('storage', 256, 0, ('add', 4, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) + ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                uint256(stor[sha3(msg.sender, 21) + 4]) = block.timestamp
                idx = 0
                while idx < 5:
                    if ('storage', 160, 0, ('add', 11, ('var', 0))) != ('storage', 160, 0, 2):
                        idx = idx + 1
                        continue 
                    s = 0
                    while s < 5:
                        if ('storage', 256, 0, ('add', 16, ('var', 1))) >= ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))):
                            s = s + 1
                            continue 
                        t = idx
                        while t > s:
                            require t - 1 < 5
                            require t < 5
                            uint256(stor[t + 16]) = ('storage', 256, 0, ('add', 15, ('var', 2)))
                            require t - 1 < 5
                            require t < 5
                            address(stor[t + 11]) = ('storage', 160, 0, ('add', 10, ('var', 2)))
                            t = t - 1
                            continue 
                        require s < 5
                        uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                        address(stor[s + 11]) = ('storage', 160, 0, 2)
                        require ext_code.size(('storage', 160, 0, 1))
                        call ('storage', 160, 0, 1).leave(uint256 rg1) with:
                             gas gas_remaining wei
                            args (('storage', 256, 0, 5) * ('storage', 256, 0, 3) / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(('storage', 160, 0, 0))
                        staticcall ('storage', 160, 0, 0).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(('storage', 160, 0, 0))
                        call ('storage', 160, 0, 0).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 1), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(('storage', 160, 0, 1))
                        staticcall ('storage', 160, 0, 1).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(('storage', 160, 0, 1))
                        if (10000 * ('storage', 256, 0, 3)) - (('storage', 256, 0, 4) * ('storage', 256, 0, 3)) - (('storage', 256, 0, 5) * ('storage', 256, 0, 3)) / 10000 <= ext_call.return_data[0]:
                            call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args ('storage', 160, 0, 2), (10000 * ('storage', 256, 0, 3)) - (('storage', 256, 0, 4) * ('storage', 256, 0, 3)) - (('storage', 256, 0, 5) * ('storage', 256, 0, 3)) / 10000
                        else:
                            call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args ('storage', 160, 0, 2), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        34,
                                        0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                        mem[198 len 30]
                        if (('storage', 256, 0, 4) * ('storage', 256, 0, 3) / 10000) + ('storage', 256, 0, 6) < ('storage', 256, 0, 6):
                            revert with 0, 'SafeMath: addition overflow'
                        uint256(stor[6]) = (('storage', 256, 0, 4) * ('storage', 256, 0, 3) / 10000) + ('storage', 256, 0, 6)
                        require ext_code.size(('storage', 160, 0, 1))
                        call ('storage', 160, 0, 1).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor[2]) = msg.sender or Mask(96, 160, ('storage', 256, 0, 2))
                        uint256(stor[3]) = arg1
                    t = idx
                    while t > s:
                        require t - 1 < 5
                        require t < 5
                        uint256(stor[t + 16]) = ('storage', 256, 0, ('add', 15, ('var', 2)))
                        require t - 1 < 5
                        require t < 5
                        address(stor[t + 11]) = ('storage', 160, 0, ('add', 10, ('var', 2)))
                        t = t - 1
                        continue 
                    require s < 5
                    uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                    address(stor[s + 11]) = ('storage', 160, 0, 2)
                    require ext_code.size(('storage', 160, 0, 1))
                    call ('storage', 160, 0, 1).leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args (('storage', 256, 0, 5) * ('storage', 256, 0, 3) / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 0))
                    staticcall ('storage', 160, 0, 0).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 0))
                    call ('storage', 160, 0, 0).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ('storage', 160, 0, 1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 1))
                    staticcall ('storage', 160, 0, 1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 1))
                    if (10000 * ('storage', 256, 0, 3)) - (('storage', 256, 0, 4) * ('storage', 256, 0, 3)) - (('storage', 256, 0, 5) * ('storage', 256, 0, 3)) / 10000 <= ext_call.return_data[0]:
                        call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 2), (10000 * ('storage', 256, 0, 3)) - (('storage', 256, 0, 4) * ('storage', 256, 0, 3)) - (('storage', 256, 0, 5) * ('storage', 256, 0, 3)) / 10000
                    else:
                        call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 2), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                    mem[198 len 30]
                    if (('storage', 256, 0, 4) * ('storage', 256, 0, 3) / 10000) + ('storage', 256, 0, 6) < ('storage', 256, 0, 6):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(stor[6]) = (('storage', 256, 0, 4) * ('storage', 256, 0, 3) / 10000) + ('storage', 256, 0, 6)
                    require ext_code.size(('storage', 160, 0, 1))
                    call ('storage', 160, 0, 1).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor[2]) = msg.sender or Mask(96, 160, ('storage', 256, 0, 2))
                    uint256(stor[3]) = arg1
                idx = 0
                while idx < 5:
                    if ('storage', 256, 0, ('add', 16, ('var', 0))) >= ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))):
                        idx = idx + 1
                        continue 
                    s = 4
                    while s > idx:
                        require s - 1 < 5
                        require s < 5
                        uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 15, ('var', 1)))
                        require s - 1 < 5
                        require s < 5
                        address(stor[s + 11]) = ('storage', 160, 0, ('add', 10, ('var', 1)))
                        s = s - 1
                        continue 
                    if idx < 4:
                        uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                        address(stor[idx + 11]) = ('storage', 160, 0, 2)
                    else:
                        if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) > ('storage', 256, 0, 20):
                            require idx < 5
                            uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                            address(stor[idx + 11]) = ('storage', 160, 0, 2)
                    require ext_code.size(('storage', 160, 0, 1))
                    call ('storage', 160, 0, 1).leave(uint256 rg1) with:
                         gas gas_remaining wei
                        args (('storage', 256, 0, 5) * ('storage', 256, 0, 3) / 10000)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(('storage', 160, 0, 0))
                    staticcall ('storage', 160, 0, 0).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 0))
                    call ('storage', 160, 0, 0).transfer(address rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args ('storage', 160, 0, 1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 1))
                    staticcall ('storage', 160, 0, 1).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(('storage', 160, 0, 1))
                    if (10000 * ('storage', 256, 0, 3)) - (('storage', 256, 0, 4) * ('storage', 256, 0, 3)) - (('storage', 256, 0, 5) * ('storage', 256, 0, 3)) / 10000 <= ext_call.return_data[0]:
                        call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 2), (10000 * ('storage', 256, 0, 3)) - (('storage', 256, 0, 4) * ('storage', 256, 0, 3)) - (('storage', 256, 0, 5) * ('storage', 256, 0, 3)) / 10000
                    else:
                        call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args ('storage', 160, 0, 2), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    34,
                                    0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                                    mem[198 len 30]
                    if (('storage', 256, 0, 4) * ('storage', 256, 0, 3) / 10000) + ('storage', 256, 0, 6) < ('storage', 256, 0, 6):
                        revert with 0, 'SafeMath: addition overflow'
                    uint256(stor[6]) = (('storage', 256, 0, 4) * ('storage', 256, 0, 3) / 10000) + ('storage', 256, 0, 6)
                    require ext_code.size(('storage', 160, 0, 1))
                    call ('storage', 160, 0, 1).0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor[2]) = msg.sender or Mask(96, 160, ('storage', 256, 0, 2))
                    uint256(stor[3]) = arg1
                s = 4
                while s > idx:
                    require s - 1 < 5
                    require s < 5
                    uint256(stor[s + 16]) = ('storage', 256, 0, ('add', 15, ('var', 1)))
                    require s - 1 < 5
                    require s < 5
                    address(stor[s + 11]) = ('storage', 160, 0, ('add', 10, ('var', 1)))
                    s = s - 1
                    continue 
                if idx < 4:
                    uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                    address(stor[idx + 11]) = ('storage', 160, 0, 2)
                else:
                    if ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21)))) > ('storage', 256, 0, 20):
                        require idx < 5
                        uint256(stor[idx + 16]) = ('storage', 256, 0, ('add', 3, ('sha3', ('data', ('storage', 160, 0, 2), 21))))
                        address(stor[idx + 11]) = ('storage', 160, 0, 2)
                require ext_code.size(('storage', 160, 0, 1))
                call ('storage', 160, 0, 1).leave(uint256 rg1) with:
                     gas gas_remaining wei
                    args (('storage', 256, 0, 5) * ('storage', 256, 0, 3) / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(('storage', 160, 0, 0))
            staticcall ('storage', 160, 0, 0).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(('storage', 160, 0, 0))
            call ('storage', 160, 0, 0).transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args ('storage', 160, 0, 1), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(('storage', 160, 0, 1))
            staticcall ('storage', 160, 0, 1).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(('storage', 160, 0, 1))
            if (10000 * ('storage', 256, 0, 3)) - (('storage', 256, 0, 4) * ('storage', 256, 0, 3)) - (('storage', 256, 0, 5) * ('storage', 256, 0, 3)) / 10000 <= ext_call.return_data[0]:
                call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args ('storage', 160, 0, 2), (10000 * ('storage', 256, 0, 3)) - (('storage', 256, 0, 4) * ('storage', 256, 0, 3)) - (('storage', 256, 0, 5) * ('storage', 256, 0, 3)) / 10000
            else:
                call ('storage', 160, 0, 1).transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args ('storage', 160, 0, 2), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0xfe7361666558504546495472616e736665723a207472616e73666572206661696c65,
                            mem[198 len 30]
            if (('storage', 256, 0, 4) * ('storage', 256, 0, 3) / 10000) + ('storage', 256, 0, 6) < ('storage', 256, 0, 6):
                revert with 0, 'SafeMath: addition overflow'
            uint256(stor[6]) = (('storage', 256, 0, 4) * ('storage', 256, 0, 3) / 10000) + ('storage', 256, 0, 6)
    require ext_code.size(('storage', 160, 0, 1))
    call ('storage', 160, 0, 1).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor[2]) = msg.sender or Mask(96, 160, ('storage', 256, 0, 2))
    uint256(stor[3]) = arg1
}



}
