contract main {




// =====================  Runtime code  =====================


#
#  - sub_da062c85(?)
#
function _fallback() payable {
    revert
}

function sub_86ebe88a(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    mem[544] = 0
    mem[576] = 0
    mem[160] = 96
    require 0 < ('cd', 100).length
    require ('cd', 100)[0] == address(('cd', 100)[0])
    if address(cd[68]) == address(('cd', 100)[0]):
        mem[608] = 0
        mem[640] = 0
        mem[672] = 0
        mem[704] = 0
        mem[736] = 0
        mem[768] = 0
        require ext_code.size(0x4d0cf9e4d28c85b0cea3c4c68f3c54f9f474af8e)
        staticcall 0x4d0cf9e4d28c85b0cea3c4c68f3c54f9f474af8e.marketFactoryId() with:
                gas gas_remaining wei
        mem[800] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 804] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 836] = address(cd[36])
        mem[ceil32(return_data.size) + 868] = address(cd[68])
        require ext_code.size(0x94d7e5c48ca9627001facb04d1820c54dff3032c)
        staticcall 0x94d7e5c48ca9627001facb04d1820c54dff3032c.getMarket(bytes32 arg1, address arg2, address arg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0], address(cd[36]), address(cd[68])
        mem[ceil32(return_data.size) + 800] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 800 len 160] = ext_call.return_data[0 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        mem[(4 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
        mem[(4 * ceil32(return_data.size)) + 832] = ext_call.return_data[32]
        mem[(4 * ceil32(return_data.size)) + 864] = ext_call.return_data[64]
        mem[(4 * ceil32(return_data.size)) + 896] = ext_call.return_data[96]
        mem[(4 * ceil32(return_data.size)) + 928] = ext_call.return_data[128]
        require ext_code.size(0x94d7e5c48ca9627001facb04d1820c54dff3032c)
        staticcall 0x94d7e5c48ca9627001facb04d1820c54dff3032c.swapFee() with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + 992] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(4 * ceil32(return_data.size)) + 960] = ext_call.return_data[0]
        mem[96] = (4 * ceil32(return_data.size)) + 800
        mem[(6 * ceil32(return_data.size)) + 996] = address(cd[4])
        mem[(6 * ceil32(return_data.size)) + 1028] = address(cd[68])
        require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
        staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(cd[4]), address(cd[68])
        mem[(6 * ceil32(return_data.size)) + 992] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReserves() with:
                gas gas_remaining wei
        mem[(7 * ceil32(return_data.size)) + 992 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        mem[(8 * ceil32(return_data.size)) + 992] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        mem[(10 * ceil32(return_data.size)) + 992] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(11 * ceil32(return_data.size)) + 992] = address(ext_call.return_data[0])
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token0() with:
                gas gas_remaining wei
        mem[(11 * ceil32(return_data.size)) + 1216] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(11 * ceil32(return_data.size)) + 1024] = ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).token1() with:
                gas gas_remaining wei
        mem[(12 * ceil32(return_data.size)) + 1216] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(11 * ceil32(return_data.size)) + 1056] = ext_call.return_data[12 len 20]
        mem[(11 * ceil32(return_data.size)) + 1088] = Mask(112, 0, ext_call.return_data[0])
        mem[(11 * ceil32(return_data.size)) + 1120] = Mask(112, 0, ext_call.return_data[32])
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        mem[(13 * ceil32(return_data.size)) + 1216] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        mem[(11 * ceil32(return_data.size)) + 1152] = ext_call.return_data[31 len 1]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x313ce567 with:
                gas gas_remaining wei
        mem[(14 * ceil32(return_data.size)) + 1216] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        mem[(11 * ceil32(return_data.size)) + 1184] = ext_call.return_data[31 len 1]
        mem[128] = (11 * ceil32(return_data.size)) + 992
        require ('cd', 100).length - 1 <= test266151307()
        mem[(15 * ceil32(return_data.size)) + 1216] = ('cd', 100).length - 1
        mem[64] = (15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1248
        if not ('cd', 100).length - 1:
            idx = 0
            s = ext_call.return_data[0]
            s = ext_call.return_data[0]
            s = Mask(112, 0, ext_call.return_data[32])
            s = Mask(112, 0, ext_call.return_data[0])
            s = ext_call.return_data[0]
            while idx < ('cd', 100).length - 1:
                require idx < ('cd', 100).length
                require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
                require idx + 1 < ('cd', 100).length
                require cd[((32 * idx + 1) + cd[100] + 36)] == address(cd[((32 * idx + 1) + cd[100] + 36)])
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[100] + 36)])
                mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[100] + 36)])
                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(cd[((32 * idx) + cd[100] + 36)]), address(cd[((32 * idx + 1) + cd[100] + 36)])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _427 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _430 = mem[_427]
                require mem[_427] == mem[_427 + 12 len 20]
                require ext_code.size(mem[_427 + 12 len 20])
                staticcall mem[_427 + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _439 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _440 = mem[_439]
                require mem[_439] == mem[_439 + 12 len 20]
                require ext_code.size(address(_430))
                staticcall address(_430).token1() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _451 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _452 = mem[_451]
                require mem[_451] == mem[_451 + 12 len 20]
                require ext_code.size(address(_430))
                staticcall address(_430).getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _463 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _464 = mem[_463]
                require mem[_463] == mem[_463 + 18 len 14]
                _471 = mem[_463 + 32]
                require mem[_463 + 32] == mem[_463 + 50 len 14]
                require mem[_463 + 64] == mem[_463 + 92 len 4]
                _475 = mem[64]
                mem[64] = mem[64] + 224
                mem[_475] = address(_430)
                mem[_475 + 32] = address(_440)
                mem[_475 + 64] = address(_452)
                mem[_475 + 96] = Mask(112, 0, _464)
                mem[_475 + 128] = Mask(112, 0, _471)
                require ext_code.size(address(_440))
                staticcall address(_440).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _480 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_480] == mem[_480 + 31 len 1]
                mem[_475 + 160] = mem[_480 + 31 len 1]
                require ext_code.size(address(_452))
                staticcall address(_452).0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _494 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_494] == mem[_494 + 31 len 1]
                mem[_475 + 192] = mem[_494 + 31 len 1]
                require idx < mem[(15 * ceil32(return_data.size)) + 1216]
                mem[(32 * idx) + (15 * ceil32(return_data.size)) + 1248] = _475
                idx = idx + 1
                s = _452
                s = _440
                s = Mask(112, 0, _471)
                s = Mask(112, 0, _464)
                s = _430
                continue 
            mem[160] = (15 * ceil32(return_data.size)) + 1216
            _333 = mem[64]
            mem[mem[64]] = 32
            _343 = mem[96]
            mem[mem[64] + 32] = mem[mem[96]]
            mem[mem[64] + 64] = mem[mem[96] + 32]
            mem[mem[64] + 96] = mem[mem[96] + 64]
            mem[mem[64] + 128] = mem[mem[96] + 96]
            mem[mem[64] + 160] = mem[_343 + 128]
            mem[mem[64] + 192] = mem[_343 + 160]
            mem[mem[64] + 224] = mem[mem[128] + 12 len 20]
            mem[mem[64] + 256] = mem[mem[128] + 44 len 20]
            mem[mem[64] + 288] = mem[mem[128] + 76 len 20]
            mem[mem[64] + 320] = mem[mem[128] + 96]
            mem[mem[64] + 352] = mem[mem[128] + 128]
            mem[mem[64] + 384] = mem[mem[128] + 191 len 1]
            mem[mem[64] + 416] = mem[mem[128] + 223 len 1]
            mem[mem[64] + 448] = 448
            _360 = mem[(15 * ceil32(return_data.size)) + 1216]
            mem[mem[64] + 480] = mem[(15 * ceil32(return_data.size)) + 1216]
            s = mem[64] + 512
            idx = 0
            t = (15 * ceil32(return_data.size)) + 1248
            while idx < _360:
                _511 = mem[t]
                mem[s] = mem[mem[t] + 12 len 20]
                mem[s + 32] = mem[_511 + 44 len 20]
                mem[s + 64] = mem[_511 + 76 len 20]
                mem[s + 96] = mem[_511 + 96]
                mem[s + 128] = mem[_511 + 128]
                mem[s + 160] = mem[_511 + 191 len 1]
                mem[s + 192] = mem[_511 + 223 len 1]
                s = s + 224
                idx = idx + 1
                t = t + 32
                continue 
            return memory
              from mem[64]
               len _333 + (224 * _360) + -mem[64] + 512
        mem[64] = (15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1472
        mem[(15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1248] = 0
        mem[(15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1280] = 0
        mem[(15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1312] = 0
        mem[(15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1344] = 0
        mem[(15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1376] = 0
        mem[(15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1408] = 0
        mem[(15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1440] = 0
        mem[var137001] = (15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1248
        s = var137001
        idx = var137002
        while idx - 1:
            mem[64] = mem[64] + 224
            mem[(15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1248] = 0
            mem[(15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1280] = 0
            mem[(15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1312] = 0
            mem[(15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1344] = 0
            mem[(15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1376] = 0
            mem[(15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1408] = 0
            mem[(15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1440] = 0
            mem[s + 32] = (15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1248
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = ext_call.return_data[0]
        s = ext_call.return_data[0]
        s = Mask(112, 0, ext_call.return_data[32])
        s = Mask(112, 0, ext_call.return_data[0])
        s = ext_call.return_data[0]
        while idx < ('cd', 100).length - 1:
            require idx < ('cd', 100).length
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            require idx + 1 < ('cd', 100).length
            require cd[((32 * idx + 1) + cd[100] + 36)] == address(cd[((32 * idx + 1) + cd[100] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[100] + 36)])
            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)]), address(cd[((32 * idx + 1) + cd[100] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _752 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _754 = mem[_752]
            require mem[_752] == mem[_752 + 12 len 20]
            require ext_code.size(mem[_752 + 12 len 20])
            staticcall mem[_752 + 12 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _760 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _762 = mem[_760]
            require mem[_760] == mem[_760 + 12 len 20]
            require ext_code.size(address(_754))
            staticcall address(_754).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _768 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _770 = mem[_768]
            require mem[_768] == mem[_768 + 12 len 20]
            require ext_code.size(address(_754))
            staticcall address(_754).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _776 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _778 = mem[_776]
            require mem[_776] == mem[_776 + 18 len 14]
            _780 = mem[_776 + 32]
            require mem[_776 + 32] == mem[_776 + 50 len 14]
            require mem[_776 + 64] == mem[_776 + 92 len 4]
            _784 = mem[64]
            mem[64] = mem[64] + 224
            mem[_784] = address(_754)
            mem[_784 + 32] = address(_762)
            mem[_784 + 64] = address(_770)
            mem[_784 + 96] = Mask(112, 0, _778)
            mem[_784 + 128] = Mask(112, 0, _780)
            require ext_code.size(address(_762))
            staticcall address(_762).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _790 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_790] == mem[_790 + 31 len 1]
            mem[_784 + 160] = mem[_790 + 31 len 1]
            require ext_code.size(address(_770))
            staticcall address(_770).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _798 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_798] == mem[_798 + 31 len 1]
            mem[_784 + 192] = mem[_798 + 31 len 1]
            require idx < mem[(15 * ceil32(return_data.size)) + 1216]
            mem[(32 * idx) + (15 * ceil32(return_data.size)) + 1248] = _784
            idx = idx + 1
            s = _770
            s = _762
            s = Mask(112, 0, _780)
            s = Mask(112, 0, _778)
            s = _754
            continue 
        mem[160] = (15 * ceil32(return_data.size)) + 1216
        _686 = mem[64]
        mem[mem[64]] = 32
        _696 = mem[96]
        mem[mem[64] + 32] = mem[mem[96]]
        mem[mem[64] + 64] = mem[mem[96] + 32]
        mem[mem[64] + 96] = mem[mem[96] + 64]
        mem[mem[64] + 128] = mem[mem[96] + 96]
        mem[mem[64] + 160] = mem[_696 + 128]
        mem[mem[64] + 192] = mem[_696 + 160]
        mem[mem[64] + 224] = mem[mem[128] + 12 len 20]
        mem[mem[64] + 256] = mem[mem[128] + 44 len 20]
        mem[mem[64] + 288] = mem[mem[128] + 76 len 20]
        mem[mem[64] + 320] = mem[mem[128] + 96]
        mem[mem[64] + 352] = mem[mem[128] + 128]
        mem[mem[64] + 384] = mem[mem[128] + 191 len 1]
        mem[mem[64] + 416] = mem[mem[128] + 223 len 1]
        mem[mem[64] + 448] = 448
        _727 = mem[(15 * ceil32(return_data.size)) + 1216]
        mem[mem[64] + 480] = mem[(15 * ceil32(return_data.size)) + 1216]
        s = mem[64] + 512
        idx = 0
        t = (15 * ceil32(return_data.size)) + 1248
        while idx < _727:
            _804 = mem[t]
            mem[s] = mem[mem[t] + 12 len 20]
            mem[s + 32] = mem[_804 + 44 len 20]
            mem[s + 64] = mem[_804 + 76 len 20]
            mem[s + 96] = mem[_804 + 96]
            mem[s + 128] = mem[_804 + 128]
            mem[s + 160] = mem[_804 + 191 len 1]
            mem[s + 192] = mem[_804 + 223 len 1]
            s = s + 224
            idx = idx + 1
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _686 + (224 * _727) + -mem[64] + 512
    require ('cd', 100).length - 1 < ('cd', 100).length
    require cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    require address(cd[68]) == address(cd[((32 * ('cd', 100).length - 1) + cd[100] + 36)])
    mem[608] = 0
    mem[640] = 0
    mem[672] = 0
    mem[704] = 0
    mem[736] = 0
    mem[768] = 0
    require ext_code.size(0x4d0cf9e4d28c85b0cea3c4c68f3c54f9f474af8e)
    staticcall 0x4d0cf9e4d28c85b0cea3c4c68f3c54f9f474af8e.marketFactoryId() with:
            gas gas_remaining wei
    mem[800] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 804] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 836] = address(cd[36])
    mem[ceil32(return_data.size) + 868] = address(cd[68])
    require ext_code.size(0x94d7e5c48ca9627001facb04d1820c54dff3032c)
    staticcall 0x94d7e5c48ca9627001facb04d1820c54dff3032c.getMarket(bytes32 arg1, address arg2, address arg3) with:
            gas gas_remaining wei
           args ext_call.return_data[0], address(cd[36]), address(cd[68])
    mem[ceil32(return_data.size) + 800] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 800 len 160] = ext_call.return_data[0 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    mem[(4 * ceil32(return_data.size)) + 800] = ext_call.return_data[0]
    mem[(4 * ceil32(return_data.size)) + 832] = ext_call.return_data[32]
    mem[(4 * ceil32(return_data.size)) + 864] = ext_call.return_data[64]
    mem[(4 * ceil32(return_data.size)) + 896] = ext_call.return_data[96]
    mem[(4 * ceil32(return_data.size)) + 928] = ext_call.return_data[128]
    require ext_code.size(0x94d7e5c48ca9627001facb04d1820c54dff3032c)
    staticcall 0x94d7e5c48ca9627001facb04d1820c54dff3032c.swapFee() with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 992] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 960] = ext_call.return_data[0]
    mem[96] = (4 * ceil32(return_data.size)) + 800
    mem[(6 * ceil32(return_data.size)) + 996] = address(cd[4])
    mem[(6 * ceil32(return_data.size)) + 1028] = address(cd[68])
    require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
    staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(cd[4]), address(cd[68])
    mem[(6 * ceil32(return_data.size)) + 992] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getReserves() with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 992 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    mem[(8 * ceil32(return_data.size)) + 992] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    mem[(10 * ceil32(return_data.size)) + 992] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(11 * ceil32(return_data.size)) + 992] = address(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    mem[(11 * ceil32(return_data.size)) + 1216] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(11 * ceil32(return_data.size)) + 1024] = ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    mem[(12 * ceil32(return_data.size)) + 1216] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(11 * ceil32(return_data.size)) + 1056] = ext_call.return_data[12 len 20]
    mem[(11 * ceil32(return_data.size)) + 1088] = Mask(112, 0, ext_call.return_data[0])
    mem[(11 * ceil32(return_data.size)) + 1120] = Mask(112, 0, ext_call.return_data[32])
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    mem[(13 * ceil32(return_data.size)) + 1216] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    mem[(11 * ceil32(return_data.size)) + 1152] = ext_call.return_data[31 len 1]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    mem[(14 * ceil32(return_data.size)) + 1216] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    mem[(11 * ceil32(return_data.size)) + 1184] = ext_call.return_data[31 len 1]
    mem[128] = (11 * ceil32(return_data.size)) + 992
    require ('cd', 100).length - 1 <= test266151307()
    mem[(15 * ceil32(return_data.size)) + 1216] = ('cd', 100).length - 1
    mem[64] = (15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1248
    if not ('cd', 100).length - 1:
        idx = 0
        s = ext_call.return_data[0]
        s = ext_call.return_data[0]
        s = Mask(112, 0, ext_call.return_data[32])
        s = Mask(112, 0, ext_call.return_data[0])
        s = ext_call.return_data[0]
        while idx < ('cd', 100).length - 1:
            require idx < ('cd', 100).length
            require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
            require idx + 1 < ('cd', 100).length
            require cd[((32 * idx + 1) + cd[100] + 36)] == address(cd[((32 * idx + 1) + cd[100] + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + cd[100] + 36)])
            mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[100] + 36)])
            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + cd[100] + 36)]), address(cd[((32 * idx + 1) + cd[100] + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _604 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _607 = mem[_604]
            require mem[_604] == mem[_604 + 12 len 20]
            require ext_code.size(mem[_604 + 12 len 20])
            staticcall mem[_604 + 12 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _615 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _618 = mem[_615]
            require mem[_615] == mem[_615 + 12 len 20]
            require ext_code.size(address(_607))
            staticcall address(_607).token1() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _627 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _630 = mem[_627]
            require mem[_627] == mem[_627 + 12 len 20]
            require ext_code.size(address(_607))
            staticcall address(_607).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _639 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _644 = mem[_639]
            require mem[_639] == mem[_639 + 18 len 14]
            _647 = mem[_639 + 32]
            require mem[_639 + 32] == mem[_639 + 50 len 14]
            require mem[_639 + 64] == mem[_639 + 92 len 4]
            _652 = mem[64]
            mem[64] = mem[64] + 224
            mem[_652] = address(_607)
            mem[_652 + 32] = address(_618)
            mem[_652 + 64] = address(_630)
            mem[_652 + 96] = Mask(112, 0, _644)
            mem[_652 + 128] = Mask(112, 0, _647)
            require ext_code.size(address(_618))
            staticcall address(_618).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _657 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_657] == mem[_657 + 31 len 1]
            mem[_652 + 160] = mem[_657 + 31 len 1]
            require ext_code.size(address(_630))
            staticcall address(_630).0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _671 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_671] == mem[_671 + 31 len 1]
            mem[_652 + 192] = mem[_671 + 31 len 1]
            require idx < mem[(15 * ceil32(return_data.size)) + 1216]
            mem[(32 * idx) + (15 * ceil32(return_data.size)) + 1248] = _652
            idx = idx + 1
            s = _630
            s = _618
            s = Mask(112, 0, _647)
            s = Mask(112, 0, _644)
            s = _607
            continue 
        mem[160] = (15 * ceil32(return_data.size)) + 1216
        _520 = mem[64]
        mem[mem[64]] = 32
        _521 = mem[96]
        mem[mem[64] + 32] = mem[mem[96]]
        mem[mem[64] + 64] = mem[mem[96] + 32]
        mem[mem[64] + 96] = mem[mem[96] + 64]
        mem[mem[64] + 128] = mem[mem[96] + 96]
        mem[mem[64] + 160] = mem[_521 + 128]
        mem[mem[64] + 192] = mem[_521 + 160]
        mem[mem[64] + 224] = mem[mem[128] + 12 len 20]
        mem[mem[64] + 256] = mem[mem[128] + 44 len 20]
        mem[mem[64] + 288] = mem[mem[128] + 76 len 20]
        mem[mem[64] + 320] = mem[mem[128] + 96]
        mem[mem[64] + 352] = mem[mem[128] + 128]
        mem[mem[64] + 384] = mem[mem[128] + 191 len 1]
        mem[mem[64] + 416] = mem[mem[128] + 223 len 1]
        mem[mem[64] + 448] = 448
        _537 = mem[(15 * ceil32(return_data.size)) + 1216]
        mem[mem[64] + 480] = mem[(15 * ceil32(return_data.size)) + 1216]
        s = mem[64] + 512
        idx = 0
        t = (15 * ceil32(return_data.size)) + 1248
        while idx < _537:
            _685 = mem[t]
            mem[s] = mem[mem[t] + 12 len 20]
            mem[s + 32] = mem[_685 + 44 len 20]
            mem[s + 64] = mem[_685 + 76 len 20]
            mem[s + 96] = mem[_685 + 96]
            mem[s + 128] = mem[_685 + 128]
            mem[s + 160] = mem[_685 + 191 len 1]
            mem[s + 192] = mem[_685 + 223 len 1]
            s = s + 224
            idx = idx + 1
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _520 + (224 * _537) + -mem[64] + 512
    mem[64] = (15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1472
    mem[(15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1248] = 0
    mem[(15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1280] = 0
    mem[(15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1312] = 0
    mem[(15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1344] = 0
    mem[(15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1376] = 0
    mem[(15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1408] = 0
    mem[(15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1440] = 0
    mem[var145001] = (15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1248
    s = var145001
    idx = var145002
    while idx - 1:
        mem[64] = mem[64] + 224
        mem[(15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1248] = 0
        mem[(15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1280] = 0
        mem[(15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1312] = 0
        mem[(15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1344] = 0
        mem[(15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1376] = 0
        mem[(15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1408] = 0
        mem[(15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1440] = 0
        mem[s + 32] = (15 * ceil32(return_data.size)) + (32 * ('cd', 100).length - 1) + 1248
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    s = ext_call.return_data[0]
    s = ext_call.return_data[0]
    s = Mask(112, 0, ext_call.return_data[32])
    s = Mask(112, 0, ext_call.return_data[0])
    s = ext_call.return_data[0]
    while idx < ('cd', 100).length - 1:
        require idx < ('cd', 100).length
        require cd[((32 * idx) + cd[100] + 36)] == address(cd[((32 * idx) + cd[100] + 36)])
        require idx + 1 < ('cd', 100).length
        require cd[((32 * idx + 1) + cd[100] + 36)] == address(cd[((32 * idx + 1) + cd[100] + 36)])
        mem[mem[64] + 4] = address(cd[((32 * idx) + cd[100] + 36)])
        mem[mem[64] + 36] = address(cd[((32 * idx + 1) + cd[100] + 36)])
        require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
        staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(cd[((32 * idx) + cd[100] + 36)]), address(cd[((32 * idx + 1) + cd[100] + 36)])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _753 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _755 = mem[_753]
        require mem[_753] == mem[_753 + 12 len 20]
        require ext_code.size(mem[_753 + 12 len 20])
        staticcall mem[_753 + 12 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _761 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _763 = mem[_761]
        require mem[_761] == mem[_761 + 12 len 20]
        require ext_code.size(address(_755))
        staticcall address(_755).token1() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _769 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _771 = mem[_769]
        require mem[_769] == mem[_769 + 12 len 20]
        require ext_code.size(address(_755))
        staticcall address(_755).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _777 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _779 = mem[_777]
        require mem[_777] == mem[_777 + 18 len 14]
        _781 = mem[_777 + 32]
        require mem[_777 + 32] == mem[_777 + 50 len 14]
        require mem[_777 + 64] == mem[_777 + 92 len 4]
        _787 = mem[64]
        mem[64] = mem[64] + 224
        mem[_787] = address(_755)
        mem[_787 + 32] = address(_763)
        mem[_787 + 64] = address(_771)
        mem[_787 + 96] = Mask(112, 0, _779)
        mem[_787 + 128] = Mask(112, 0, _781)
        require ext_code.size(address(_763))
        staticcall address(_763).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _791 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_791] == mem[_791 + 31 len 1]
        mem[_787 + 160] = mem[_791 + 31 len 1]
        require ext_code.size(address(_771))
        staticcall address(_771).0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _799 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_799] == mem[_799 + 31 len 1]
        mem[_787 + 192] = mem[_799 + 31 len 1]
        require idx < mem[(15 * ceil32(return_data.size)) + 1216]
        mem[(32 * idx) + (15 * ceil32(return_data.size)) + 1248] = _787
        idx = idx + 1
        s = _771
        s = _763
        s = Mask(112, 0, _781)
        s = Mask(112, 0, _779)
        s = _755
        continue 
    mem[160] = (15 * ceil32(return_data.size)) + 1216
    _695 = mem[64]
    mem[mem[64]] = 32
    _704 = mem[96]
    mem[mem[64] + 32] = mem[mem[96]]
    mem[mem[64] + 64] = mem[mem[96] + 32]
    mem[mem[64] + 96] = mem[mem[96] + 64]
    mem[mem[64] + 128] = mem[mem[96] + 96]
    mem[mem[64] + 160] = mem[_704 + 128]
    mem[mem[64] + 192] = mem[_704 + 160]
    mem[mem[64] + 224] = mem[mem[128] + 12 len 20]
    mem[mem[64] + 256] = mem[mem[128] + 44 len 20]
    mem[mem[64] + 288] = mem[mem[128] + 76 len 20]
    mem[mem[64] + 320] = mem[mem[128] + 96]
    mem[mem[64] + 352] = mem[mem[128] + 128]
    mem[mem[64] + 384] = mem[mem[128] + 191 len 1]
    mem[mem[64] + 416] = mem[mem[128] + 223 len 1]
    mem[mem[64] + 448] = 448
    _729 = mem[(15 * ceil32(return_data.size)) + 1216]
    mem[mem[64] + 480] = mem[(15 * ceil32(return_data.size)) + 1216]
    s = mem[64] + 512
    idx = 0
    t = (15 * ceil32(return_data.size)) + 1248
    while idx < _729:
        _805 = mem[t]
        mem[s] = mem[mem[t] + 12 len 20]
        mem[s + 32] = mem[_805 + 44 len 20]
        mem[s + 64] = mem[_805 + 76 len 20]
        mem[s + 96] = mem[_805 + 96]
        mem[s + 128] = mem[_805 + 128]
        mem[s + 160] = mem[_805 + 191 len 1]
        mem[s + 192] = mem[_805 + 223 len 1]
        s = s + 224
        idx = idx + 1
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _695 + (224 * _729) + -mem[64] + 512
}



}
