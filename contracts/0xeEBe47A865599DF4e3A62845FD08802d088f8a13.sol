contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_6794f726(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg1.length
    if not arg1.length:
        mem[(64 * arg1.length) + 160] = arg1.length
        if not arg1.length:
            mem[(98 * arg1.length) + 192] = arg1.length
            if not arg1.length:
                mem[(131 * arg1.length) + 224] = arg1.length
                mem[64] = (164 * arg1.length) + 256
                if not arg1.length:
                    idx = 0
                    while idx < arg1.length:
                        require idx < mem[96]
                        require ext_code.size(mem[(32 * idx) + 140 len 20])
                        staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                                gas gas_remaining wei
                        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
                        require idx < mem[(64 * arg1.length) + 160]
                        mem[(32 * idx) + (64 * arg1.length) + 192] = Mask(112, 0, ext_call.return_data[32])
                        require idx < mem[(98 * arg1.length) + 192]
                        mem[(32 * idx) + (98 * arg1.length) + 224] = uint32(ext_call.return_data[64])
                        require idx < mem[96]
                        require idx < mem[(131 * arg1.length) + 224]
                        mem[(32 * idx) + (131 * arg1.length) + 256] = mem[(32 * idx) + 140 len 20]
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 128
                    mem[mem[64] + 128] = mem[(32 * arg1.length) + 128]
                    _530 = mem[(32 * arg1.length) + 128]
                    mem[mem[64] + 160 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
                    mem[mem[64] + 32] = (32 * _530) + 160
                    mem[(32 * _530) + mem[64] + 160] = mem[(64 * arg1.length) + 160]
                    _961 = mem[(64 * arg1.length) + 160]
                    mem[(32 * _530) + mem[64] + 192 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
                    mem[mem[64] + 64] = (32 * _961) + (32 * _530) + 192
                    mem[(32 * _961) + (32 * _530) + mem[64] + 192] = mem[(98 * arg1.length) + 192]
                    _1137 = mem[(98 * arg1.length) + 192]
                    mem[(32 * _961) + (32 * _530) + mem[64] + 224 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
                    mem[mem[64] + 96] = (32 * _1137) + (32 * _961) + (32 * _530) + 224
                    mem[(32 * _1137) + (32 * _961) + (32 * _530) + mem[64] + 224] = mem[(131 * arg1.length) + 224]
                    _1265 = mem[(131 * arg1.length) + 224]
                    mem[(32 * _1137) + (32 * _961) + (32 * _530) + mem[64] + 256 len floor32(mem[(131 * arg1.length) + 224])] = mem[(131 * arg1.length) + 256 len floor32(mem[(131 * arg1.length) + 224])]
                    return 128, 
                           (32 * _530) + 160,
                           (32 * _961) + (32 * _530) + 192,
                           (32 * _1137) + (32 * _961) + (32 * _530) + 224,
                           mem[mem[64] + 128 len (32 * _1265) + (32 * _1137) + (32 * _961) + (32 * _530) + 128]
                mem[(131 * arg1.length) + 256 len 32 * arg1.length] = code.data[1345 len 32 * arg1.length]
                idx = 0
                while idx < arg1.length:
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
                    require idx < mem[(64 * arg1.length) + 160]
                    mem[(32 * idx) + (64 * arg1.length) + 192] = Mask(112, 0, ext_call.return_data[32])
                    require idx < mem[(98 * arg1.length) + 192]
                    mem[(32 * idx) + (98 * arg1.length) + 224] = uint32(ext_call.return_data[64])
                    require idx < mem[96]
                    require idx < mem[(131 * arg1.length) + 224]
                    mem[(32 * idx) + (131 * arg1.length) + 256] = mem[(32 * idx) + 140 len 20]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[(32 * arg1.length) + 128]
                _536 = mem[(32 * arg1.length) + 128]
                mem[mem[64] + 160 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
                mem[mem[64] + 32] = (32 * _536) + 160
                mem[(32 * _536) + mem[64] + 160] = mem[(64 * arg1.length) + 160]
                _964 = mem[(64 * arg1.length) + 160]
                mem[(32 * _536) + mem[64] + 192 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
                mem[mem[64] + 64] = (32 * _964) + (32 * _536) + 192
                mem[(32 * _964) + (32 * _536) + mem[64] + 192] = mem[(98 * arg1.length) + 192]
                _1140 = mem[(98 * arg1.length) + 192]
                mem[(32 * _964) + (32 * _536) + mem[64] + 224 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
                mem[mem[64] + 96] = (32 * _1140) + (32 * _964) + (32 * _536) + 224
                mem[(32 * _1140) + (32 * _964) + (32 * _536) + mem[64] + 224] = mem[(131 * arg1.length) + 224]
                _1268 = mem[(131 * arg1.length) + 224]
                mem[(32 * _1140) + (32 * _964) + (32 * _536) + mem[64] + 256 len floor32(mem[(131 * arg1.length) + 224])] = mem[(131 * arg1.length) + 256 len floor32(mem[(131 * arg1.length) + 224])]
                return 128, 
                       (32 * _536) + 160,
                       (32 * _964) + (32 * _536) + 192,
                       (32 * _1140) + (32 * _964) + (32 * _536) + 224,
                       mem[mem[64] + 128 len (32 * _1268) + (32 * _1140) + (32 * _964) + (32 * _536) + 128]
            mem[(98 * arg1.length) + 224 len 32 * arg1.length] = code.data[1345 len 32 * arg1.length]
            mem[(131 * arg1.length) + 224] = arg1.length
            mem[64] = (164 * arg1.length) + 256
            if not arg1.length:
                idx = 0
                while idx < arg1.length:
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
                    require idx < mem[(64 * arg1.length) + 160]
                    mem[(32 * idx) + (64 * arg1.length) + 192] = Mask(112, 0, ext_call.return_data[32])
                    require idx < mem[(98 * arg1.length) + 192]
                    mem[(32 * idx) + (98 * arg1.length) + 224] = uint32(ext_call.return_data[64])
                    require idx < mem[96]
                    require idx < mem[(131 * arg1.length) + 224]
                    mem[(32 * idx) + (131 * arg1.length) + 256] = mem[(32 * idx) + 140 len 20]
                    idx = idx + 1
                    continue 
                _540 = mem[64]
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[(32 * arg1.length) + 128]
                _542 = mem[(32 * arg1.length) + 128]
                mem[mem[64] + 160 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
                mem[mem[64] + 32] = (32 * _542) + 160
                mem[(32 * _542) + mem[64] + 160] = mem[(64 * arg1.length) + 160]
                _967 = mem[(64 * arg1.length) + 160]
                mem[(32 * _542) + mem[64] + 192 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
                mem[mem[64] + 64] = (32 * _967) + (32 * _542) + 192
                mem[(32 * _967) + (32 * _542) + _540 + 192] = mem[(98 * arg1.length) + 192]
                _1143 = mem[(98 * arg1.length) + 192]
                mem[(32 * _967) + (32 * _542) + _540 + 224 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
                mem[_540 + 96] = (32 * _1143) + (32 * _967) + (32 * _542) + 224
                mem[(32 * _1143) + (32 * _967) + (32 * _542) + _540 + 224] = mem[(131 * arg1.length) + 224]
                _1271 = mem[(131 * arg1.length) + 224]
                mem[(32 * _1143) + (32 * _967) + (32 * _542) + _540 + 256 len floor32(mem[(131 * arg1.length) + 224])] = mem[(131 * arg1.length) + 256 len floor32(mem[(131 * arg1.length) + 224])]
                return memory
                  from mem[64]
                   len (32 * _1271) + (32 * _1143) + (32 * _967) + (32 * _542) + _540 + -mem[64] + 256
            mem[(131 * arg1.length) + 256 len 32 * arg1.length] = code.data[1345 len 32 * arg1.length]
            idx = 0
            while idx < arg1.length:
                require idx < mem[96]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
                require idx < mem[(64 * arg1.length) + 160]
                mem[(32 * idx) + (64 * arg1.length) + 192] = Mask(112, 0, ext_call.return_data[32])
                require idx < mem[(98 * arg1.length) + 192]
                mem[(32 * idx) + (98 * arg1.length) + 224] = uint32(ext_call.return_data[64])
                require idx < mem[96]
                require idx < mem[(131 * arg1.length) + 224]
                mem[(32 * idx) + (131 * arg1.length) + 256] = mem[(32 * idx) + 140 len 20]
                idx = idx + 1
                continue 
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[(32 * arg1.length) + 128]
            _548 = mem[(32 * arg1.length) + 128]
            mem[mem[64] + 160 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
            mem[mem[64] + 32] = (32 * _548) + 160
            mem[(32 * _548) + mem[64] + 160] = mem[(64 * arg1.length) + 160]
            _970 = mem[(64 * arg1.length) + 160]
            mem[(32 * _548) + mem[64] + 192 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
            mem[mem[64] + 64] = (32 * _970) + (32 * _548) + 192
            mem[(32 * _970) + (32 * _548) + mem[64] + 192] = mem[(98 * arg1.length) + 192]
            _1146 = mem[(98 * arg1.length) + 192]
            mem[(32 * _970) + (32 * _548) + mem[64] + 224 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
            mem[mem[64] + 96] = (32 * _1146) + (32 * _970) + (32 * _548) + 224
            mem[(32 * _1146) + (32 * _970) + (32 * _548) + mem[64] + 224] = mem[(131 * arg1.length) + 224]
            _1274 = mem[(131 * arg1.length) + 224]
            mem[(32 * _1146) + (32 * _970) + (32 * _548) + mem[64] + 256 len floor32(mem[(131 * arg1.length) + 224])] = mem[(131 * arg1.length) + 256 len floor32(mem[(131 * arg1.length) + 224])]
            return 128, 
                   (32 * _548) + 160,
                   (32 * _970) + (32 * _548) + 192,
                   (32 * _1146) + (32 * _970) + (32 * _548) + 224,
                   mem[mem[64] + 128 len (32 * _1274) + (32 * _1146) + (32 * _970) + (32 * _548) + 128]
        mem[(64 * arg1.length) + 192 len 32 * arg1.length] = code.data[1345 len 32 * arg1.length]
        mem[(98 * arg1.length) + 192] = arg1.length
        if not arg1.length:
            mem[(131 * arg1.length) + 224] = arg1.length
            mem[64] = (164 * arg1.length) + 256
            if not arg1.length:
                idx = 0
                while idx < arg1.length:
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
                    require idx < mem[(64 * arg1.length) + 160]
                    mem[(32 * idx) + (64 * arg1.length) + 192] = Mask(112, 0, ext_call.return_data[32])
                    require idx < mem[(98 * arg1.length) + 192]
                    mem[(32 * idx) + (98 * arg1.length) + 224] = uint32(ext_call.return_data[64])
                    require idx < mem[96]
                    require idx < mem[(131 * arg1.length) + 224]
                    mem[(32 * idx) + (131 * arg1.length) + 256] = mem[(32 * idx) + 140 len 20]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[(32 * arg1.length) + 128]
                _554 = mem[(32 * arg1.length) + 128]
                mem[mem[64] + 160 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
                mem[mem[64] + 32] = (32 * _554) + 160
                mem[(32 * _554) + mem[64] + 160] = mem[(64 * arg1.length) + 160]
                _973 = mem[(64 * arg1.length) + 160]
                mem[(32 * _554) + mem[64] + 192 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
                mem[mem[64] + 64] = (32 * _973) + (32 * _554) + 192
                mem[(32 * _973) + (32 * _554) + mem[64] + 192] = mem[(98 * arg1.length) + 192]
                _1149 = mem[(98 * arg1.length) + 192]
                mem[(32 * _973) + (32 * _554) + mem[64] + 224 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
                mem[mem[64] + 96] = (32 * _1149) + (32 * _973) + (32 * _554) + 224
                mem[(32 * _1149) + (32 * _973) + (32 * _554) + mem[64] + 224] = mem[(131 * arg1.length) + 224]
                _1277 = mem[(131 * arg1.length) + 224]
                mem[(32 * _1149) + (32 * _973) + (32 * _554) + mem[64] + 256 len floor32(mem[(131 * arg1.length) + 224])] = mem[(131 * arg1.length) + 256 len floor32(mem[(131 * arg1.length) + 224])]
                return 128, 
                       (32 * _554) + 160,
                       (32 * _973) + (32 * _554) + 192,
                       (32 * _1149) + (32 * _973) + (32 * _554) + 224,
                       mem[mem[64] + 128 len (32 * _1277) + (32 * _1149) + (32 * _973) + (32 * _554) + 128]
            mem[(131 * arg1.length) + 256 len 32 * arg1.length] = code.data[1345 len 32 * arg1.length]
            idx = 0
            while idx < arg1.length:
                require idx < mem[96]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
                require idx < mem[(64 * arg1.length) + 160]
                mem[(32 * idx) + (64 * arg1.length) + 192] = Mask(112, 0, ext_call.return_data[32])
                require idx < mem[(98 * arg1.length) + 192]
                mem[(32 * idx) + (98 * arg1.length) + 224] = uint32(ext_call.return_data[64])
                require idx < mem[96]
                require idx < mem[(131 * arg1.length) + 224]
                mem[(32 * idx) + (131 * arg1.length) + 256] = mem[(32 * idx) + 140 len 20]
                idx = idx + 1
                continue 
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[(32 * arg1.length) + 128]
            _560 = mem[(32 * arg1.length) + 128]
            mem[mem[64] + 160 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
            mem[mem[64] + 32] = (32 * _560) + 160
            mem[(32 * _560) + mem[64] + 160] = mem[(64 * arg1.length) + 160]
            _976 = mem[(64 * arg1.length) + 160]
            mem[(32 * _560) + mem[64] + 192 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
            mem[mem[64] + 64] = (32 * _976) + (32 * _560) + 192
            mem[(32 * _976) + (32 * _560) + mem[64] + 192] = mem[(98 * arg1.length) + 192]
            _1152 = mem[(98 * arg1.length) + 192]
            mem[(32 * _976) + (32 * _560) + mem[64] + 224 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
            mem[mem[64] + 96] = (32 * _1152) + (32 * _976) + (32 * _560) + 224
            mem[(32 * _1152) + (32 * _976) + (32 * _560) + mem[64] + 224] = mem[(131 * arg1.length) + 224]
            _1280 = mem[(131 * arg1.length) + 224]
            mem[(32 * _1152) + (32 * _976) + (32 * _560) + mem[64] + 256 len floor32(mem[(131 * arg1.length) + 224])] = mem[(131 * arg1.length) + 256 len floor32(mem[(131 * arg1.length) + 224])]
            return 128, 
                   (32 * _560) + 160,
                   (32 * _976) + (32 * _560) + 192,
                   (32 * _1152) + (32 * _976) + (32 * _560) + 224,
                   mem[mem[64] + 128 len (32 * _1280) + (32 * _1152) + (32 * _976) + (32 * _560) + 128]
        mem[(98 * arg1.length) + 224 len 32 * arg1.length] = code.data[1345 len 32 * arg1.length]
        mem[(131 * arg1.length) + 224] = arg1.length
        mem[64] = (164 * arg1.length) + 256
        if not arg1.length:
            idx = 0
            while idx < arg1.length:
                require idx < mem[96]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
                require idx < mem[(64 * arg1.length) + 160]
                mem[(32 * idx) + (64 * arg1.length) + 192] = Mask(112, 0, ext_call.return_data[32])
                require idx < mem[(98 * arg1.length) + 192]
                mem[(32 * idx) + (98 * arg1.length) + 224] = uint32(ext_call.return_data[64])
                require idx < mem[96]
                require idx < mem[(131 * arg1.length) + 224]
                mem[(32 * idx) + (131 * arg1.length) + 256] = mem[(32 * idx) + 140 len 20]
                idx = idx + 1
                continue 
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[(32 * arg1.length) + 128]
            _566 = mem[(32 * arg1.length) + 128]
            mem[mem[64] + 160 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
            mem[mem[64] + 32] = (32 * _566) + 160
            mem[(32 * _566) + mem[64] + 160] = mem[(64 * arg1.length) + 160]
            _979 = mem[(64 * arg1.length) + 160]
            mem[(32 * _566) + mem[64] + 192 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
            mem[mem[64] + 64] = (32 * _979) + (32 * _566) + 192
            mem[(32 * _979) + (32 * _566) + mem[64] + 192] = mem[(98 * arg1.length) + 192]
            _1155 = mem[(98 * arg1.length) + 192]
            mem[(32 * _979) + (32 * _566) + mem[64] + 224 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
            mem[mem[64] + 96] = (32 * _1155) + (32 * _979) + (32 * _566) + 224
            mem[(32 * _1155) + (32 * _979) + (32 * _566) + mem[64] + 224] = mem[(131 * arg1.length) + 224]
            _1283 = mem[(131 * arg1.length) + 224]
            mem[(32 * _1155) + (32 * _979) + (32 * _566) + mem[64] + 256 len floor32(mem[(131 * arg1.length) + 224])] = mem[(131 * arg1.length) + 256 len floor32(mem[(131 * arg1.length) + 224])]
            return 128, 
                   (32 * _566) + 160,
                   (32 * _979) + (32 * _566) + 192,
                   (32 * _1155) + (32 * _979) + (32 * _566) + 224,
                   mem[mem[64] + 128 len (32 * _1283) + (32 * _1155) + (32 * _979) + (32 * _566) + 128]
        mem[(131 * arg1.length) + 256 len 32 * arg1.length] = code.data[1345 len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
            require idx < mem[(64 * arg1.length) + 160]
            mem[(32 * idx) + (64 * arg1.length) + 192] = Mask(112, 0, ext_call.return_data[32])
            require idx < mem[(98 * arg1.length) + 192]
            mem[(32 * idx) + (98 * arg1.length) + 224] = uint32(ext_call.return_data[64])
            require idx < mem[96]
            require idx < mem[(131 * arg1.length) + 224]
            mem[(32 * idx) + (131 * arg1.length) + 256] = mem[(32 * idx) + 140 len 20]
            idx = idx + 1
            continue 
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[(32 * arg1.length) + 128]
        _572 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 160 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        mem[mem[64] + 32] = (32 * _572) + 160
        mem[(32 * _572) + mem[64] + 160] = mem[(64 * arg1.length) + 160]
        _982 = mem[(64 * arg1.length) + 160]
        mem[(32 * _572) + mem[64] + 192 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
        mem[mem[64] + 64] = (32 * _982) + (32 * _572) + 192
        mem[(32 * _982) + (32 * _572) + mem[64] + 192] = mem[(98 * arg1.length) + 192]
        _1158 = mem[(98 * arg1.length) + 192]
        mem[(32 * _982) + (32 * _572) + mem[64] + 224 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
        mem[mem[64] + 96] = (32 * _1158) + (32 * _982) + (32 * _572) + 224
        mem[(32 * _1158) + (32 * _982) + (32 * _572) + mem[64] + 224] = mem[(131 * arg1.length) + 224]
        _1286 = mem[(131 * arg1.length) + 224]
        mem[(32 * _1158) + (32 * _982) + (32 * _572) + mem[64] + 256 len floor32(mem[(131 * arg1.length) + 224])] = mem[(131 * arg1.length) + 256 len floor32(mem[(131 * arg1.length) + 224])]
        return 128, 
               (32 * _572) + 160,
               (32 * _982) + (32 * _572) + 192,
               (32 * _1158) + (32 * _982) + (32 * _572) + 224,
               mem[mem[64] + 128 len (32 * _1286) + (32 * _1158) + (32 * _982) + (32 * _572) + 128]
    mem[(32 * arg1.length) + 160 len 32 * arg1.length] = code.data[1345 len 32 * arg1.length]
    mem[(64 * arg1.length) + 160] = arg1.length
    if not arg1.length:
        mem[(98 * arg1.length) + 192] = arg1.length
        if not arg1.length:
            mem[(131 * arg1.length) + 224] = arg1.length
            mem[64] = (164 * arg1.length) + 256
            if not arg1.length:
                idx = 0
                while idx < arg1.length:
                    require idx < mem[96]
                    require ext_code.size(mem[(32 * idx) + 140 len 20])
                    staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                            gas gas_remaining wei
                    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
                    require idx < mem[(64 * arg1.length) + 160]
                    mem[(32 * idx) + (64 * arg1.length) + 192] = Mask(112, 0, ext_call.return_data[32])
                    require idx < mem[(98 * arg1.length) + 192]
                    mem[(32 * idx) + (98 * arg1.length) + 224] = uint32(ext_call.return_data[64])
                    require idx < mem[96]
                    require idx < mem[(131 * arg1.length) + 224]
                    mem[(32 * idx) + (131 * arg1.length) + 256] = mem[(32 * idx) + 140 len 20]
                    idx = idx + 1
                    continue 
                mem[mem[64]] = 128
                mem[mem[64] + 128] = mem[(32 * arg1.length) + 128]
                _578 = mem[(32 * arg1.length) + 128]
                mem[mem[64] + 160 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
                mem[mem[64] + 32] = (32 * _578) + 160
                mem[(32 * _578) + mem[64] + 160] = mem[(64 * arg1.length) + 160]
                _985 = mem[(64 * arg1.length) + 160]
                mem[(32 * _578) + mem[64] + 192 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
                mem[mem[64] + 64] = (32 * _985) + (32 * _578) + 192
                mem[(32 * _985) + (32 * _578) + mem[64] + 192] = mem[(98 * arg1.length) + 192]
                _1161 = mem[(98 * arg1.length) + 192]
                mem[(32 * _985) + (32 * _578) + mem[64] + 224 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
                mem[mem[64] + 96] = (32 * _1161) + (32 * _985) + (32 * _578) + 224
                mem[(32 * _1161) + (32 * _985) + (32 * _578) + mem[64] + 224] = mem[(131 * arg1.length) + 224]
                _1289 = mem[(131 * arg1.length) + 224]
                mem[(32 * _1161) + (32 * _985) + (32 * _578) + mem[64] + 256 len floor32(mem[(131 * arg1.length) + 224])] = mem[(131 * arg1.length) + 256 len floor32(mem[(131 * arg1.length) + 224])]
                return 128, 
                       (32 * _578) + 160,
                       (32 * _985) + (32 * _578) + 192,
                       (32 * _1161) + (32 * _985) + (32 * _578) + 224,
                       mem[mem[64] + 128 len (32 * _1289) + (32 * _1161) + (32 * _985) + (32 * _578) + 128]
            mem[(131 * arg1.length) + 256 len 32 * arg1.length] = code.data[1345 len 32 * arg1.length]
            idx = 0
            while idx < arg1.length:
                require idx < mem[96]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
                require idx < mem[(64 * arg1.length) + 160]
                mem[(32 * idx) + (64 * arg1.length) + 192] = Mask(112, 0, ext_call.return_data[32])
                require idx < mem[(98 * arg1.length) + 192]
                mem[(32 * idx) + (98 * arg1.length) + 224] = uint32(ext_call.return_data[64])
                require idx < mem[96]
                require idx < mem[(131 * arg1.length) + 224]
                mem[(32 * idx) + (131 * arg1.length) + 256] = mem[(32 * idx) + 140 len 20]
                idx = idx + 1
                continue 
            _582 = mem[64]
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[(32 * arg1.length) + 128]
            _584 = mem[(32 * arg1.length) + 128]
            mem[mem[64] + 160 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
            mem[mem[64] + 32] = (32 * _584) + 160
            mem[(32 * _584) + mem[64] + 160] = mem[(64 * arg1.length) + 160]
            _988 = mem[(64 * arg1.length) + 160]
            mem[(32 * _584) + mem[64] + 192 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
            mem[mem[64] + 64] = (32 * _988) + (32 * _584) + 192
            mem[(32 * _988) + (32 * _584) + _582 + 192] = mem[(98 * arg1.length) + 192]
            _1164 = mem[(98 * arg1.length) + 192]
            mem[(32 * _988) + (32 * _584) + _582 + 224 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
            mem[_582 + 96] = (32 * _1164) + (32 * _988) + (32 * _584) + 224
            mem[(32 * _1164) + (32 * _988) + (32 * _584) + _582 + 224] = mem[(131 * arg1.length) + 224]
            _1292 = mem[(131 * arg1.length) + 224]
            mem[(32 * _1164) + (32 * _988) + (32 * _584) + _582 + 256 len floor32(mem[(131 * arg1.length) + 224])] = mem[(131 * arg1.length) + 256 len floor32(mem[(131 * arg1.length) + 224])]
            return memory
              from mem[64]
               len (32 * _1292) + (32 * _1164) + (32 * _988) + (32 * _584) + _582 + -mem[64] + 256
        mem[(98 * arg1.length) + 224 len 32 * arg1.length] = code.data[1345 len 32 * arg1.length]
        mem[(131 * arg1.length) + 224] = arg1.length
        mem[64] = (164 * arg1.length) + 256
        if not arg1.length:
            idx = 0
            while idx < arg1.length:
                require idx < mem[96]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
                require idx < mem[(64 * arg1.length) + 160]
                mem[(32 * idx) + (64 * arg1.length) + 192] = Mask(112, 0, ext_call.return_data[32])
                require idx < mem[(98 * arg1.length) + 192]
                mem[(32 * idx) + (98 * arg1.length) + 224] = uint32(ext_call.return_data[64])
                require idx < mem[96]
                require idx < mem[(131 * arg1.length) + 224]
                mem[(32 * idx) + (131 * arg1.length) + 256] = mem[(32 * idx) + 140 len 20]
                idx = idx + 1
                continue 
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[(32 * arg1.length) + 128]
            _590 = mem[(32 * arg1.length) + 128]
            mem[mem[64] + 160 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
            mem[mem[64] + 32] = (32 * _590) + 160
            mem[(32 * _590) + mem[64] + 160] = mem[(64 * arg1.length) + 160]
            _991 = mem[(64 * arg1.length) + 160]
            mem[(32 * _590) + mem[64] + 192 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
            mem[mem[64] + 64] = (32 * _991) + (32 * _590) + 192
            mem[(32 * _991) + (32 * _590) + mem[64] + 192] = mem[(98 * arg1.length) + 192]
            _1167 = mem[(98 * arg1.length) + 192]
            mem[(32 * _991) + (32 * _590) + mem[64] + 224 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
            mem[mem[64] + 96] = (32 * _1167) + (32 * _991) + (32 * _590) + 224
            mem[(32 * _1167) + (32 * _991) + (32 * _590) + mem[64] + 224] = mem[(131 * arg1.length) + 224]
            _1295 = mem[(131 * arg1.length) + 224]
            mem[(32 * _1167) + (32 * _991) + (32 * _590) + mem[64] + 256 len floor32(mem[(131 * arg1.length) + 224])] = mem[(131 * arg1.length) + 256 len floor32(mem[(131 * arg1.length) + 224])]
            return 128, 
                   (32 * _590) + 160,
                   (32 * _991) + (32 * _590) + 192,
                   (32 * _1167) + (32 * _991) + (32 * _590) + 224,
                   mem[mem[64] + 128 len (32 * _1295) + (32 * _1167) + (32 * _991) + (32 * _590) + 128]
        mem[(131 * arg1.length) + 256 len 32 * arg1.length] = code.data[1345 len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
            require idx < mem[(64 * arg1.length) + 160]
            mem[(32 * idx) + (64 * arg1.length) + 192] = Mask(112, 0, ext_call.return_data[32])
            require idx < mem[(98 * arg1.length) + 192]
            mem[(32 * idx) + (98 * arg1.length) + 224] = uint32(ext_call.return_data[64])
            require idx < mem[96]
            require idx < mem[(131 * arg1.length) + 224]
            mem[(32 * idx) + (131 * arg1.length) + 256] = mem[(32 * idx) + 140 len 20]
            idx = idx + 1
            continue 
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[(32 * arg1.length) + 128]
        _596 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 160 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        mem[mem[64] + 32] = (32 * _596) + 160
        mem[(32 * _596) + mem[64] + 160] = mem[(64 * arg1.length) + 160]
        _994 = mem[(64 * arg1.length) + 160]
        mem[(32 * _596) + mem[64] + 192 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
        mem[mem[64] + 64] = (32 * _994) + (32 * _596) + 192
        mem[(32 * _994) + (32 * _596) + mem[64] + 192] = mem[(98 * arg1.length) + 192]
        _1170 = mem[(98 * arg1.length) + 192]
        mem[(32 * _994) + (32 * _596) + mem[64] + 224 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
        mem[mem[64] + 96] = (32 * _1170) + (32 * _994) + (32 * _596) + 224
        mem[(32 * _1170) + (32 * _994) + (32 * _596) + mem[64] + 224] = mem[(131 * arg1.length) + 224]
        _1298 = mem[(131 * arg1.length) + 224]
        mem[(32 * _1170) + (32 * _994) + (32 * _596) + mem[64] + 256 len floor32(mem[(131 * arg1.length) + 224])] = mem[(131 * arg1.length) + 256 len floor32(mem[(131 * arg1.length) + 224])]
        return 128, 
               (32 * _596) + 160,
               (32 * _994) + (32 * _596) + 192,
               (32 * _1170) + (32 * _994) + (32 * _596) + 224,
               mem[mem[64] + 128 len (32 * _1298) + (32 * _1170) + (32 * _994) + (32 * _596) + 128]
    mem[(64 * arg1.length) + 192 len 32 * arg1.length] = code.data[1345 len 32 * arg1.length]
    mem[(98 * arg1.length) + 192] = arg1.length
    if not arg1.length:
        mem[(131 * arg1.length) + 224] = arg1.length
        mem[64] = (164 * arg1.length) + 256
        if not arg1.length:
            idx = 0
            while idx < arg1.length:
                require idx < mem[96]
                require ext_code.size(mem[(32 * idx) + 140 len 20])
                staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
                require idx < mem[(64 * arg1.length) + 160]
                mem[(32 * idx) + (64 * arg1.length) + 192] = Mask(112, 0, ext_call.return_data[32])
                require idx < mem[(98 * arg1.length) + 192]
                mem[(32 * idx) + (98 * arg1.length) + 224] = uint32(ext_call.return_data[64])
                require idx < mem[96]
                require idx < mem[(131 * arg1.length) + 224]
                mem[(32 * idx) + (131 * arg1.length) + 256] = mem[(32 * idx) + 140 len 20]
                idx = idx + 1
                continue 
            mem[mem[64]] = 128
            mem[mem[64] + 128] = mem[(32 * arg1.length) + 128]
            _602 = mem[(32 * arg1.length) + 128]
            mem[mem[64] + 160 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
            mem[mem[64] + 32] = (32 * _602) + 160
            mem[(32 * _602) + mem[64] + 160] = mem[(64 * arg1.length) + 160]
            _997 = mem[(64 * arg1.length) + 160]
            mem[(32 * _602) + mem[64] + 192 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
            mem[mem[64] + 64] = (32 * _997) + (32 * _602) + 192
            mem[(32 * _997) + (32 * _602) + mem[64] + 192] = mem[(98 * arg1.length) + 192]
            _1173 = mem[(98 * arg1.length) + 192]
            mem[(32 * _997) + (32 * _602) + mem[64] + 224 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
            mem[mem[64] + 96] = (32 * _1173) + (32 * _997) + (32 * _602) + 224
            mem[(32 * _1173) + (32 * _997) + (32 * _602) + mem[64] + 224] = mem[(131 * arg1.length) + 224]
            _1301 = mem[(131 * arg1.length) + 224]
            mem[(32 * _1173) + (32 * _997) + (32 * _602) + mem[64] + 256 len floor32(mem[(131 * arg1.length) + 224])] = mem[(131 * arg1.length) + 256 len floor32(mem[(131 * arg1.length) + 224])]
            return 128, 
                   (32 * _602) + 160,
                   (32 * _997) + (32 * _602) + 192,
                   (32 * _1173) + (32 * _997) + (32 * _602) + 224,
                   mem[mem[64] + 128 len (32 * _1301) + (32 * _1173) + (32 * _997) + (32 * _602) + 128]
        mem[(131 * arg1.length) + 256 len 32 * arg1.length] = code.data[1345 len 32 * arg1.length]
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
            require idx < mem[(64 * arg1.length) + 160]
            mem[(32 * idx) + (64 * arg1.length) + 192] = Mask(112, 0, ext_call.return_data[32])
            require idx < mem[(98 * arg1.length) + 192]
            mem[(32 * idx) + (98 * arg1.length) + 224] = uint32(ext_call.return_data[64])
            require idx < mem[96]
            require idx < mem[(131 * arg1.length) + 224]
            mem[(32 * idx) + (131 * arg1.length) + 256] = mem[(32 * idx) + 140 len 20]
            idx = idx + 1
            continue 
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[(32 * arg1.length) + 128]
        _608 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 160 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        mem[mem[64] + 32] = (32 * _608) + 160
        mem[(32 * _608) + mem[64] + 160] = mem[(64 * arg1.length) + 160]
        _1000 = mem[(64 * arg1.length) + 160]
        mem[(32 * _608) + mem[64] + 192 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
        mem[mem[64] + 64] = (32 * _1000) + (32 * _608) + 192
        mem[(32 * _1000) + (32 * _608) + mem[64] + 192] = mem[(98 * arg1.length) + 192]
        _1176 = mem[(98 * arg1.length) + 192]
        mem[(32 * _1000) + (32 * _608) + mem[64] + 224 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
        mem[mem[64] + 96] = (32 * _1176) + (32 * _1000) + (32 * _608) + 224
        mem[(32 * _1176) + (32 * _1000) + (32 * _608) + mem[64] + 224] = mem[(131 * arg1.length) + 224]
        _1304 = mem[(131 * arg1.length) + 224]
        mem[(32 * _1176) + (32 * _1000) + (32 * _608) + mem[64] + 256 len floor32(mem[(131 * arg1.length) + 224])] = mem[(131 * arg1.length) + 256 len floor32(mem[(131 * arg1.length) + 224])]
        return 128, 
               (32 * _608) + 160,
               (32 * _1000) + (32 * _608) + 192,
               (32 * _1176) + (32 * _1000) + (32 * _608) + 224,
               mem[mem[64] + 128 len (32 * _1304) + (32 * _1176) + (32 * _1000) + (32 * _608) + 128]
    mem[(98 * arg1.length) + 224 len 32 * arg1.length] = code.data[1345 len 32 * arg1.length]
    mem[(131 * arg1.length) + 224] = arg1.length
    mem[64] = (164 * arg1.length) + 256
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
            require idx < mem[(64 * arg1.length) + 160]
            mem[(32 * idx) + (64 * arg1.length) + 192] = Mask(112, 0, ext_call.return_data[32])
            require idx < mem[(98 * arg1.length) + 192]
            mem[(32 * idx) + (98 * arg1.length) + 224] = uint32(ext_call.return_data[64])
            require idx < mem[96]
            require idx < mem[(131 * arg1.length) + 224]
            mem[(32 * idx) + (131 * arg1.length) + 256] = mem[(32 * idx) + 140 len 20]
            idx = idx + 1
            continue 
        _612 = mem[64]
        mem[mem[64]] = 128
        mem[mem[64] + 128] = mem[(32 * arg1.length) + 128]
        _614 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 160 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
        mem[mem[64] + 32] = (32 * _614) + 160
        mem[(32 * _614) + mem[64] + 160] = mem[(64 * arg1.length) + 160]
        _1003 = mem[(64 * arg1.length) + 160]
        mem[(32 * _614) + mem[64] + 192 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
        mem[mem[64] + 64] = (32 * _1003) + (32 * _614) + 192
        mem[(32 * _1003) + (32 * _614) + _612 + 192] = mem[(98 * arg1.length) + 192]
        _1179 = mem[(98 * arg1.length) + 192]
        mem[(32 * _1003) + (32 * _614) + _612 + 224 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
        mem[_612 + 96] = (32 * _1179) + (32 * _1003) + (32 * _614) + 224
        mem[(32 * _1179) + (32 * _1003) + (32 * _614) + _612 + 224] = mem[(131 * arg1.length) + 224]
        _1307 = mem[(131 * arg1.length) + 224]
        mem[(32 * _1179) + (32 * _1003) + (32 * _614) + _612 + 256 len floor32(mem[(131 * arg1.length) + 224])] = mem[(131 * arg1.length) + 256 len floor32(mem[(131 * arg1.length) + 224])]
        return memory
          from mem[64]
           len (32 * _1307) + (32 * _1179) + (32 * _1003) + (32 * _614) + _612 + -mem[64] + 256
    mem[(131 * arg1.length) + 256 len 32 * arg1.length] = code.data[1345 len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        staticcall mem[(32 * idx) + 140 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require idx < mem[(32 * arg1.length) + 128]
        mem[(32 * idx) + (32 * arg1.length) + 160] = Mask(112, 0, ext_call.return_data[0])
        require idx < mem[(64 * arg1.length) + 160]
        mem[(32 * idx) + (64 * arg1.length) + 192] = Mask(112, 0, ext_call.return_data[32])
        require idx < mem[(98 * arg1.length) + 192]
        mem[(32 * idx) + (98 * arg1.length) + 224] = uint32(ext_call.return_data[64])
        require idx < mem[96]
        require idx < mem[(131 * arg1.length) + 224]
        mem[(32 * idx) + (131 * arg1.length) + 256] = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
    _618 = mem[64]
    mem[mem[64]] = 128
    mem[mem[64] + 128] = mem[(32 * arg1.length) + 128]
    _620 = mem[(32 * arg1.length) + 128]
    mem[mem[64] + 160 len floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + 160 len floor32(mem[(32 * arg1.length) + 128])]
    mem[mem[64] + 32] = (32 * _620) + 160
    mem[(32 * _620) + mem[64] + 160] = mem[(64 * arg1.length) + 160]
    _1006 = mem[(64 * arg1.length) + 160]
    mem[(32 * _620) + mem[64] + 192 len floor32(mem[(64 * arg1.length) + 160])] = mem[(64 * arg1.length) + 192 len floor32(mem[(64 * arg1.length) + 160])]
    mem[mem[64] + 64] = (32 * _1006) + (32 * _620) + 192
    mem[(32 * _1006) + (32 * _620) + _618 + 192] = mem[(98 * arg1.length) + 192]
    _1182 = mem[(98 * arg1.length) + 192]
    mem[(32 * _1006) + (32 * _620) + _618 + 224 len floor32(mem[(98 * arg1.length) + 192])] = mem[(98 * arg1.length) + 224 len floor32(mem[(98 * arg1.length) + 192])]
    mem[_618 + 96] = (32 * _1182) + (32 * _1006) + (32 * _620) + 224
    mem[(32 * _1182) + (32 * _1006) + (32 * _620) + _618 + 224] = mem[(131 * arg1.length) + 224]
    _1310 = mem[(131 * arg1.length) + 224]
    mem[(32 * _1182) + (32 * _1006) + (32 * _620) + _618 + 256 len floor32(mem[(131 * arg1.length) + 224])] = mem[(131 * arg1.length) + 256 len floor32(mem[(131 * arg1.length) + 224])]
    return memory
      from mem[64]
       len (32 * _1310) + (32 * _1182) + (32 * _1006) + (32 * _620) + _618 + -mem[64] + 256
}



}
