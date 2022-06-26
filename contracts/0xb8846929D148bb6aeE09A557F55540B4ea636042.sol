contract main {




// =====================  Runtime code  =====================


#
#  - sub_88f2e242(?)
#
address stor0;

function _fallback() payable {
    revert
}

function redeem(address[] arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, 'OWNER'
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if not address(cd[((32 * idx) + arg1 + 36)]):
            call stor0 with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
            if return_data.size:
                _20 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_20] = return_data.size
                mem[_20 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'NOT SENT'
        else:
            if idx >= arg1.length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _27 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _28 = mem[_27]
            require mem[_27] == mem[_27]
            if idx >= arg1.length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[mem[64] + 4] = stor0
            mem[mem[64] + 36] = _28
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            call address(cd[((32 * idx) + arg1 + 36)]).0xa9059cbb with:
                 gas gas_remaining wei
                args stor0, _28
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _31 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_31] == bool(mem[_31])
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_a8312b1d(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if ('cd', 68).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 68).length
    mem[64] = (32 * ('cd', 68).length) + 128
    if not ('cd', 68).length:
        if 0 >= ('cd', 68).length:
            revert with 'NH{q', 50
        mem[128] = cd[4]
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _108 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _110 = mem[_108]
            require mem[_108] == mem[_108 + 18 len 14]
            _112 = mem[_108 + 32]
            require mem[_108 + 32] == mem[_108 + 50 len 14]
            require mem[_108 + 64] == mem[_108 + 92 len 4]
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _120 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_120] == mem[_120 + 12 len 20]
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 128] and 997 > -1 / mem[(32 * idx) + 128]:
                revert with 'NH{q', 17
            if 997 * mem[(32 * idx) + 128] / 997 != mem[(32 * idx) + 128]:
                revert with 0, 'ds-math-mul-overflow'
            if address(cd[((32 * idx) + cd[68] + 36)]) == mem[_120 + 12 len 20]:
                if not Mask(112, 0, _112):
                    if Mask(112, 0, _110) and 1000 > -1 / Mask(112, 0, _110):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, _110) / 1000 != Mask(112, 0, _110):
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, _110) > (-997 * mem[(32 * idx) + 128]) - 1:
                        revert with 'NH{q', 17
                    if (1000 * Mask(112, 0, _110)) + (997 * mem[(32 * idx) + 128]) < 1000 * Mask(112, 0, _110):
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * Mask(112, 0, _110)) + (997 * mem[(32 * idx) + 128]):
                        revert with 'NH{q', 18
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + 128] = 0 / (1000 * Mask(112, 0, _110)) + (997 * mem[(32 * idx) + 128])
                else:
                    if 997 * mem[(32 * idx) + 128] and Mask(112, 0, _112) > -1 / 997 * mem[(32 * idx) + 128]:
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _112):
                        revert with 'NH{q', 18
                    if 997 * mem[(32 * idx) + 128] * Mask(112, 0, _112) / Mask(112, 0, _112) != 997 * mem[(32 * idx) + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if Mask(112, 0, _110) and 1000 > -1 / Mask(112, 0, _110):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, _110) / 1000 != Mask(112, 0, _110):
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, _110) > (-997 * mem[(32 * idx) + 128]) - 1:
                        revert with 'NH{q', 17
                    if (1000 * Mask(112, 0, _110)) + (997 * mem[(32 * idx) + 128]) < 1000 * Mask(112, 0, _110):
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * Mask(112, 0, _110)) + (997 * mem[(32 * idx) + 128]):
                        revert with 'NH{q', 18
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + 128] = 997 * mem[(32 * idx) + 128] * Mask(112, 0, _112) / (1000 * Mask(112, 0, _110)) + (997 * mem[(32 * idx) + 128])
            else:
                if not Mask(112, 0, _110):
                    if Mask(112, 0, _112) and 1000 > -1 / Mask(112, 0, _112):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, _112) / 1000 != Mask(112, 0, _112):
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, _112) > (-997 * mem[(32 * idx) + 128]) - 1:
                        revert with 'NH{q', 17
                    if (1000 * Mask(112, 0, _112)) + (997 * mem[(32 * idx) + 128]) < 1000 * Mask(112, 0, _112):
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * Mask(112, 0, _112)) + (997 * mem[(32 * idx) + 128]):
                        revert with 'NH{q', 18
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + 128] = 0 / (1000 * Mask(112, 0, _112)) + (997 * mem[(32 * idx) + 128])
                else:
                    if 997 * mem[(32 * idx) + 128] and Mask(112, 0, _110) > -1 / 997 * mem[(32 * idx) + 128]:
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _110):
                        revert with 'NH{q', 18
                    if 997 * mem[(32 * idx) + 128] * Mask(112, 0, _110) / Mask(112, 0, _110) != 997 * mem[(32 * idx) + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if Mask(112, 0, _112) and 1000 > -1 / Mask(112, 0, _112):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, _112) / 1000 != Mask(112, 0, _112):
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, _112) > (-997 * mem[(32 * idx) + 128]) - 1:
                        revert with 'NH{q', 17
                    if (1000 * Mask(112, 0, _112)) + (997 * mem[(32 * idx) + 128]) < 1000 * Mask(112, 0, _112):
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * Mask(112, 0, _112)) + (997 * mem[(32 * idx) + 128]):
                        revert with 'NH{q', 18
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + 128] = 997 * mem[(32 * idx) + 128] * Mask(112, 0, _110) / (1000 * Mask(112, 0, _112)) + (997 * mem[(32 * idx) + 128])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * ('cd', 68).length] = call.data[calldata.size len 32 * ('cd', 68).length]
        if 0 >= ('cd', 68).length:
            revert with 'NH{q', 50
        mem[128] = cd[4]
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _109 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _111 = mem[_109]
            require mem[_109] == mem[_109 + 18 len 14]
            _113 = mem[_109 + 32]
            require mem[_109 + 32] == mem[_109 + 50 len 14]
            require mem[_109 + 64] == mem[_109 + 92 len 4]
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _121 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_121] == mem[_121 + 12 len 20]
            if idx >= ('cd', 68).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if mem[(32 * idx) + 128] and 997 > -1 / mem[(32 * idx) + 128]:
                revert with 'NH{q', 17
            if 997 * mem[(32 * idx) + 128] / 997 != mem[(32 * idx) + 128]:
                revert with 0, 'ds-math-mul-overflow'
            if address(cd[((32 * idx) + cd[68] + 36)]) == mem[_121 + 12 len 20]:
                if not Mask(112, 0, _113):
                    if Mask(112, 0, _111) and 1000 > -1 / Mask(112, 0, _111):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, _111) / 1000 != Mask(112, 0, _111):
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, _111) > (-997 * mem[(32 * idx) + 128]) - 1:
                        revert with 'NH{q', 17
                    if (1000 * Mask(112, 0, _111)) + (997 * mem[(32 * idx) + 128]) < 1000 * Mask(112, 0, _111):
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * Mask(112, 0, _111)) + (997 * mem[(32 * idx) + 128]):
                        revert with 'NH{q', 18
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + 128] = 0 / (1000 * Mask(112, 0, _111)) + (997 * mem[(32 * idx) + 128])
                else:
                    if 997 * mem[(32 * idx) + 128] and Mask(112, 0, _113) > -1 / 997 * mem[(32 * idx) + 128]:
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _113):
                        revert with 'NH{q', 18
                    if 997 * mem[(32 * idx) + 128] * Mask(112, 0, _113) / Mask(112, 0, _113) != 997 * mem[(32 * idx) + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if Mask(112, 0, _111) and 1000 > -1 / Mask(112, 0, _111):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, _111) / 1000 != Mask(112, 0, _111):
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, _111) > (-997 * mem[(32 * idx) + 128]) - 1:
                        revert with 'NH{q', 17
                    if (1000 * Mask(112, 0, _111)) + (997 * mem[(32 * idx) + 128]) < 1000 * Mask(112, 0, _111):
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * Mask(112, 0, _111)) + (997 * mem[(32 * idx) + 128]):
                        revert with 'NH{q', 18
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + 128] = 997 * mem[(32 * idx) + 128] * Mask(112, 0, _113) / (1000 * Mask(112, 0, _111)) + (997 * mem[(32 * idx) + 128])
            else:
                if not Mask(112, 0, _111):
                    if Mask(112, 0, _113) and 1000 > -1 / Mask(112, 0, _113):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, _113) / 1000 != Mask(112, 0, _113):
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, _113) > (-997 * mem[(32 * idx) + 128]) - 1:
                        revert with 'NH{q', 17
                    if (1000 * Mask(112, 0, _113)) + (997 * mem[(32 * idx) + 128]) < 1000 * Mask(112, 0, _113):
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * Mask(112, 0, _113)) + (997 * mem[(32 * idx) + 128]):
                        revert with 'NH{q', 18
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + 128] = 0 / (1000 * Mask(112, 0, _113)) + (997 * mem[(32 * idx) + 128])
                else:
                    if 997 * mem[(32 * idx) + 128] and Mask(112, 0, _111) > -1 / 997 * mem[(32 * idx) + 128]:
                        revert with 'NH{q', 17
                    if not Mask(112, 0, _111):
                        revert with 'NH{q', 18
                    if 997 * mem[(32 * idx) + 128] * Mask(112, 0, _111) / Mask(112, 0, _111) != 997 * mem[(32 * idx) + 128]:
                        revert with 0, 'ds-math-mul-overflow'
                    if Mask(112, 0, _113) and 1000 > -1 / Mask(112, 0, _113):
                        revert with 'NH{q', 17
                    if 1000 * Mask(112, 0, _113) / 1000 != Mask(112, 0, _113):
                        revert with 0, 'ds-math-mul-overflow'
                    if 1000 * Mask(112, 0, _113) > (-997 * mem[(32 * idx) + 128]) - 1:
                        revert with 'NH{q', 17
                    if (1000 * Mask(112, 0, _113)) + (997 * mem[(32 * idx) + 128]) < 1000 * Mask(112, 0, _113):
                        revert with 0, 'ds-math-add-overflow'
                    if not (1000 * Mask(112, 0, _113)) + (997 * mem[(32 * idx) + 128]):
                        revert with 'NH{q', 18
                    if idx > -2:
                        revert with 'NH{q', 17
                    if idx + 1 >= mem[96]:
                        revert with 'NH{q', 50
                    mem[(32 * idx + 1) + 128] = 997 * mem[(32 * idx) + 128] * Mask(112, 0, _111) / (1000 * Mask(112, 0, _113)) + (997 * mem[(32 * idx) + 128])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}



}
