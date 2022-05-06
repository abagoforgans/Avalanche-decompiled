contract main {




// =====================  Runtime code  =====================


address stor0;

function transferToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args 0xfac2592d3d26fc5534ae9a41fd72f10bbda51b4, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function _fallback() payable {
    if stor0 != msg.sender:
        revert with 0, 'Unauthorized caller'
    require 4 <= calldata.size
    require calldata.size <= calldata.size
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128 len 128] = call.data[calldata.size len 128]
    mem[ceil32(arg1.length) + 256 len 128] = call.data[calldata.size len 128]
    mem[ceil32(arg1.length) + 384 len 128] = call.data[calldata.size len 128]
    require arg1.length >= 448
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].0xa9059cbb with:
         gas gas_remaining wei
        args mem[172 len 20], mem[288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(mem[172 len 20])
    call mem[172 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args mem[320], mem[448], mem[204 len 20], 128, 0, mem[ceil32(arg1.length) + 676]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if mem[236 len 20] != mem[204 len 20]:
        mem[ceil32(arg1.length) + 512] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg1.length) + 516] = mem[352]
        require ext_code.size(mem[204 len 20])
        call mem[204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args mem[352], mem[480], mem[236 len 20], 128, 0, mem[ceil32(arg1.length) + 676]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[268 len 20] != mem[236 len 20]:
            require ext_code.size(mem[236 len 20])
            call mem[236 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args mem[384], mem[512], mem[268 len 20], 128, 0, mem[ceil32(arg1.length) + 676]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function sub_fda1c9f6(?) payable {
    require calldata.size - 4 >= 352
    mem[352 len 128] = call.data[36 len 128]
    mem[480 len 128] = call.data[196 len 128]
    mem[608 len 128] = call.data[calldata.size len 128]
    mem[736 len 128] = call.data[calldata.size len 128]
    idx = 0
    s = 0
    t = 0
    u = arg3
    while idx < 4:
        require idx < 4
        if not mem[(32 * idx) + 480]:
            require ext_code.size(mem[(32 * idx) + 364 len 20])
            staticcall mem[(32 * idx) + 364 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[864 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if 997 * u / 997 != u:
                revert with 0, 'ds-math-mul-overflow'
            if not Mask(112, 0, ext_call.return_data[0]):
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * u) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * u)
                require idx < 4
                mem[(32 * idx) + 608] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * u)
                mem[(32 * idx) + 736] = 0
                idx = idx + 1
                s = Mask(112, 0, ext_call.return_data[32])
                t = Mask(112, 0, ext_call.return_data[0])
                u = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * u)
                continue 
            require Mask(112, 0, ext_call.return_data[0])
            if 997 * u * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * u:
                revert with 0, 'ds-math-mul-overflow'
            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-mul-overflow'
            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * u) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 'ds-math-add-overflow'
            require (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * u)
            require idx < 4
            mem[(32 * idx) + 608] = 997 * u * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * u)
            mem[(32 * idx) + 736] = 0
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[32])
            t = Mask(112, 0, ext_call.return_data[0])
            u = 997 * u * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * u)
            continue 
        if mem[(32 * idx) + 480] != 1:
            require idx - 1 < 4
            require idx < 4
            mem[(32 * idx) + 608] = mem[(32 * idx - 1) + 608]
            require idx - 1 < 4
            require idx < 4
            mem[(32 * idx) + 736] = mem[(32 * idx - 1) + 736]
            idx = idx + 1
            s = s
            t = t
            u = u
            continue 
        require idx < 4
        require ext_code.size(mem[(32 * idx) + 364 len 20])
        staticcall mem[(32 * idx) + 364 len 20].getReserves() with:
                gas gas_remaining wei
        mem[864 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if 997 * u / 997 != u:
            revert with 0, 'ds-math-mul-overflow'
        if not Mask(112, 0, ext_call.return_data[32]):
            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'ds-math-mul-overflow'
            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * u) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 'ds-math-add-overflow'
            require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * u)
            require idx < 4
            mem[(32 * idx) + 608] = 0
            mem[(32 * idx) + 736] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * u)
            idx = idx + 1
            s = Mask(112, 0, ext_call.return_data[32])
            t = Mask(112, 0, ext_call.return_data[0])
            u = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * u)
            continue 
        require Mask(112, 0, ext_call.return_data[32])
        if 997 * u * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * u:
            revert with 0, 'ds-math-mul-overflow'
        if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'ds-math-mul-overflow'
        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * u) < 1000 * Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 'ds-math-add-overflow'
        require (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * u)
        require idx < 4
        mem[(32 * idx) + 608] = 0
        mem[(32 * idx) + 736] = 997 * u * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * u)
        idx = idx + 1
        s = Mask(112, 0, ext_call.return_data[32])
        t = Mask(112, 0, ext_call.return_data[0])
        u = 997 * u * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * u)
        continue 
    if u <= arg3 + arg4:
        revert with 0, 'nac'
    stor0 = arg2
    require ext_code.size(stor0)
    call stor0.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args mem[704], mem[832], address(this.address), 128, 448, address(arg1), call.data[36 len 128], arg3, mem[608 len 128], mem[736 len 128]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
