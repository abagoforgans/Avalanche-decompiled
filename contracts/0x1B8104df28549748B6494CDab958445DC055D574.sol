contract main {




// =====================  Runtime code  =====================


#
#  - sub_8abbf08b(?)
#  - sub_9a8cdd5a(?)
#  - sub_a10f4db9(?)
#
function _fallback() payable {
    revert
}

function uniswapV3SwapCallback(int256 arg1, int256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if arg3.length < 20:
        revert with 0, 'toAddress_outOfBounds'
    if arg3.length < 23:
        revert with 0, 'toUint24_outOfBounds'
    if arg3.length < 43:
        revert with 0, 'toAddress_outOfBounds'
    if arg1 > 0:
        if arg2 == 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 17
        if mem[128 len 20] < mem[151 len 20]:
            revert with arg1, -arg2
        revert with -arg2, arg1
    if arg1 == 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    if mem[151 len 20] < mem[128 len 20]:
        revert with arg2, -arg1
    revert with -arg1, arg2
}

function sub_b898e90d(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3 % 16777216
    if not arg4:
        return 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    if address(arg1) <= address(arg2):
        mem[352] = address(arg1)
        mem[384] = address(arg2)
        mem[416] = arg3 % 16777216
        require address(arg1) < uint64(arg2) << 96
        mem[480] = uint64(arg1) << 96
        mem[512] = address(arg2)
        mem[544] = arg3 % 16777216
        mem[448] = 96
        mem[608] = 0xff00000000000000000000000000000000000000000000000000000000000000
        mem[609] = 0x1f98431c8ad98523631ae4a59f267346ea31f984000000000000000000000000
        mem[629] = sha3(arg1 << 192, address(arg2), arg3 % 16777216)
        mem[661] = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54
        mem[576] = 85
        mem[96] = address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
        mem[693] = 4
        mem[725 len 4] = slot0()
        mem[729] = 0, mem[729 len 28]
        mem[733] = 0
        call address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).mem[729 len 4] with:
             gas gas_remaining wei
        if not return_data.size:
            mem[192] = 96
            mem[160] = bool(ext_call.success)
            if not ext_call.success:
                return 0
            if not address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                return 0
            require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 224
            require bool(ext_call.success) == ('signextend', 2, ('bool', 'ext_call.success'))
            mem[224] = address(arg1) < address(arg2)
            if address(arg1) >= address(arg2):
                if address(0 / 10) > 0x1555555555555555555555555555555555555555555555555555555555555555:
                    revert with 0, 17
                mem[128] = address(12 * address(0 / 10))
                mem[761] = address(arg1)
                mem[781] = arg3 << 232
                mem[784] = address(arg2)
                mem[804] = 0x128acb0800000000000000000000000000000000000000000000000000000000
                mem[808] = this.address
                mem[840] = address(arg1) < address(arg2)
                mem[872] = arg4
                mem[904] = address(12 * address(0 / 10))
                mem[936] = 160
                mem[968] = mem[729 len 4], 0
                mem[1000 len ceil32(mem[729 len 4], 0)] = mem[761 len ceil32(mem[729 len 4], 0)]
                if ceil32(mem[729 len 4], 0) <= mem[729 len 4], 0:
                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                    call address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).swap(address arg1, bool arg2, int256 arg3, uint160 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg1) < address(arg2), arg4, address(12 * address(0 / 10)), 160, mem[968 len ceil32(mem[729 len 4], 0) + 32]
                    mem[804 len 64] = ext_call.return_data[0 len 64]
                    if ext_call.success:
                        require return_data.size >= 64
                        return 0
                    if return_data.size <= 3:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if return_data.size < 68:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    mem[804 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if mem[ext_call.return_data[0] + 804] > test266151307():
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 32 > return_data.size - 4:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 76 < 75 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805 > test266151307():
                        revert with 0, 65
                    if ext_call.return_data[0] + 804:
                        return 0
                    if not return_data.size:
                        if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                            require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                            if address(12 * address(0 / 10)) == arg4:
                                return bool(ext_call.success)
                        else:
                        return 0
                    _19940 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805
                    mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + ceil32(return_data.size) + 806
                    mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805] = return_data.size
                    mem[_19940 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size != 64:
                        return 0
                    require return_data.size >= 64
                    if mem[_19940 + 32] != arg4:
                        return 0
                    mem[mem[64]] = mem[_19940 + 64]
                else:
                    mem[mem[729 len 4], 0 + 1000] = 0
                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                    call address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).swap(address arg1, bool arg2, int256 arg3, uint160 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg1) < address(arg2), arg4, address(12 * address(0 / 10)), 160, mem[968 len ceil32(mem[729 len 4], 0) + 32]
                    mem[804 len 64] = ext_call.return_data[0 len 64]
                    if ext_call.success:
                        require return_data.size >= 64
                        return 0
                    if return_data.size <= 3:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if return_data.size < 68:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    mem[804 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if mem[ext_call.return_data[0] + 804] > test266151307():
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 32 > return_data.size - 4:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 76 < 75 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805 > test266151307():
                        revert with 0, 65
                    if ext_call.return_data[0] + 804:
                        return 0
                    if not return_data.size:
                        if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                            require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                            if address(12 * address(0 / 10)) == arg4:
                                return bool(ext_call.success)
                        else:
                        return 0
                    _20537 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805
                    mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + ceil32(return_data.size) + 806
                    mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805] = return_data.size
                    mem[_20537 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size != 64:
                        return 0
                    require return_data.size >= 64
                    if mem[_20537 + 32] != arg4:
                        return 0
                    mem[mem[64]] = mem[_20537 + 64]
            else:
                if address(0 / 10) > 0x1fffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                mem[128] = 8 * Mask(157, 0, 0 / 10)
                mem[761] = address(arg1)
                mem[781] = arg3 << 232
                mem[784] = address(arg2)
                mem[804] = 0x128acb0800000000000000000000000000000000000000000000000000000000
                mem[808] = this.address
                mem[840] = address(arg1) < address(arg2)
                mem[872] = arg4
                mem[904] = 0
                mem[936] = 160
                mem[968] = mem[729 len 4], 0
                mem[1000 len ceil32(mem[729 len 4], 0)] = mem[761 len ceil32(mem[729 len 4], 0)]
                if ceil32(mem[729 len 4], 0) <= mem[729 len 4], 0:
                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                    call address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).swap(address arg1, bool arg2, int256 arg3, uint160 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg1) < address(arg2), arg4, 0, 160, mem[968 len ceil32(mem[729 len 4], 0) + 32]
                    mem[804 len 64] = ext_call.return_data[0 len 64]
                    if ext_call.success:
                        require return_data.size >= 64
                        return 0
                    if return_data.size <= 3:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if return_data.size < 68:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    mem[804 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if mem[ext_call.return_data[0] + 804] > test266151307():
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 32 > return_data.size - 4:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 76 < 75 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805 > test266151307():
                        revert with 0, 65
                    if ext_call.return_data[0] + 804:
                        return 0
                    if not return_data.size:
                        if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                            require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                            if 0 == arg4:
                                return bool(ext_call.success)
                        else:
                        return 0
                    _19980 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805
                    mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + ceil32(return_data.size) + 806
                    mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805] = return_data.size
                    mem[_19980 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size != 64:
                        return 0
                    require return_data.size >= 64
                    if mem[_19980 + 32] != arg4:
                        return 0
                    mem[mem[64]] = mem[_19980 + 64]
                else:
                    mem[mem[729 len 4], 0 + 1000] = 0
                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                    call address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).swap(address arg1, bool arg2, int256 arg3, uint160 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg1) < address(arg2), arg4, 0, 160, mem[968 len ceil32(mem[729 len 4], 0) + 32]
                    mem[804 len 64] = ext_call.return_data[0 len 64]
                    if ext_call.success:
                        require return_data.size >= 64
                        return 0
                    if return_data.size <= 3:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if return_data.size < 68:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    mem[804 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if mem[ext_call.return_data[0] + 804] > test266151307():
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 32 > return_data.size - 4:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 76 < 75 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805 > test266151307():
                        revert with 0, 65
                    if ext_call.return_data[0] + 804:
                        return 0
                    if not return_data.size:
                        if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                            require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                            if 0 == arg4:
                                return bool(ext_call.success)
                        else:
                        return 0
                    _20564 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805
                    mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + ceil32(return_data.size) + 806
                    mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805] = return_data.size
                    mem[_20564 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size != 64:
                        return 0
                    require return_data.size >= 64
                    if mem[_20564 + 32] != arg4:
                        return 0
                    mem[mem[64]] = mem[_20564 + 64]
        else:
            mem[729] = return_data.size
            mem[761 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[192] = 729
            mem[160] = bool(ext_call.success)
            if not ext_call.success:
                return 0
            if not return_data.size:
                return 0
            require return_data.size >= 224
            require mem[761] == mem[773 len 20]
            require mem[793] == ('signextend', 2, ('mem', ('range', 793, 32)))
            require mem[825] == mem[855 len 2]
            require mem[857] == mem[887 len 2]
            require mem[889] == mem[919 len 2]
            require mem[921] == mem[952 len 1]
            require mem[953] == bool(mem[953])
            mem[128] = mem[773 len 20]
            mem[224] = address(arg1) < address(arg2)
            if address(arg1) >= address(arg2):
                if address(mem[140 len 20] / 10) > 0x1555555555555555555555555555555555555555555555555555555555555555:
                    revert with 0, 17
                mem[128] = address(12 * address(mem[140 len 20] / 10))
                _8725 = mem[128]
                mem[ceil32(return_data.size) + 762] = address(arg1)
                mem[ceil32(return_data.size) + 782] = arg3 << 232
                mem[ceil32(return_data.size) + 785] = address(arg2)
                mem[ceil32(return_data.size) + 805] = 0x128acb0800000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 809] = this.address
                mem[ceil32(return_data.size) + 841] = address(arg1) < address(arg2)
                mem[ceil32(return_data.size) + 873] = arg4
                mem[ceil32(return_data.size) + 905] = mem[140 len 20]
                mem[ceil32(return_data.size) + 937] = 160
                mem[ceil32(return_data.size) + 969] = mem[ceil32(return_data.size) + 730]
                mem[ceil32(return_data.size) + 1001 len ceil32(mem[ceil32(return_data.size) + 730])] = mem[ceil32(return_data.size) + 762 len ceil32(mem[ceil32(return_data.size) + 730])]
                if ceil32(mem[ceil32(return_data.size) + 730]) <= mem[ceil32(return_data.size) + 730]:
                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                    call address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).swap(address arg1, bool arg2, int256 arg3, uint160 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg1) < address(arg2), arg4, address(mem[128]), Array(len=mem[ceil32(return_data.size) + 730], data=mem[ceil32(return_data.size) + 1001 len ceil32(mem[ceil32(return_data.size) + 730])])
                    mem[ceil32(return_data.size) + 805 len 64] = ext_call.return_data[0 len 64]
                    if ext_call.success:
                        require return_data.size >= 64
                        return 0
                    if return_data.size <= 3:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if return_data.size < 68:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    mem[ceil32(return_data.size) + 805 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] > test266151307():
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 32 > return_data.size - 4:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 76 < 75 or ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806 > test266151307():
                        revert with 0, 65
                    if ceil32(return_data.size) + ext_call.return_data[0] + 805:
                        return 0
                    if not return_data.size:
                        if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                            require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                            if mem[128] == arg4:
                                return bool(ext_call.success)
                        else:
                        return 0
                    _20020 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806
                    mem[64] = (2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 807
                    mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806] = return_data.size
                    mem[_20020 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size != 64:
                        return 0
                    require return_data.size >= 64
                    if mem[_20020 + 32] != arg4:
                        return 0
                    mem[mem[64]] = mem[_20020 + 64]
                else:
                    mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 730] + 1001] = 0
                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                    call address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).swap(address arg1, bool arg2, int256 arg3, uint160 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg1) < address(arg2), arg4, address(_8725), Array(len=mem[ceil32(return_data.size) + 730], data=mem[ceil32(return_data.size) + 1001 len ceil32(mem[ceil32(return_data.size) + 730])])
                    mem[ceil32(return_data.size) + 805 len 64] = ext_call.return_data[0 len 64]
                    if ext_call.success:
                        require return_data.size >= 64
                        return 0
                    if return_data.size <= 3:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if return_data.size < 68:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    mem[ceil32(return_data.size) + 805 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] > test266151307():
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 32 > return_data.size - 4:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 76 < 75 or ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806 > test266151307():
                        revert with 0, 65
                    if ceil32(return_data.size) + ext_call.return_data[0] + 805:
                        return 0
                    if not return_data.size:
                        if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                            require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                            if mem[128] == arg4:
                                return bool(ext_call.success)
                        else:
                        return 0
                    _20591 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806
                    mem[64] = (2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 807
                    mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806] = return_data.size
                    mem[_20591 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size != 64:
                        return 0
                    require return_data.size >= 64
                    if mem[_20591 + 32] != arg4:
                        return 0
                    mem[mem[64]] = mem[_20591 + 64]
            else:
                if address(mem[140 len 20] / 10) > 0x1fffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                mem[128] = 8 * Mask(157, 0, mem[140 len 20] / 10)
                _8729 = mem[128]
                mem[ceil32(return_data.size) + 762] = address(arg1)
                mem[ceil32(return_data.size) + 782] = arg3 << 232
                mem[ceil32(return_data.size) + 785] = address(arg2)
                mem[ceil32(return_data.size) + 805] = 0x128acb0800000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 809] = this.address
                mem[ceil32(return_data.size) + 841] = address(arg1) < address(arg2)
                mem[ceil32(return_data.size) + 873] = arg4
                mem[ceil32(return_data.size) + 905] = mem[140 len 20]
                mem[ceil32(return_data.size) + 937] = 160
                mem[ceil32(return_data.size) + 969] = mem[ceil32(return_data.size) + 730]
                mem[ceil32(return_data.size) + 1001 len ceil32(mem[ceil32(return_data.size) + 730])] = mem[ceil32(return_data.size) + 762 len ceil32(mem[ceil32(return_data.size) + 730])]
                if ceil32(mem[ceil32(return_data.size) + 730]) <= mem[ceil32(return_data.size) + 730]:
                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                    call address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).swap(address arg1, bool arg2, int256 arg3, uint160 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg1) < address(arg2), arg4, address(mem[128]), Array(len=mem[ceil32(return_data.size) + 730], data=mem[ceil32(return_data.size) + 1001 len ceil32(mem[ceil32(return_data.size) + 730])])
                    mem[ceil32(return_data.size) + 805 len 64] = ext_call.return_data[0 len 64]
                    if ext_call.success:
                        require return_data.size >= 64
                        return 0
                    if return_data.size <= 3:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if return_data.size < 68:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    mem[ceil32(return_data.size) + 805 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] > test266151307():
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 32 > return_data.size - 4:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 76 < 75 or ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806 > test266151307():
                        revert with 0, 65
                    if ceil32(return_data.size) + ext_call.return_data[0] + 805:
                        return 0
                    if not return_data.size:
                        if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                            require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                            if mem[128] == arg4:
                                return bool(ext_call.success)
                        else:
                        return 0
                    _20060 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806
                    mem[64] = (2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 807
                    mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806] = return_data.size
                    mem[_20060 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size != 64:
                        return 0
                    require return_data.size >= 64
                    if mem[_20060 + 32] != arg4:
                        return 0
                    mem[mem[64]] = mem[_20060 + 64]
                else:
                    mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 730] + 1001] = 0
                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                    call address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).swap(address arg1, bool arg2, int256 arg3, uint160 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg1) < address(arg2), arg4, address(_8729), Array(len=mem[ceil32(return_data.size) + 730], data=mem[ceil32(return_data.size) + 1001 len ceil32(mem[ceil32(return_data.size) + 730])])
                    mem[ceil32(return_data.size) + 805 len 64] = ext_call.return_data[0 len 64]
                    if ext_call.success:
                        require return_data.size >= 64
                        return 0
                    if return_data.size <= 3:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if return_data.size < 68:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    mem[ceil32(return_data.size) + 805 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] > test266151307():
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 32 > return_data.size - 4:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 76 < 75 or ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806 > test266151307():
                        revert with 0, 65
                    if ceil32(return_data.size) + ext_call.return_data[0] + 805:
                        return 0
                    if not return_data.size:
                        if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                            require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                            if mem[128] == arg4:
                                return bool(ext_call.success)
                        else:
                        return 0
                    _20618 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806
                    mem[64] = (2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 807
                    mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806] = return_data.size
                    mem[_20618 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size != 64:
                        return 0
                    require return_data.size >= 64
                    if mem[_20618 + 32] != arg4:
                        return 0
                    mem[mem[64]] = mem[_20618 + 64]
    else:
        mem[352] = address(arg2)
        mem[384] = address(arg1)
        mem[416] = arg3 % 16777216
        require address(arg2) < uint64(arg1) << 96
        mem[480] = uint64(arg2) << 96
        mem[512] = address(arg1)
        mem[544] = arg3 % 16777216
        mem[448] = 96
        mem[608] = 0xff00000000000000000000000000000000000000000000000000000000000000
        mem[609] = 0x1f98431c8ad98523631ae4a59f267346ea31f984000000000000000000000000
        mem[629] = sha3(arg2 << 192, address(arg1), arg3 % 16777216)
        mem[661] = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54
        mem[576] = 85
        mem[96] = address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
        mem[693] = 4
        mem[725 len 4] = slot0()
        mem[729] = 0, mem[729 len 28]
        mem[733] = 0
        call address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).mem[729 len 4] with:
             gas gas_remaining wei
        if not return_data.size:
            mem[192] = 96
            mem[160] = bool(ext_call.success)
            if not ext_call.success:
                return 0
            if not address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                return 0
            require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 224
            require bool(ext_call.success) == ('signextend', 2, ('bool', 'ext_call.success'))
            mem[224] = address(arg1) < address(arg2)
            if address(arg1) >= address(arg2):
                if address(0 / 10) > 0x1555555555555555555555555555555555555555555555555555555555555555:
                    revert with 0, 17
                mem[128] = address(12 * address(0 / 10))
                mem[761] = address(arg1)
                mem[781] = arg3 << 232
                mem[784] = address(arg2)
                mem[804] = 0x128acb0800000000000000000000000000000000000000000000000000000000
                mem[808] = this.address
                mem[840] = address(arg1) < address(arg2)
                mem[872] = arg4
                mem[904] = address(12 * address(0 / 10))
                mem[936] = 160
                mem[968] = mem[729 len 4], 0
                mem[1000 len ceil32(mem[729 len 4], 0)] = mem[761 len ceil32(mem[729 len 4], 0)]
                if ceil32(mem[729 len 4], 0) <= mem[729 len 4], 0:
                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                    call address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).swap(address arg1, bool arg2, int256 arg3, uint160 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg1) < address(arg2), arg4, address(12 * address(0 / 10)), 160, mem[968 len ceil32(mem[729 len 4], 0) + 32]
                    mem[804 len 64] = ext_call.return_data[0 len 64]
                    if ext_call.success:
                        require return_data.size >= 64
                        return 0
                    if return_data.size <= 3:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if return_data.size < 68:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    mem[804 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if mem[ext_call.return_data[0] + 804] > test266151307():
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 32 > return_data.size - 4:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 76 < 75 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805 > test266151307():
                        revert with 0, 65
                    if ext_call.return_data[0] + 804:
                        return 0
                    if not return_data.size:
                        if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                            require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                            if address(12 * address(0 / 10)) == arg4:
                                return bool(ext_call.success)
                        else:
                        return 0
                    _20260 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805
                    mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + ceil32(return_data.size) + 806
                    mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805] = return_data.size
                    mem[_20260 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size != 64:
                        return 0
                    require return_data.size >= 64
                    if mem[_20260 + 32] != arg4:
                        return 0
                    mem[mem[64]] = mem[_20260 + 64]
                else:
                    mem[mem[729 len 4], 0 + 1000] = 0
                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                    call address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).swap(address arg1, bool arg2, int256 arg3, uint160 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg1) < address(arg2), arg4, address(12 * address(0 / 10)), 160, mem[968 len ceil32(mem[729 len 4], 0) + 32]
                    mem[804 len 64] = ext_call.return_data[0 len 64]
                    if ext_call.success:
                        require return_data.size >= 64
                        return 0
                    if return_data.size <= 3:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if return_data.size < 68:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    mem[804 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if mem[ext_call.return_data[0] + 804] > test266151307():
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 32 > return_data.size - 4:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 76 < 75 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805 > test266151307():
                        revert with 0, 65
                    if ext_call.return_data[0] + 804:
                        return 0
                    if not return_data.size:
                        if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                            require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                            if address(12 * address(0 / 10)) == arg4:
                                return bool(ext_call.success)
                        else:
                        return 0
                    _20753 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805
                    mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + ceil32(return_data.size) + 806
                    mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805] = return_data.size
                    mem[_20753 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size != 64:
                        return 0
                    require return_data.size >= 64
                    if mem[_20753 + 32] != arg4:
                        return 0
                    mem[mem[64]] = mem[_20753 + 64]
            else:
                if address(0 / 10) > 0x1fffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                mem[128] = 8 * Mask(157, 0, 0 / 10)
                mem[761] = address(arg1)
                mem[781] = arg3 << 232
                mem[784] = address(arg2)
                mem[804] = 0x128acb0800000000000000000000000000000000000000000000000000000000
                mem[808] = this.address
                mem[840] = address(arg1) < address(arg2)
                mem[872] = arg4
                mem[904] = 0
                mem[936] = 160
                mem[968] = mem[729 len 4], 0
                mem[1000 len ceil32(mem[729 len 4], 0)] = mem[761 len ceil32(mem[729 len 4], 0)]
                if ceil32(mem[729 len 4], 0) <= mem[729 len 4], 0:
                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                    call address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).swap(address arg1, bool arg2, int256 arg3, uint160 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg1) < address(arg2), arg4, 0, 160, mem[968 len ceil32(mem[729 len 4], 0) + 32]
                    mem[804 len 64] = ext_call.return_data[0 len 64]
                    if ext_call.success:
                        require return_data.size >= 64
                        return 0
                    if return_data.size <= 3:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if return_data.size < 68:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    mem[804 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if mem[ext_call.return_data[0] + 804] > test266151307():
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 32 > return_data.size - 4:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 76 < 75 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805 > test266151307():
                        revert with 0, 65
                    if ext_call.return_data[0] + 804:
                        return 0
                    if not return_data.size:
                        if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                            require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                            if 0 == arg4:
                                return bool(ext_call.success)
                        else:
                        return 0
                    _20300 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805
                    mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + ceil32(return_data.size) + 806
                    mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805] = return_data.size
                    mem[_20300 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size != 64:
                        return 0
                    require return_data.size >= 64
                    if mem[_20300 + 32] != arg4:
                        return 0
                    mem[mem[64]] = mem[_20300 + 64]
                else:
                    mem[mem[729 len 4], 0 + 1000] = 0
                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                    call address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).swap(address arg1, bool arg2, int256 arg3, uint160 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg1) < address(arg2), arg4, 0, 160, mem[968 len ceil32(mem[729 len 4], 0) + 32]
                    mem[804 len 64] = ext_call.return_data[0 len 64]
                    if ext_call.success:
                        require return_data.size >= 64
                        return 0
                    if return_data.size <= 3:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if return_data.size < 68:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    mem[804 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if mem[ext_call.return_data[0] + 804] > test266151307():
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 32 > return_data.size - 4:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 76 < 75 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805 > test266151307():
                        revert with 0, 65
                    if ext_call.return_data[0] + 804:
                        return 0
                    if not return_data.size:
                        if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                            require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                            if 0 == arg4:
                                return bool(ext_call.success)
                        else:
                        return 0
                    _20780 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805
                    mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + ceil32(return_data.size) + 806
                    mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805] = return_data.size
                    mem[_20780 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size != 64:
                        return 0
                    require return_data.size >= 64
                    if mem[_20780 + 32] != arg4:
                        return 0
                    mem[mem[64]] = mem[_20780 + 64]
        else:
            mem[729] = return_data.size
            mem[761 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[192] = 729
            mem[160] = bool(ext_call.success)
            if not ext_call.success:
                return 0
            if not return_data.size:
                return 0
            require return_data.size >= 224
            require mem[761] == mem[773 len 20]
            require mem[793] == ('signextend', 2, ('mem', ('range', 793, 32)))
            require mem[825] == mem[855 len 2]
            require mem[857] == mem[887 len 2]
            require mem[889] == mem[919 len 2]
            require mem[921] == mem[952 len 1]
            require mem[953] == bool(mem[953])
            mem[128] = mem[773 len 20]
            mem[224] = address(arg1) < address(arg2)
            if address(arg1) >= address(arg2):
                if address(mem[140 len 20] / 10) > 0x1555555555555555555555555555555555555555555555555555555555555555:
                    revert with 0, 17
                mem[128] = address(12 * address(mem[140 len 20] / 10))
                _8741 = mem[128]
                mem[ceil32(return_data.size) + 762] = address(arg1)
                mem[ceil32(return_data.size) + 782] = arg3 << 232
                mem[ceil32(return_data.size) + 785] = address(arg2)
                mem[ceil32(return_data.size) + 805] = 0x128acb0800000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 809] = this.address
                mem[ceil32(return_data.size) + 841] = address(arg1) < address(arg2)
                mem[ceil32(return_data.size) + 873] = arg4
                mem[ceil32(return_data.size) + 905] = mem[140 len 20]
                mem[ceil32(return_data.size) + 937] = 160
                mem[ceil32(return_data.size) + 969] = mem[ceil32(return_data.size) + 730]
                mem[ceil32(return_data.size) + 1001 len ceil32(mem[ceil32(return_data.size) + 730])] = mem[ceil32(return_data.size) + 762 len ceil32(mem[ceil32(return_data.size) + 730])]
                if ceil32(mem[ceil32(return_data.size) + 730]) <= mem[ceil32(return_data.size) + 730]:
                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                    call address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).swap(address arg1, bool arg2, int256 arg3, uint160 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg1) < address(arg2), arg4, address(mem[128]), Array(len=mem[ceil32(return_data.size) + 730], data=mem[ceil32(return_data.size) + 1001 len ceil32(mem[ceil32(return_data.size) + 730])])
                    mem[ceil32(return_data.size) + 805 len 64] = ext_call.return_data[0 len 64]
                    if ext_call.success:
                        require return_data.size >= 64
                        return 0
                    if return_data.size <= 3:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if return_data.size < 68:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    mem[ceil32(return_data.size) + 805 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] > test266151307():
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 32 > return_data.size - 4:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 76 < 75 or ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806 > test266151307():
                        revert with 0, 65
                    if ceil32(return_data.size) + ext_call.return_data[0] + 805:
                        return 0
                    if not return_data.size:
                        if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                            require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                            if mem[128] == arg4:
                                return bool(ext_call.success)
                        else:
                        return 0
                    _20340 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806
                    mem[64] = (2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 807
                    mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806] = return_data.size
                    mem[_20340 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size != 64:
                        return 0
                    require return_data.size >= 64
                    if mem[_20340 + 32] != arg4:
                        return 0
                    mem[mem[64]] = mem[_20340 + 64]
                else:
                    mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 730] + 1001] = 0
                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                    call address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).swap(address arg1, bool arg2, int256 arg3, uint160 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg1) < address(arg2), arg4, address(_8741), Array(len=mem[ceil32(return_data.size) + 730], data=mem[ceil32(return_data.size) + 1001 len ceil32(mem[ceil32(return_data.size) + 730])])
                    mem[ceil32(return_data.size) + 805 len 64] = ext_call.return_data[0 len 64]
                    if ext_call.success:
                        require return_data.size >= 64
                        return 0
                    if return_data.size <= 3:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if return_data.size < 68:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    mem[ceil32(return_data.size) + 805 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] > test266151307():
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 32 > return_data.size - 4:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 76 < 75 or ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806 > test266151307():
                        revert with 0, 65
                    if ceil32(return_data.size) + ext_call.return_data[0] + 805:
                        return 0
                    if not return_data.size:
                        if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                            require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                            if mem[128] == arg4:
                                return bool(ext_call.success)
                        else:
                        return 0
                    _20807 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806
                    mem[64] = (2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 807
                    mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806] = return_data.size
                    mem[_20807 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size != 64:
                        return 0
                    require return_data.size >= 64
                    if mem[_20807 + 32] != arg4:
                        return 0
                    mem[mem[64]] = mem[_20807 + 64]
            else:
                if address(mem[140 len 20] / 10) > 0x1fffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                mem[128] = 8 * Mask(157, 0, mem[140 len 20] / 10)
                _8745 = mem[128]
                mem[ceil32(return_data.size) + 762] = address(arg1)
                mem[ceil32(return_data.size) + 782] = arg3 << 232
                mem[ceil32(return_data.size) + 785] = address(arg2)
                mem[ceil32(return_data.size) + 805] = 0x128acb0800000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 809] = this.address
                mem[ceil32(return_data.size) + 841] = address(arg1) < address(arg2)
                mem[ceil32(return_data.size) + 873] = arg4
                mem[ceil32(return_data.size) + 905] = mem[140 len 20]
                mem[ceil32(return_data.size) + 937] = 160
                mem[ceil32(return_data.size) + 969] = mem[ceil32(return_data.size) + 730]
                mem[ceil32(return_data.size) + 1001 len ceil32(mem[ceil32(return_data.size) + 730])] = mem[ceil32(return_data.size) + 762 len ceil32(mem[ceil32(return_data.size) + 730])]
                if ceil32(mem[ceil32(return_data.size) + 730]) <= mem[ceil32(return_data.size) + 730]:
                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                    call address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).swap(address arg1, bool arg2, int256 arg3, uint160 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg1) < address(arg2), arg4, address(mem[128]), Array(len=mem[ceil32(return_data.size) + 730], data=mem[ceil32(return_data.size) + 1001 len ceil32(mem[ceil32(return_data.size) + 730])])
                    mem[ceil32(return_data.size) + 805 len 64] = ext_call.return_data[0 len 64]
                    if ext_call.success:
                        require return_data.size >= 64
                        return 0
                    if return_data.size <= 3:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if return_data.size < 68:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    mem[ceil32(return_data.size) + 805 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] > test266151307():
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 32 > return_data.size - 4:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 76 < 75 or ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806 > test266151307():
                        revert with 0, 65
                    if ceil32(return_data.size) + ext_call.return_data[0] + 805:
                        return 0
                    if not return_data.size:
                        if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                            require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                            if mem[128] == arg4:
                                return bool(ext_call.success)
                        else:
                        return 0
                    _20380 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806
                    mem[64] = (2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 807
                    mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806] = return_data.size
                    mem[_20380 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size != 64:
                        return 0
                    require return_data.size >= 64
                    if mem[_20380 + 32] != arg4:
                        return 0
                    mem[mem[64]] = mem[_20380 + 64]
                else:
                    mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 730] + 1001] = 0
                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                    call address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).swap(address arg1, bool arg2, int256 arg3, uint160 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg1) < address(arg2), arg4, address(_8745), Array(len=mem[ceil32(return_data.size) + 730], data=mem[ceil32(return_data.size) + 1001 len ceil32(mem[ceil32(return_data.size) + 730])])
                    mem[ceil32(return_data.size) + 805 len 64] = ext_call.return_data[0 len 64]
                    if ext_call.success:
                        require return_data.size >= 64
                        return 0
                    if return_data.size <= 3:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if return_data.size < 68:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    mem[ceil32(return_data.size) + 805 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] > test266151307():
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 32 > return_data.size - 4:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, arg4) >> 32
                            else:
                        return 0
                    if floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 76 < 75 or ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806 > test266151307():
                        revert with 0, 65
                    if ceil32(return_data.size) + ext_call.return_data[0] + 805:
                        return 0
                    if not return_data.size:
                        if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                            require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                            if mem[128] == arg4:
                                return bool(ext_call.success)
                        else:
                        return 0
                    _20834 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806
                    mem[64] = (2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 807
                    mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806] = return_data.size
                    mem[_20834 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size != 64:
                        return 0
                    require return_data.size >= 64
                    if mem[_20834 + 32] != arg4:
                        return 0
                    mem[mem[64]] = mem[_20834 + 64]
    return memory
      from mem[64]
       len 32
}

function sub_7f3551b4(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3 % 16777216
    if not arg4:
        return 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    if address(arg1) <= address(arg2):
        mem[352] = address(arg1)
        mem[384] = address(arg2)
        mem[416] = arg3 % 16777216
        require address(arg1) < uint64(arg2) << 96
        mem[480] = uint64(arg1) << 96
        mem[512] = address(arg2)
        mem[544] = arg3 % 16777216
        mem[448] = 96
        mem[608] = 0xff00000000000000000000000000000000000000000000000000000000000000
        mem[609] = 0x1f98431c8ad98523631ae4a59f267346ea31f984000000000000000000000000
        mem[629] = sha3(arg1 << 192, address(arg2), arg3 % 16777216)
        mem[661] = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54
        mem[576] = 85
        mem[96] = address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
        mem[693] = 4
        mem[725 len 4] = slot0()
        mem[729] = 0, mem[729 len 28]
        mem[733] = 0
        call address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).mem[729 len 4] with:
             gas gas_remaining wei
        if not return_data.size:
            mem[192] = 96
            mem[160] = bool(ext_call.success)
            if not ext_call.success:
                return 0
            if not address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                return 0
            require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 224
            require bool(ext_call.success) == ('signextend', 2, ('bool', 'ext_call.success'))
            mem[224] = address(arg1) < address(arg2)
            if address(arg1) >= address(arg2):
                if address(0 / 10) > 0x1555555555555555555555555555555555555555555555555555555555555555:
                    revert with 0, 17
                mem[128] = address(12 * address(0 / 10))
                if arg4 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                mem[761] = address(arg2)
                mem[781] = arg3 << 232
                mem[784] = address(arg1)
                mem[804] = 0x128acb0800000000000000000000000000000000000000000000000000000000
                mem[808] = this.address
                mem[840] = address(arg1) < address(arg2)
                mem[872] = -arg4
                mem[904] = address(12 * address(0 / 10))
                mem[936] = 160
                mem[968] = mem[729 len 4], 0
                mem[1000 len ceil32(mem[729 len 4], 0)] = mem[761 len ceil32(mem[729 len 4], 0)]
                if ceil32(mem[729 len 4], 0) <= mem[729 len 4], 0:
                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                    call address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).swap(address arg1, bool arg2, int256 arg3, uint160 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg1) < address(arg2), -arg4, address(12 * address(0 / 10)), 160, mem[968 len ceil32(mem[729 len 4], 0) + 32]
                    mem[804 len 64] = ext_call.return_data[0 len 64]
                    if ext_call.success:
                        require return_data.size >= 64
                        return 0
                    if return_data.size <= 3:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if return_data.size < 68:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    mem[804 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if mem[ext_call.return_data[0] + 804] > test266151307():
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 32 > return_data.size - 4:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 76 < 75 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805 > test266151307():
                        revert with 0, 65
                    if ext_call.return_data[0] + 804:
                        return 0
                    if not return_data.size:
                        if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                            require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                            if address(12 * address(0 / 10)) == arg4:
                                return bool(ext_call.success)
                        else:
                        return 0
                    _19940 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805
                    mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + ceil32(return_data.size) + 806
                    mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805] = return_data.size
                    mem[_19940 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size != 64:
                        return 0
                    require return_data.size >= 64
                    if mem[_19940 + 32] != arg4:
                        return 0
                    mem[mem[64]] = mem[_19940 + 64]
                else:
                    mem[mem[729 len 4], 0 + 1000] = 0
                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                    call address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).swap(address arg1, bool arg2, int256 arg3, uint160 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg1) < address(arg2), -arg4, address(12 * address(0 / 10)), 160, mem[968 len ceil32(mem[729 len 4], 0) + 32]
                    mem[804 len 64] = ext_call.return_data[0 len 64]
                    if ext_call.success:
                        require return_data.size >= 64
                        return 0
                    if return_data.size <= 3:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if return_data.size < 68:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    mem[804 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if mem[ext_call.return_data[0] + 804] > test266151307():
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 32 > return_data.size - 4:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 76 < 75 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805 > test266151307():
                        revert with 0, 65
                    if ext_call.return_data[0] + 804:
                        return 0
                    if not return_data.size:
                        if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                            require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                            if address(12 * address(0 / 10)) == arg4:
                                return bool(ext_call.success)
                        else:
                        return 0
                    _20537 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805
                    mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + ceil32(return_data.size) + 806
                    mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805] = return_data.size
                    mem[_20537 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size != 64:
                        return 0
                    require return_data.size >= 64
                    if mem[_20537 + 32] != arg4:
                        return 0
                    mem[mem[64]] = mem[_20537 + 64]
            else:
                if address(0 / 10) > 0x1fffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                mem[128] = 8 * Mask(157, 0, 0 / 10)
                if arg4 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                mem[761] = address(arg2)
                mem[781] = arg3 << 232
                mem[784] = address(arg1)
                mem[804] = 0x128acb0800000000000000000000000000000000000000000000000000000000
                mem[808] = this.address
                mem[840] = address(arg1) < address(arg2)
                mem[872] = -arg4
                mem[904] = 0
                mem[936] = 160
                mem[968] = mem[729 len 4], 0
                mem[1000 len ceil32(mem[729 len 4], 0)] = mem[761 len ceil32(mem[729 len 4], 0)]
                if ceil32(mem[729 len 4], 0) <= mem[729 len 4], 0:
                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                    call address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).swap(address arg1, bool arg2, int256 arg3, uint160 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg1) < address(arg2), -arg4, 0, 160, mem[968 len ceil32(mem[729 len 4], 0) + 32]
                    mem[804 len 64] = ext_call.return_data[0 len 64]
                    if ext_call.success:
                        require return_data.size >= 64
                        return 0
                    if return_data.size <= 3:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if return_data.size < 68:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    mem[804 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if mem[ext_call.return_data[0] + 804] > test266151307():
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 32 > return_data.size - 4:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 76 < 75 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805 > test266151307():
                        revert with 0, 65
                    if ext_call.return_data[0] + 804:
                        return 0
                    if not return_data.size:
                        if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                            require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                            if 0 == arg4:
                                return bool(ext_call.success)
                        else:
                        return 0
                    _19980 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805
                    mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + ceil32(return_data.size) + 806
                    mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805] = return_data.size
                    mem[_19980 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size != 64:
                        return 0
                    require return_data.size >= 64
                    if mem[_19980 + 32] != arg4:
                        return 0
                    mem[mem[64]] = mem[_19980 + 64]
                else:
                    mem[mem[729 len 4], 0 + 1000] = 0
                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                    call address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).swap(address arg1, bool arg2, int256 arg3, uint160 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg1) < address(arg2), -arg4, 0, 160, mem[968 len ceil32(mem[729 len 4], 0) + 32]
                    mem[804 len 64] = ext_call.return_data[0 len 64]
                    if ext_call.success:
                        require return_data.size >= 64
                        return 0
                    if return_data.size <= 3:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if return_data.size < 68:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    mem[804 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if mem[ext_call.return_data[0] + 804] > test266151307():
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 32 > return_data.size - 4:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 76 < 75 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805 > test266151307():
                        revert with 0, 65
                    if ext_call.return_data[0] + 804:
                        return 0
                    if not return_data.size:
                        if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                            require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                            if 0 == arg4:
                                return bool(ext_call.success)
                        else:
                        return 0
                    _20564 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805
                    mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + ceil32(return_data.size) + 806
                    mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805] = return_data.size
                    mem[_20564 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size != 64:
                        return 0
                    require return_data.size >= 64
                    if mem[_20564 + 32] != arg4:
                        return 0
                    mem[mem[64]] = mem[_20564 + 64]
        else:
            mem[729] = return_data.size
            mem[761 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[192] = 729
            mem[160] = bool(ext_call.success)
            if not ext_call.success:
                return 0
            if not return_data.size:
                return 0
            require return_data.size >= 224
            require mem[761] == mem[773 len 20]
            require mem[793] == ('signextend', 2, ('mem', ('range', 793, 32)))
            require mem[825] == mem[855 len 2]
            require mem[857] == mem[887 len 2]
            require mem[889] == mem[919 len 2]
            require mem[921] == mem[952 len 1]
            require mem[953] == bool(mem[953])
            mem[128] = mem[773 len 20]
            mem[224] = address(arg1) < address(arg2)
            if address(arg1) >= address(arg2):
                if address(mem[140 len 20] / 10) > 0x1555555555555555555555555555555555555555555555555555555555555555:
                    revert with 0, 17
                mem[128] = address(12 * address(mem[140 len 20] / 10))
                if arg4 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                _8735 = mem[128]
                mem[ceil32(return_data.size) + 762] = address(arg2)
                mem[ceil32(return_data.size) + 782] = arg3 << 232
                mem[ceil32(return_data.size) + 785] = address(arg1)
                mem[ceil32(return_data.size) + 805] = 0x128acb0800000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 809] = this.address
                mem[ceil32(return_data.size) + 841] = address(arg1) < address(arg2)
                mem[ceil32(return_data.size) + 873] = -arg4
                mem[ceil32(return_data.size) + 905] = mem[140 len 20]
                mem[ceil32(return_data.size) + 937] = 160
                mem[ceil32(return_data.size) + 969] = mem[ceil32(return_data.size) + 730]
                mem[ceil32(return_data.size) + 1001 len ceil32(mem[ceil32(return_data.size) + 730])] = mem[ceil32(return_data.size) + 762 len ceil32(mem[ceil32(return_data.size) + 730])]
                if ceil32(mem[ceil32(return_data.size) + 730]) <= mem[ceil32(return_data.size) + 730]:
                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                    call address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).swap(address arg1, bool arg2, int256 arg3, uint160 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg1) < address(arg2), -arg4, address(mem[128]), Array(len=mem[ceil32(return_data.size) + 730], data=mem[ceil32(return_data.size) + 1001 len ceil32(mem[ceil32(return_data.size) + 730])])
                    mem[ceil32(return_data.size) + 805 len 64] = ext_call.return_data[0 len 64]
                    if ext_call.success:
                        require return_data.size >= 64
                        return 0
                    if return_data.size <= 3:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if return_data.size < 68:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    mem[ceil32(return_data.size) + 805 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] > test266151307():
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 32 > return_data.size - 4:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 76 < 75 or ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806 > test266151307():
                        revert with 0, 65
                    if ceil32(return_data.size) + ext_call.return_data[0] + 805:
                        return 0
                    if not return_data.size:
                        if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                            require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                            if mem[128] == arg4:
                                return bool(ext_call.success)
                        else:
                        return 0
                    _20020 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806
                    mem[64] = (2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 807
                    mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806] = return_data.size
                    mem[_20020 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size != 64:
                        return 0
                    require return_data.size >= 64
                    if mem[_20020 + 32] != arg4:
                        return 0
                    mem[mem[64]] = mem[_20020 + 64]
                else:
                    mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 730] + 1001] = 0
                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                    call address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).swap(address arg1, bool arg2, int256 arg3, uint160 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg1) < address(arg2), -arg4, address(_8735), Array(len=mem[ceil32(return_data.size) + 730], data=mem[ceil32(return_data.size) + 1001 len ceil32(mem[ceil32(return_data.size) + 730])])
                    mem[ceil32(return_data.size) + 805 len 64] = ext_call.return_data[0 len 64]
                    if ext_call.success:
                        require return_data.size >= 64
                        return 0
                    if return_data.size <= 3:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if return_data.size < 68:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    mem[ceil32(return_data.size) + 805 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] > test266151307():
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 32 > return_data.size - 4:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 76 < 75 or ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806 > test266151307():
                        revert with 0, 65
                    if ceil32(return_data.size) + ext_call.return_data[0] + 805:
                        return 0
                    if not return_data.size:
                        if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                            require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                            if mem[128] == arg4:
                                return bool(ext_call.success)
                        else:
                        return 0
                    _20591 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806
                    mem[64] = (2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 807
                    mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806] = return_data.size
                    mem[_20591 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size != 64:
                        return 0
                    require return_data.size >= 64
                    if mem[_20591 + 32] != arg4:
                        return 0
                    mem[mem[64]] = mem[_20591 + 64]
            else:
                if address(mem[140 len 20] / 10) > 0x1fffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                mem[128] = 8 * Mask(157, 0, mem[140 len 20] / 10)
                if arg4 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                _8737 = mem[128]
                mem[ceil32(return_data.size) + 762] = address(arg2)
                mem[ceil32(return_data.size) + 782] = arg3 << 232
                mem[ceil32(return_data.size) + 785] = address(arg1)
                mem[ceil32(return_data.size) + 805] = 0x128acb0800000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 809] = this.address
                mem[ceil32(return_data.size) + 841] = address(arg1) < address(arg2)
                mem[ceil32(return_data.size) + 873] = -arg4
                mem[ceil32(return_data.size) + 905] = mem[140 len 20]
                mem[ceil32(return_data.size) + 937] = 160
                mem[ceil32(return_data.size) + 969] = mem[ceil32(return_data.size) + 730]
                mem[ceil32(return_data.size) + 1001 len ceil32(mem[ceil32(return_data.size) + 730])] = mem[ceil32(return_data.size) + 762 len ceil32(mem[ceil32(return_data.size) + 730])]
                if ceil32(mem[ceil32(return_data.size) + 730]) <= mem[ceil32(return_data.size) + 730]:
                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                    call address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).swap(address arg1, bool arg2, int256 arg3, uint160 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg1) < address(arg2), -arg4, address(mem[128]), Array(len=mem[ceil32(return_data.size) + 730], data=mem[ceil32(return_data.size) + 1001 len ceil32(mem[ceil32(return_data.size) + 730])])
                    mem[ceil32(return_data.size) + 805 len 64] = ext_call.return_data[0 len 64]
                    if ext_call.success:
                        require return_data.size >= 64
                        return 0
                    if return_data.size <= 3:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if return_data.size < 68:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    mem[ceil32(return_data.size) + 805 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] > test266151307():
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 32 > return_data.size - 4:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 76 < 75 or ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806 > test266151307():
                        revert with 0, 65
                    if ceil32(return_data.size) + ext_call.return_data[0] + 805:
                        return 0
                    if not return_data.size:
                        if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                            require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                            if mem[128] == arg4:
                                return bool(ext_call.success)
                        else:
                        return 0
                    _20060 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806
                    mem[64] = (2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 807
                    mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806] = return_data.size
                    mem[_20060 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size != 64:
                        return 0
                    require return_data.size >= 64
                    if mem[_20060 + 32] != arg4:
                        return 0
                    mem[mem[64]] = mem[_20060 + 64]
                else:
                    mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 730] + 1001] = 0
                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                    call address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).swap(address arg1, bool arg2, int256 arg3, uint160 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg1) < address(arg2), -arg4, address(_8737), Array(len=mem[ceil32(return_data.size) + 730], data=mem[ceil32(return_data.size) + 1001 len ceil32(mem[ceil32(return_data.size) + 730])])
                    mem[ceil32(return_data.size) + 805 len 64] = ext_call.return_data[0 len 64]
                    if ext_call.success:
                        require return_data.size >= 64
                        return 0
                    if return_data.size <= 3:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if return_data.size < 68:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    mem[ceil32(return_data.size) + 805 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] > test266151307():
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 32 > return_data.size - 4:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 76 < 75 or ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806 > test266151307():
                        revert with 0, 65
                    if ceil32(return_data.size) + ext_call.return_data[0] + 805:
                        return 0
                    if not return_data.size:
                        if 64 == address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                            require address(sha3(0, 2276643401503442211, sha3(arg1 << 192, address(arg2), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                            if mem[128] == arg4:
                                return bool(ext_call.success)
                        else:
                        return 0
                    _20618 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806
                    mem[64] = (2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 807
                    mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806] = return_data.size
                    mem[_20618 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size != 64:
                        return 0
                    require return_data.size >= 64
                    if mem[_20618 + 32] != arg4:
                        return 0
                    mem[mem[64]] = mem[_20618 + 64]
    else:
        mem[352] = address(arg2)
        mem[384] = address(arg1)
        mem[416] = arg3 % 16777216
        require address(arg2) < uint64(arg1) << 96
        mem[480] = uint64(arg2) << 96
        mem[512] = address(arg1)
        mem[544] = arg3 % 16777216
        mem[448] = 96
        mem[608] = 0xff00000000000000000000000000000000000000000000000000000000000000
        mem[609] = 0x1f98431c8ad98523631ae4a59f267346ea31f984000000000000000000000000
        mem[629] = sha3(arg2 << 192, address(arg1), arg3 % 16777216)
        mem[661] = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54
        mem[576] = 85
        mem[96] = address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
        mem[693] = 4
        mem[725 len 4] = slot0()
        mem[729] = 0, mem[729 len 28]
        mem[733] = 0
        call address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).mem[729 len 4] with:
             gas gas_remaining wei
        if not return_data.size:
            mem[192] = 96
            mem[160] = bool(ext_call.success)
            if not ext_call.success:
                return 0
            if not address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                return 0
            require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 224
            require bool(ext_call.success) == ('signextend', 2, ('bool', 'ext_call.success'))
            mem[224] = address(arg1) < address(arg2)
            if address(arg1) >= address(arg2):
                if address(0 / 10) > 0x1555555555555555555555555555555555555555555555555555555555555555:
                    revert with 0, 17
                mem[128] = address(12 * address(0 / 10))
                if arg4 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                mem[761] = address(arg2)
                mem[781] = arg3 << 232
                mem[784] = address(arg1)
                mem[804] = 0x128acb0800000000000000000000000000000000000000000000000000000000
                mem[808] = this.address
                mem[840] = address(arg1) < address(arg2)
                mem[872] = -arg4
                mem[904] = address(12 * address(0 / 10))
                mem[936] = 160
                mem[968] = mem[729 len 4], 0
                mem[1000 len ceil32(mem[729 len 4], 0)] = mem[761 len ceil32(mem[729 len 4], 0)]
                if ceil32(mem[729 len 4], 0) <= mem[729 len 4], 0:
                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                    call address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).swap(address arg1, bool arg2, int256 arg3, uint160 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg1) < address(arg2), -arg4, address(12 * address(0 / 10)), 160, mem[968 len ceil32(mem[729 len 4], 0) + 32]
                    mem[804 len 64] = ext_call.return_data[0 len 64]
                    if ext_call.success:
                        require return_data.size >= 64
                        return 0
                    if return_data.size <= 3:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if return_data.size < 68:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    mem[804 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if mem[ext_call.return_data[0] + 804] > test266151307():
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 32 > return_data.size - 4:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 76 < 75 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805 > test266151307():
                        revert with 0, 65
                    if ext_call.return_data[0] + 804:
                        return 0
                    if not return_data.size:
                        if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                            require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                            if address(12 * address(0 / 10)) == arg4:
                                return bool(ext_call.success)
                        else:
                        return 0
                    _20260 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805
                    mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + ceil32(return_data.size) + 806
                    mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805] = return_data.size
                    mem[_20260 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size != 64:
                        return 0
                    require return_data.size >= 64
                    if mem[_20260 + 32] != arg4:
                        return 0
                    mem[mem[64]] = mem[_20260 + 64]
                else:
                    mem[mem[729 len 4], 0 + 1000] = 0
                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                    call address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).swap(address arg1, bool arg2, int256 arg3, uint160 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg1) < address(arg2), -arg4, address(12 * address(0 / 10)), 160, mem[968 len ceil32(mem[729 len 4], 0) + 32]
                    mem[804 len 64] = ext_call.return_data[0 len 64]
                    if ext_call.success:
                        require return_data.size >= 64
                        return 0
                    if return_data.size <= 3:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if return_data.size < 68:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    mem[804 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if mem[ext_call.return_data[0] + 804] > test266151307():
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 32 > return_data.size - 4:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if address(12 * address(0 / 10)) == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 76 < 75 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805 > test266151307():
                        revert with 0, 65
                    if ext_call.return_data[0] + 804:
                        return 0
                    if not return_data.size:
                        if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                            require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                            if address(12 * address(0 / 10)) == arg4:
                                return bool(ext_call.success)
                        else:
                        return 0
                    _20753 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805
                    mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + ceil32(return_data.size) + 806
                    mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805] = return_data.size
                    mem[_20753 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size != 64:
                        return 0
                    require return_data.size >= 64
                    if mem[_20753 + 32] != arg4:
                        return 0
                    mem[mem[64]] = mem[_20753 + 64]
            else:
                if address(0 / 10) > 0x1fffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                mem[128] = 8 * Mask(157, 0, 0 / 10)
                if arg4 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                mem[761] = address(arg2)
                mem[781] = arg3 << 232
                mem[784] = address(arg1)
                mem[804] = 0x128acb0800000000000000000000000000000000000000000000000000000000
                mem[808] = this.address
                mem[840] = address(arg1) < address(arg2)
                mem[872] = -arg4
                mem[904] = 0
                mem[936] = 160
                mem[968] = mem[729 len 4], 0
                mem[1000 len ceil32(mem[729 len 4], 0)] = mem[761 len ceil32(mem[729 len 4], 0)]
                if ceil32(mem[729 len 4], 0) <= mem[729 len 4], 0:
                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                    call address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).swap(address arg1, bool arg2, int256 arg3, uint160 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg1) < address(arg2), -arg4, 0, 160, mem[968 len ceil32(mem[729 len 4], 0) + 32]
                    mem[804 len 64] = ext_call.return_data[0 len 64]
                    if ext_call.success:
                        require return_data.size >= 64
                        return 0
                    if return_data.size <= 3:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if return_data.size < 68:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    mem[804 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if mem[ext_call.return_data[0] + 804] > test266151307():
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 32 > return_data.size - 4:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 76 < 75 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805 > test266151307():
                        revert with 0, 65
                    if ext_call.return_data[0] + 804:
                        return 0
                    if not return_data.size:
                        if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                            require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                            if 0 == arg4:
                                return bool(ext_call.success)
                        else:
                        return 0
                    _20300 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805
                    mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + ceil32(return_data.size) + 806
                    mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805] = return_data.size
                    mem[_20300 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size != 64:
                        return 0
                    require return_data.size >= 64
                    if mem[_20300 + 32] != arg4:
                        return 0
                    mem[mem[64]] = mem[_20300 + 64]
                else:
                    mem[mem[729 len 4], 0 + 1000] = 0
                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                    call address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).swap(address arg1, bool arg2, int256 arg3, uint160 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg1) < address(arg2), -arg4, 0, 160, mem[968 len ceil32(mem[729 len 4], 0) + 32]
                    mem[804 len 64] = ext_call.return_data[0 len 64]
                    if ext_call.success:
                        require return_data.size >= 64
                        return 0
                    if return_data.size <= 3:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if return_data.size < 68:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    mem[804 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if mem[ext_call.return_data[0] + 804] > test266151307():
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 32 > return_data.size - 4:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if 0 == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[836 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[836] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 76 < 75 or floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805 > test266151307():
                        revert with 0, 65
                    if ext_call.return_data[0] + 804:
                        return 0
                    if not return_data.size:
                        if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                            require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                            if 0 == arg4:
                                return bool(ext_call.success)
                        else:
                        return 0
                    _20780 = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805
                    mem[64] = floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + ceil32(return_data.size) + 806
                    mem[floor32(ext_call.return_data[0] + mem[ext_call.return_data[0] + 804] + 31) + 805] = return_data.size
                    mem[_20780 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size != 64:
                        return 0
                    require return_data.size >= 64
                    if mem[_20780 + 32] != arg4:
                        return 0
                    mem[mem[64]] = mem[_20780 + 64]
        else:
            mem[729] = return_data.size
            mem[761 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[192] = 729
            mem[160] = bool(ext_call.success)
            if not ext_call.success:
                return 0
            if not return_data.size:
                return 0
            require return_data.size >= 224
            require mem[761] == mem[773 len 20]
            require mem[793] == ('signextend', 2, ('mem', ('range', 793, 32)))
            require mem[825] == mem[855 len 2]
            require mem[857] == mem[887 len 2]
            require mem[889] == mem[919 len 2]
            require mem[921] == mem[952 len 1]
            require mem[953] == bool(mem[953])
            mem[128] = mem[773 len 20]
            mem[224] = address(arg1) < address(arg2)
            if address(arg1) >= address(arg2):
                if address(mem[140 len 20] / 10) > 0x1555555555555555555555555555555555555555555555555555555555555555:
                    revert with 0, 17
                mem[128] = address(12 * address(mem[140 len 20] / 10))
                if arg4 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                _8743 = mem[128]
                mem[ceil32(return_data.size) + 762] = address(arg2)
                mem[ceil32(return_data.size) + 782] = arg3 << 232
                mem[ceil32(return_data.size) + 785] = address(arg1)
                mem[ceil32(return_data.size) + 805] = 0x128acb0800000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 809] = this.address
                mem[ceil32(return_data.size) + 841] = address(arg1) < address(arg2)
                mem[ceil32(return_data.size) + 873] = -arg4
                mem[ceil32(return_data.size) + 905] = mem[140 len 20]
                mem[ceil32(return_data.size) + 937] = 160
                mem[ceil32(return_data.size) + 969] = mem[ceil32(return_data.size) + 730]
                mem[ceil32(return_data.size) + 1001 len ceil32(mem[ceil32(return_data.size) + 730])] = mem[ceil32(return_data.size) + 762 len ceil32(mem[ceil32(return_data.size) + 730])]
                if ceil32(mem[ceil32(return_data.size) + 730]) <= mem[ceil32(return_data.size) + 730]:
                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                    call address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).swap(address arg1, bool arg2, int256 arg3, uint160 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg1) < address(arg2), -arg4, address(mem[128]), Array(len=mem[ceil32(return_data.size) + 730], data=mem[ceil32(return_data.size) + 1001 len ceil32(mem[ceil32(return_data.size) + 730])])
                    mem[ceil32(return_data.size) + 805 len 64] = ext_call.return_data[0 len 64]
                    if ext_call.success:
                        require return_data.size >= 64
                        return 0
                    if return_data.size <= 3:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if return_data.size < 68:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    mem[ceil32(return_data.size) + 805 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] > test266151307():
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 32 > return_data.size - 4:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 76 < 75 or ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806 > test266151307():
                        revert with 0, 65
                    if ceil32(return_data.size) + ext_call.return_data[0] + 805:
                        return 0
                    if not return_data.size:
                        if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                            require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                            if mem[128] == arg4:
                                return bool(ext_call.success)
                        else:
                        return 0
                    _20340 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806
                    mem[64] = (2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 807
                    mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806] = return_data.size
                    mem[_20340 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size != 64:
                        return 0
                    require return_data.size >= 64
                    if mem[_20340 + 32] != arg4:
                        return 0
                    mem[mem[64]] = mem[_20340 + 64]
                else:
                    mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 730] + 1001] = 0
                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                    call address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).swap(address arg1, bool arg2, int256 arg3, uint160 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg1) < address(arg2), -arg4, address(_8743), Array(len=mem[ceil32(return_data.size) + 730], data=mem[ceil32(return_data.size) + 1001 len ceil32(mem[ceil32(return_data.size) + 730])])
                    mem[ceil32(return_data.size) + 805 len 64] = ext_call.return_data[0 len 64]
                    if ext_call.success:
                        require return_data.size >= 64
                        return 0
                    if return_data.size <= 3:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if return_data.size < 68:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    mem[ceil32(return_data.size) + 805 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] > test266151307():
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 32 > return_data.size - 4:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 76 < 75 or ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806 > test266151307():
                        revert with 0, 65
                    if ceil32(return_data.size) + ext_call.return_data[0] + 805:
                        return 0
                    if not return_data.size:
                        if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                            require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                            if mem[128] == arg4:
                                return bool(ext_call.success)
                        else:
                        return 0
                    _20807 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806
                    mem[64] = (2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 807
                    mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806] = return_data.size
                    mem[_20807 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size != 64:
                        return 0
                    require return_data.size >= 64
                    if mem[_20807 + 32] != arg4:
                        return 0
                    mem[mem[64]] = mem[_20807 + 64]
            else:
                if address(mem[140 len 20] / 10) > 0x1fffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                mem[128] = 8 * Mask(157, 0, mem[140 len 20] / 10)
                if arg4 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 17
                _8745 = mem[128]
                mem[ceil32(return_data.size) + 762] = address(arg2)
                mem[ceil32(return_data.size) + 782] = arg3 << 232
                mem[ceil32(return_data.size) + 785] = address(arg1)
                mem[ceil32(return_data.size) + 805] = 0x128acb0800000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 809] = this.address
                mem[ceil32(return_data.size) + 841] = address(arg1) < address(arg2)
                mem[ceil32(return_data.size) + 873] = -arg4
                mem[ceil32(return_data.size) + 905] = mem[140 len 20]
                mem[ceil32(return_data.size) + 937] = 160
                mem[ceil32(return_data.size) + 969] = mem[ceil32(return_data.size) + 730]
                mem[ceil32(return_data.size) + 1001 len ceil32(mem[ceil32(return_data.size) + 730])] = mem[ceil32(return_data.size) + 762 len ceil32(mem[ceil32(return_data.size) + 730])]
                if ceil32(mem[ceil32(return_data.size) + 730]) <= mem[ceil32(return_data.size) + 730]:
                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                    call address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).swap(address arg1, bool arg2, int256 arg3, uint160 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg1) < address(arg2), -arg4, address(mem[128]), Array(len=mem[ceil32(return_data.size) + 730], data=mem[ceil32(return_data.size) + 1001 len ceil32(mem[ceil32(return_data.size) + 730])])
                    mem[ceil32(return_data.size) + 805 len 64] = ext_call.return_data[0 len 64]
                    if ext_call.success:
                        require return_data.size >= 64
                        return 0
                    if return_data.size <= 3:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if return_data.size < 68:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    mem[ceil32(return_data.size) + 805 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] > test266151307():
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 32 > return_data.size - 4:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 76 < 75 or ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806 > test266151307():
                        revert with 0, 65
                    if ceil32(return_data.size) + ext_call.return_data[0] + 805:
                        return 0
                    if not return_data.size:
                        if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                            require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                            if mem[128] == arg4:
                                return bool(ext_call.success)
                        else:
                        return 0
                    _20380 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806
                    mem[64] = (2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 807
                    mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806] = return_data.size
                    mem[_20380 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size != 64:
                        return 0
                    require return_data.size >= 64
                    if mem[_20380 + 32] != arg4:
                        return 0
                    mem[mem[64]] = mem[_20380 + 64]
                else:
                    mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 730] + 1001] = 0
                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                    call address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).swap(address arg1, bool arg2, int256 arg3, uint160 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args address(this.address), address(arg1) < address(arg2), -arg4, address(_8745), Array(len=mem[ceil32(return_data.size) + 730], data=mem[ceil32(return_data.size) + 1001 len ceil32(mem[ceil32(return_data.size) + 730])])
                    mem[ceil32(return_data.size) + 805 len 64] = ext_call.return_data[0 len 64]
                    if ext_call.success:
                        require return_data.size >= 64
                        return 0
                    if return_data.size <= 3:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if return_data.size < 68:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    mem[ceil32(return_data.size) + 805 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] > test266151307():
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 32 > return_data.size - 4:
                        if not return_data.size:
                            if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                                require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                                if mem[128] == arg4:
                                    return bool(ext_call.success)
                            else:
                        else:
                            mem[ceil32(return_data.size) + 837 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if 64 == return_data.size:
                                require return_data.size >= 64
                                if mem[ceil32(return_data.size) + 837] == arg4:
                                    return uint32(address(arg1) < address(arg2)), Mask(224, 32, -arg4) >> 32
                            else:
                        return 0
                    if floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 76 < 75 or ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806 > test266151307():
                        revert with 0, 65
                    if ceil32(return_data.size) + ext_call.return_data[0] + 805:
                        return 0
                    if not return_data.size:
                        if 64 == address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)):
                            require address(sha3(0, 2276643401503442211, sha3(arg2 << 192, address(arg1), arg3 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) >= 64
                            if mem[128] == arg4:
                                return bool(ext_call.success)
                        else:
                        return 0
                    _20834 = ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806
                    mem[64] = (2 * ceil32(return_data.size)) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 807
                    mem[ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(return_data.size) + ext_call.return_data[0] + 805] + 31) + 806] = return_data.size
                    mem[_20834 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if return_data.size != 64:
                        return 0
                    require return_data.size >= 64
                    if mem[_20834 + 32] != arg4:
                        return 0
                    mem[mem[64]] = mem[_20834 + 64]
    return memory
      from mem[64]
       len 32
}



}
