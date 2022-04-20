contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_b9dfb211(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] == address(cd[68])
    require cd[100] == cd[100]
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require cd[164] == address(cd[164])
    if ('cd', 132).length != 2:
        revert with 0, 'CurveV2Adaptor: PathError'
    if 0 >= ('cd', 132).length:
        revert with 'NH{q', 50
    require ('cd', 132)[0] == address(('cd', 132)[0])
    mem[96] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
    mem[128] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    mem[160] = 0xc7198437980c041c805a1edcba50c1ce5db95118
    mem[192] = 0x50b7545627a5162f82a992c33b87adc75187b218
    mem[224] = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab
    idx = 0
    while idx < 5:
        if address(('cd', 132)[0]) != mem[(32 * idx) + 108 len 20]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if 1 >= ('cd', 132).length:
            revert with 'NH{q', 50
        require ('cd', 132)[1] == address(('cd', 132)[1])
        mem[256] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
        mem[288] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
        mem[320] = 0xc7198437980c041c805a1edcba50c1ce5db95118
        mem[352] = 0x50b7545627a5162f82a992c33b87adc75187b218
        mem[384] = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab
        s = 0
        while s < 5:
            if address(('cd', 132)[1]) != mem[(32 * s) + 268 len 20]:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            require ext_code.size(address(cd[68]))
            call address(cd[68]).exchange_underlying(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, address rg5) with:
                 gas gas_remaining wei
                args idx, s, cd[4], cd[36], address(cd[164])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'CurveV2Adaptor: TokenError'
    revert with 0, 'CurveV2Adaptor: TokenError'
}

function sub_9701eaa8(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] == cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if ('cd', 100).length != 2:
        revert with 0, 'CurveV2Adaptor: PathError'
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    mem[96] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
    mem[128] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    mem[160] = 0xc7198437980c041c805a1edcba50c1ce5db95118
    mem[192] = 0x50b7545627a5162f82a992c33b87adc75187b218
    mem[224] = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab
    idx = 0
    while idx < 5:
        if address(('cd', 100)[0]) != mem[(32 * idx) + 108 len 20]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if 1 >= ('cd', 100).length:
            revert with 'NH{q', 50
        require ('cd', 100)[1] == address(('cd', 100)[1])
        mem[256] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
        mem[288] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
        mem[320] = 0xc7198437980c041c805a1edcba50c1ce5db95118
        mem[352] = 0x50b7545627a5162f82a992c33b87adc75187b218
        mem[384] = 0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab
        s = 0
        while s < 5:
            if address(('cd', 100)[1]) != mem[(32 * s) + 268 len 20]:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).get_dy_underlying(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args idx, s, cd[4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            return ext_call.return_data[0]
        revert with 0, 'CurveV2Adaptor: TokenError'
    revert with 0, 'CurveV2Adaptor: TokenError'
}

function getState(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 96
    mem[128] = 96
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    require ext_code.size(arg1)
    staticcall arg1.base_pool() with:
            gas gas_remaining wei
    mem[544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.pool() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).A() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[416] = ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).fee() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[480] = ext_call.return_data[0]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).offpeg_fee_multiplier() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[512] = ext_call.return_data[0]
    mem[(7 * ceil32(return_data.size)) + 544] = 3
    mem[64] = (7 * ceil32(return_data.size)) + 672
    mem[(7 * ceil32(return_data.size)) + 576 len 96] = call.data[calldata.size len 96]
    mem[448] = (7 * ceil32(return_data.size)) + 544
    idx = 0
    while idx < 3:
        mem[mem[64] + 4] = idx
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).balances(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _36 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_36] == mem[_36]
        if idx >= mem[mem[448]]:
            revert with 'NH{q', 50
        mem[(32 * idx) + mem[448] + 32] = mem[_36]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).lp_token() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _33 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_33] == mem[_33 + 12 len 20]
    require ext_code.size(mem[_33 + 12 len 20])
    staticcall mem[_33 + 12 len 20].0x18160ddd with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _40 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_40] == mem[_40]
    mem[384] = mem[_40]
    mem[352] = block.number
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).A() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _46 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_46] == mem[_46]
    mem[288] = mem[_46]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).D() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _50 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_50] == mem[_50]
    mem[320] = mem[_50]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x92526c0c with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _54 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_54] == mem[_54]
    mem[224] = mem[_54]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xee8de675 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _58 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_58] == mem[_58]
    mem[256] = mem[_58]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).gamma() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _62 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_62] == mem[_62]
    mem[160] = mem[_62]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x72d4f0e2 with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _66 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_66] == mem[_66]
    mem[192] = mem[_66]
    _68 = mem[64]
    mem[64] = mem[64] + 96
    mem[_68 + 32 len 64] = call.data[calldata.size len 64]
    mem[96] = _68
    if var244002 < 2:
        mem[_68 + 96] = 0xa3f7cdd500000000000000000000000000000000000000000000000000000000
        mem[var254003] = var254001
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).mem[var260003 len 4] with:
                gas gas_remaining wei
               args mem[var260003 + 4 len var260004 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require var264002 - var264001 >= 32
        # nil
    else:
        mem[_68 + 96] = 3
        mem[64] = _68 + 224
        mem[_68 + 128 len 96] = call.data[calldata.size len 96]
        mem[128] = _68 + 96
        idx = 0
        while idx < 3:
            mem[mem[64] + 4] = idx
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balances(uint256 rg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _194 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_194] == mem[_194]
            if idx >= mem[mem[128]]:
                revert with 'NH{q', 50
            mem[(32 * idx) + mem[128] + 32] = mem[_194]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _188 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = 288
        _190 = mem[mem[96]]
        mem[mem[64] + 352] = mem[mem[96]]
        mem[mem[64] + 384 len 32 * _190] = mem[mem[96] + 32 len 32 * _190]
        mem[mem[64] + 96] = (32 * _190) + 320
        _230 = mem[mem[128]]
        mem[mem[64] + (32 * _190) + 384] = mem[mem[128]]
        mem[mem[64] + (32 * _190) + 416 len 32 * _230] = mem[mem[128] + 32 len 32 * _230]
        mem[mem[64] + 128] = mem[160]
        mem[mem[64] + 160] = mem[192]
        mem[mem[64] + 192] = mem[224]
        mem[mem[64] + 224] = mem[256]
        mem[mem[64] + 256] = mem[288]
        mem[mem[64] + 288] = mem[320]
        mem[mem[64] + 320] = mem[352]
        mem[mem[64] + 32] = (32 * _190) + (32 * _230) + 416
        mem[_188 + (32 * _190) + (32 * _230) + 416] = mem[384]
        mem[_188 + (32 * _190) + (32 * _230) + 448] = mem[416]
        mem[_188 + (32 * _190) + (32 * _230) + 480] = 160
        _279 = mem[mem[448]]
        mem[_188 + (32 * _190) + (32 * _230) + 576] = mem[mem[448]]
        mem[_188 + (32 * _190) + (32 * _230) + 608 len 32 * _279] = mem[mem[448] + 32 len 32 * _279]
        mem[_188 + (32 * _190) + (32 * _230) + 512] = mem[480]
        mem[_188 + (32 * _190) + (32 * _230) + 544] = mem[512]
        return memory
          from mem[64]
           len _188 + (32 * _190) + (32 * _230) + (32 * _279) + -mem[64] + 608
}



}
