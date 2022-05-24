contract main {




// =====================  Runtime code  =====================


#
#  - sub_4dff693c(?)
#  - sub_5789f48a(?)
#  - sub_6d82ffd4(?)
#  - sub_e479f8b7(?)
#
const sub_e66217e9(?) = 0x9ad6c38be94206ca50bb0d90783181662f0cfa10

const USDC = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function recoverEth() {
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function recoverToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
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
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require 1 == bool(ext_call.return_data[0])
}

function sub_4e7d0580(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    if not ('cd', 36).length:
        if ('cd', 68).length > test266151307():
            revert with 0, 65
        mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
        mem[64] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160
        if not ('cd', 68).length:
            idx = 0
            while idx < ('cd', 36).length:
                mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).0x587f2ff2 with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[36] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _304 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _311 = mem[_304]
                require mem[_304] == mem[_304 + 12 len 20]
                mem[mem[64] + 4] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                mem[mem[64] + 36] = address(_311)
                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.0xe6a43905 with:
                        gas gas_remaining wei
                       args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, address(_311)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _352 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _364 = mem[_352]
                require mem[_352] == mem[_352 + 12 len 20]
                require ext_code.size(mem[_352 + 12 len 20])
                staticcall mem[_352 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _398 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _411 = mem[_398]
                require mem[_398] == mem[_398 + 18 len 14]
                _423 = mem[_398 + 32]
                require mem[_398 + 32] == mem[_398 + 50 len 14]
                require mem[_398 + 64] == mem[_398 + 92 len 4]
                require ext_code.size(address(_364))
                staticcall address(_364).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _445 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_445] == mem[_445 + 12 len 20]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + 128]] = address(_364)
                if idx >= mem[96]:
                    revert with 0, 50
                if mem[_445 + 12 len 20] == address(_311):
                    mem[mem[(32 * idx) + 128] + 64] = Mask(112, 0, _423)
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * idx) + 128] + 32] = Mask(112, 0, _411)
                else:
                    mem[mem[(32 * idx) + 128] + 64] = Mask(112, 0, _411)
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[mem[(32 * idx) + 128] + 32] = Mask(112, 0, _423)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < ('cd', 68).length:
                mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
                require ext_code.size(address(cd[4]))
                staticcall address(cd[4]).0xdd903558 with:
                        gas gas_remaining wei
                       args cd[((32 * idx) + cd[68] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _598 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _602 = mem[_598]
                require mem[_598] == mem[_598 + 12 len 20]
                mem[mem[64] + 4] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
                mem[mem[64] + 36] = address(_602)
                require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.0xe6a43905 with:
                        gas gas_remaining wei
                       args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, address(_602)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _641 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _652 = mem[_641]
                require mem[_641] == mem[_641 + 12 len 20]
                require ext_code.size(mem[_641 + 12 len 20])
                staticcall mem[_641 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _685 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _695 = mem[_685]
                require mem[_685] == mem[_685 + 18 len 14]
                _705 = mem[_685 + 32]
                require mem[_685 + 32] == mem[_685 + 50 len 14]
                require mem[_685 + 64] == mem[_685 + 92 len 4]
                require ext_code.size(address(_652))
                staticcall address(_652).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _725 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_725] == mem[_725 + 12 len 20]
                if idx >= mem[(32 * ('cd', 36).length) + 128]:
                    revert with 0, 50
                mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160]] = address(_652)
                if idx >= mem[(32 * ('cd', 36).length) + 128]:
                    revert with 0, 50
                if mem[_725 + 12 len 20] == address(_602):
                    mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160] + 64] = Mask(112, 0, _705)
                    if idx >= mem[(32 * ('cd', 36).length) + 128]:
                        revert with 0, 50
                    mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160] + 32] = Mask(112, 0, _695)
                else:
                    mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160] + 64] = Mask(112, 0, _695)
                    if idx >= mem[(32 * ('cd', 36).length) + 128]:
                        revert with 0, 50
                    mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160] + 32] = Mask(112, 0, _705)
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _589 = mem[64]
            mem[mem[64]] = 64
            _591 = mem[96]
            mem[mem[64] + 64] = mem[96]
            idx = 0
            s = 128
            t = mem[64] + 96
            while idx < _591:
                _849 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_849 + 32]
                mem[t + 64] = mem[_849 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            mem[_589 + 32] = (96 * _591) + 96
            _856 = mem[(32 * ('cd', 36).length) + 128]
            mem[_589 + (96 * _591) + 96] = mem[(32 * ('cd', 36).length) + 128]
            idx = 0
            s = (32 * ('cd', 36).length) + 160
            t = _589 + (96 * _591) + 128
            while idx < _856:
                _1077 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_1077 + 32]
                mem[t + 64] = mem[_1077 + 64]
                idx = idx + 1
                s = s + 32
                t = t + 96
                continue 
            return memory
              from mem[64]
               len _589 + (96 * _591) + (96 * _856) + -mem[64] + 128
        mem[64] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256
        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160] = 0
        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0
        mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = 0
        mem[var29001] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160
        s = var29001
        idx = var29002
        while idx - 1:
            mem[64] = mem[64] + 96
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160] = 0
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = 0
            mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 224] = 0
            mem[s + 32] = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 36).length:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0x587f2ff2 with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[36] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _869 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _880 = mem[_869]
            require mem[_869] == mem[_869 + 12 len 20]
            mem[mem[64] + 4] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
            mem[mem[64] + 36] = address(_880)
            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.0xe6a43905 with:
                    gas gas_remaining wei
                   args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, address(_880)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _922 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _931 = mem[_922]
            require mem[_922] == mem[_922 + 12 len 20]
            require ext_code.size(mem[_922 + 12 len 20])
            staticcall mem[_922 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _949 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _956 = mem[_949]
            require mem[_949] == mem[_949 + 18 len 14]
            _965 = mem[_949 + 32]
            require mem[_949 + 32] == mem[_949 + 50 len 14]
            require mem[_949 + 64] == mem[_949 + 92 len 4]
            require ext_code.size(address(_931))
            staticcall address(_931).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _983 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_983] == mem[_983 + 12 len 20]
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * idx) + 128]] = address(_931)
            if idx >= mem[96]:
                revert with 0, 50
            if mem[_983 + 12 len 20] == address(_880):
                mem[mem[(32 * idx) + 128] + 64] = Mask(112, 0, _965)
                if idx >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + 128] + 32] = Mask(112, 0, _956)
            else:
                mem[mem[(32 * idx) + 128] + 64] = Mask(112, 0, _956)
                if idx >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + 128] + 32] = Mask(112, 0, _965)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < ('cd', 68).length:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0xdd903558 with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[68] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1094 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1102 = mem[_1094]
            require mem[_1094] == mem[_1094 + 12 len 20]
            mem[mem[64] + 4] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
            mem[mem[64] + 36] = address(_1102)
            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.0xe6a43905 with:
                    gas gas_remaining wei
                   args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, address(_1102)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1133 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1140 = mem[_1133]
            require mem[_1133] == mem[_1133 + 12 len 20]
            require ext_code.size(mem[_1133 + 12 len 20])
            staticcall mem[_1133 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1153 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1158 = mem[_1153]
            require mem[_1153] == mem[_1153 + 18 len 14]
            _1163 = mem[_1153 + 32]
            require mem[_1153 + 32] == mem[_1153 + 50 len 14]
            require mem[_1153 + 64] == mem[_1153 + 92 len 4]
            require ext_code.size(address(_1140))
            staticcall address(_1140).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1175 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1175] == mem[_1175 + 12 len 20]
            if idx >= mem[(32 * ('cd', 36).length) + 128]:
                revert with 0, 50
            mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160]] = address(_1140)
            if idx >= mem[(32 * ('cd', 36).length) + 128]:
                revert with 0, 50
            if mem[_1175 + 12 len 20] == address(_1102):
                mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160] + 64] = Mask(112, 0, _1163)
                if idx >= mem[(32 * ('cd', 36).length) + 128]:
                    revert with 0, 50
                mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160] + 32] = Mask(112, 0, _1158)
            else:
                mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160] + 64] = Mask(112, 0, _1158)
                if idx >= mem[(32 * ('cd', 36).length) + 128]:
                    revert with 0, 50
                mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160] + 32] = Mask(112, 0, _1163)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1081 = mem[64]
        mem[mem[64]] = 64
        _1086 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < _1086:
            _1238 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1238 + 32]
            mem[t + 64] = mem[_1238 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        mem[_1081 + 32] = (96 * _1086) + 96
        _1247 = mem[(32 * ('cd', 36).length) + 128]
        mem[_1081 + (96 * _1086) + 96] = mem[(32 * ('cd', 36).length) + 128]
        idx = 0
        s = (32 * ('cd', 36).length) + 160
        t = _1081 + (96 * _1086) + 128
        while idx < _1247:
            _1330 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1330 + 32]
            mem[t + 64] = mem[_1330 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _1081 + (96 * _1086) + (96 * _1247) + -mem[64] + 128
    mem[64] = (32 * ('cd', 36).length) + 224
    mem[(32 * ('cd', 36).length) + 128] = 0
    mem[(32 * ('cd', 36).length) + 160] = 0
    mem[(32 * ('cd', 36).length) + 192] = 0
    mem[var27001] = (32 * ('cd', 36).length) + 128
    s = var27001
    idx = var27002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(32 * ('cd', 36).length) + 128] = 0
        mem[(32 * ('cd', 36).length) + 160] = 0
        mem[(32 * ('cd', 36).length) + 192] = 0
        mem[s + 32] = (32 * ('cd', 36).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    _593 = mem[64]
    mem[mem[64]] = ('cd', 68).length
    mem[64] = mem[64] + (32 * ('cd', 68).length) + 32
    if not ('cd', 68).length:
        idx = 0
        while idx < ('cd', 36).length:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0x587f2ff2 with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[36] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _872 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _886 = mem[_872]
            require mem[_872] == mem[_872 + 12 len 20]
            mem[mem[64] + 4] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
            mem[mem[64] + 36] = address(_886)
            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.0xe6a43905 with:
                    gas gas_remaining wei
                   args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, address(_886)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _924 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _933 = mem[_924]
            require mem[_924] == mem[_924 + 12 len 20]
            require ext_code.size(mem[_924 + 12 len 20])
            staticcall mem[_924 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _952 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _957 = mem[_952]
            require mem[_952] == mem[_952 + 18 len 14]
            _966 = mem[_952 + 32]
            require mem[_952 + 32] == mem[_952 + 50 len 14]
            require mem[_952 + 64] == mem[_952 + 92 len 4]
            require ext_code.size(address(_933))
            staticcall address(_933).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _986 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_986] == mem[_986 + 12 len 20]
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * idx) + 128]] = address(_933)
            if idx >= mem[96]:
                revert with 0, 50
            if mem[_986 + 12 len 20] == address(_886):
                mem[mem[(32 * idx) + 128] + 64] = Mask(112, 0, _966)
                if idx >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + 128] + 32] = Mask(112, 0, _957)
            else:
                mem[mem[(32 * idx) + 128] + 64] = Mask(112, 0, _957)
                if idx >= mem[96]:
                    revert with 0, 50
                mem[mem[(32 * idx) + 128] + 32] = Mask(112, 0, _966)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < ('cd', 68).length:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0xdd903558 with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[68] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1099 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1104 = mem[_1099]
            require mem[_1099] == mem[_1099 + 12 len 20]
            mem[mem[64] + 4] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
            mem[mem[64] + 36] = address(_1104)
            require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.0xe6a43905 with:
                    gas gas_remaining wei
                   args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, address(_1104)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1134 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1141 = mem[_1134]
            require mem[_1134] == mem[_1134 + 12 len 20]
            require ext_code.size(mem[_1134 + 12 len 20])
            staticcall mem[_1134 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1154 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1159 = mem[_1154]
            require mem[_1154] == mem[_1154 + 18 len 14]
            _1164 = mem[_1154 + 32]
            require mem[_1154 + 32] == mem[_1154 + 50 len 14]
            require mem[_1154 + 64] == mem[_1154 + 92 len 4]
            require ext_code.size(address(_1141))
            staticcall address(_1141).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1176 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1176] == mem[_1176 + 12 len 20]
            if idx >= mem[_593]:
                revert with 0, 50
            mem[mem[(32 * idx) + _593 + 32]] = address(_1141)
            if idx >= mem[_593]:
                revert with 0, 50
            if mem[_1176 + 12 len 20] == address(_1104):
                mem[mem[(32 * idx) + _593 + 32] + 64] = Mask(112, 0, _1164)
                if idx >= mem[_593]:
                    revert with 0, 50
                mem[mem[(32 * idx) + _593 + 32] + 32] = Mask(112, 0, _1159)
            else:
                mem[mem[(32 * idx) + _593 + 32] + 64] = Mask(112, 0, _1159)
                if idx >= mem[_593]:
                    revert with 0, 50
                mem[mem[(32 * idx) + _593 + 32] + 32] = Mask(112, 0, _1164)
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _1083 = mem[64]
        mem[mem[64]] = 64
        _1088 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 96
        while idx < _1088:
            _1242 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1242 + 32]
            mem[t + 64] = mem[_1242 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        mem[_1083 + 32] = (96 * _1088) + 96
        _1248 = mem[_593]
        mem[_1083 + (96 * _1088) + 96] = mem[_593]
        idx = 0
        s = _593 + 32
        t = _1083 + (96 * _1088) + 128
        while idx < _1248:
            _1334 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_1334 + 32]
            mem[t + 64] = mem[_1334 + 64]
            idx = idx + 1
            s = s + 32
            t = t + 96
            continue 
        return memory
          from mem[64]
           len _1083 + (96 * _1088) + (96 * _1248) + -mem[64] + 128
    mem[64] = _593 + (32 * ('cd', 68).length) + 128
    mem[_593 + (32 * ('cd', 68).length) + 32] = 0
    mem[_593 + (32 * ('cd', 68).length) + 64] = 0
    mem[_593 + (32 * ('cd', 68).length) + 96] = 0
    mem[var36001] = _593 + (32 * ('cd', 68).length) + 32
    s = var36001
    idx = var36002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[_593 + (32 * ('cd', 68).length) + 32] = 0
        mem[_593 + (32 * ('cd', 68).length) + 64] = 0
        mem[_593 + (32 * ('cd', 68).length) + 96] = 0
        mem[s + 32] = _593 + (32 * ('cd', 68).length) + 32
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 36).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[36] + 36)]
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).0x587f2ff2 with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[36] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1262 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1270 = mem[_1262]
        require mem[_1262] == mem[_1262 + 12 len 20]
        mem[mem[64] + 4] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
        mem[mem[64] + 36] = address(_1270)
        require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
        staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.0xe6a43905 with:
                gas gas_remaining wei
               args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, address(_1270)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1282 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1284 = mem[_1282]
        require mem[_1282] == mem[_1282 + 12 len 20]
        require ext_code.size(mem[_1282 + 12 len 20])
        staticcall mem[_1282 + 12 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1290 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _1292 = mem[_1290]
        require mem[_1290] == mem[_1290 + 18 len 14]
        _1294 = mem[_1290 + 32]
        require mem[_1290 + 32] == mem[_1290 + 50 len 14]
        require mem[_1290 + 64] == mem[_1290 + 92 len 4]
        require ext_code.size(address(_1284))
        staticcall address(_1284).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1302 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1302] == mem[_1302 + 12 len 20]
        if idx >= mem[96]:
            revert with 0, 50
        mem[mem[(32 * idx) + 128]] = address(_1284)
        if idx >= mem[96]:
            revert with 0, 50
        if mem[_1302 + 12 len 20] == address(_1270):
            mem[mem[(32 * idx) + 128] + 64] = Mask(112, 0, _1294)
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * idx) + 128] + 32] = Mask(112, 0, _1292)
        else:
            mem[mem[(32 * idx) + 128] + 64] = Mask(112, 0, _1292)
            if idx >= mem[96]:
                revert with 0, 50
            mem[mem[(32 * idx) + 128] + 32] = Mask(112, 0, _1294)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 68).length:
        mem[mem[64] + 4] = cd[((32 * idx) + cd[68] + 36)]
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).0xdd903558 with:
                gas gas_remaining wei
               args cd[((32 * idx) + cd[68] + 36)]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1348 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1350 = mem[_1348]
        require mem[_1348] == mem[_1348 + 12 len 20]
        mem[mem[64] + 4] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
        mem[mem[64] + 36] = address(_1350)
        require ext_code.size(0x9ad6c38be94206ca50bb0d90783181662f0cfa10)
        staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.0xe6a43905 with:
                gas gas_remaining wei
               args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, address(_1350)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1358 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1359 = mem[_1358]
        require mem[_1358] == mem[_1358 + 12 len 20]
        require ext_code.size(mem[_1358 + 12 len 20])
        staticcall mem[_1358 + 12 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1362 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _1363 = mem[_1362]
        require mem[_1362] == mem[_1362 + 18 len 14]
        _1364 = mem[_1362 + 32]
        require mem[_1362 + 32] == mem[_1362 + 50 len 14]
        require mem[_1362 + 64] == mem[_1362 + 92 len 4]
        require ext_code.size(address(_1359))
        staticcall address(_1359).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1368 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1368] == mem[_1368 + 12 len 20]
        if idx >= mem[_593]:
            revert with 0, 50
        mem[mem[(32 * idx) + _593 + 32]] = address(_1359)
        if idx >= mem[_593]:
            revert with 0, 50
        if mem[_1368 + 12 len 20] == address(_1350):
            mem[mem[(32 * idx) + _593 + 32] + 64] = Mask(112, 0, _1364)
            if idx >= mem[_593]:
                revert with 0, 50
            mem[mem[(32 * idx) + _593 + 32] + 32] = Mask(112, 0, _1363)
        else:
            mem[mem[(32 * idx) + _593 + 32] + 64] = Mask(112, 0, _1363)
            if idx >= mem[_593]:
                revert with 0, 50
            mem[mem[(32 * idx) + _593 + 32] + 32] = Mask(112, 0, _1364)
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _1338 = mem[64]
    mem[mem[64]] = 64
    _1342 = mem[96]
    mem[mem[64] + 64] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 96
    while idx < _1342:
        _1382 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_1382 + 32]
        mem[t + 64] = mem[_1382 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    mem[_1338 + 32] = (96 * _1342) + 96
    _1386 = mem[_593]
    mem[_1338 + (96 * _1342) + 96] = mem[_593]
    idx = 0
    s = _593 + 32
    t = _1338 + (96 * _1342) + 128
    while idx < _1386:
        _1392 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_1392 + 32]
        mem[t + 64] = mem[_1392 + 64]
        idx = idx + 1
        s = s + 32
        t = t + 96
        continue 
    return memory
      from mem[64]
       len _1338 + (96 * _1342) + (96 * _1386) + -mem[64] + 128
}

function joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        revert with 0, '!this'
    require arg4.length >= 96
    require cd[(arg4 + 68)] <= test266151307()
    require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 68)] + 36)] > test266151307():
        revert with 0, 65
    if floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97 < 96 or floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = floor32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 97
    mem[96] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + 68)] + (160 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68
    s = arg4 + cd[(arg4 + 68)] + 68
    t = 128
    idx = 0
    while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
        require arg4 + arg4.length + -s + 36 >= 160
        _445 = mem[64]
        if mem[64] + 160 < mem[64] or mem[64] + 160 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + 160
        require cd[s] == address(cd[s])
        mem[_445] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_445 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == address(cd[(s + 64)])
        mem[_445 + 64] = cd[(s + 64)]
        mem[_445 + 96] = cd[(s + 96)]
        mem[_445 + 128] = cd[(s + 128)]
        mem[t] = _445
        s = s + 160
        t = t + 32
        idx = idx + 1
        continue 
    require cd[(arg4 + 100)] <= test266151307()
    require arg4 + cd[(arg4 + 100)] + 67 < arg4 + arg4.length + 36
    if cd[(arg4 + cd[(arg4 + 100)] + 36)] > test266151307():
        revert with 0, 65
    _446 = mem[64]
    if mem[64] + ceil32(ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)])) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(ceil32(cd[(arg4 + cd[(arg4 + 100)] + 36)])) + 1
    mem[_446] = cd[(arg4 + cd[(arg4 + 100)] + 36)]
    require cd[(arg4 + 100)] + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 68 <= arg4.length + 36
    mem[_446 + 32 len cd[(arg4 + cd[(arg4 + 100)] + 36)]] = call.data[arg4 + cd[(arg4 + 100)] + 68 len cd[(arg4 + cd[(arg4 + 100)] + 36)]]
    mem[_446 + cd[(arg4 + cd[(arg4 + 100)] + 36)] + 32] = 0
    if mem[96] < 1:
        revert with 0, 17
    if cd[(arg4 + 36)] >= mem[96] - 1:
        require cd[(arg4 + cd[(arg4 + 100)] + 36)] >= 160
        _449 = mem[_446 + 32]
        require mem[_446 + 32] == mem[_446 + 44 len 20]
        _455 = mem[_446 + 64]
        _456 = mem[_446 + 96]
        _457 = mem[_446 + 128]
        _458 = mem[_446 + 160]
        require mem[_446 + 160] == bool(mem[_446 + 160])
        _886 = mem[96]
        idx = 0
        while idx < _886:
            if idx >= mem[96]:
                revert with 0, 50
            _963 = mem[mem[(32 * idx) + 128] + 32]
            _976 = mem[64]
            mem[mem[64] + 36] = address(_449)
            mem[mem[64] + 68] = -1
            _979 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_979 + 32] = mem[_979 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
            _994 = mem[_979]
            s = 0
            while s < _994:
                mem[s + _976 + 100] = mem[s + _979 + 32]
                _886 = mem[96]
                s = s + 32
                continue 
            if ceil32(_994) <= _994:
                call address(_963).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _994 + _976 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: APPROVE_FAILED'
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'TransferHelper: APPROVE_FAILED'
                else:
                    _1271 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1271] = return_data.size
                    mem[_1271 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: APPROVE_FAILED'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_1271 + 32] == bool(mem[_1271 + 32])
                        if not mem[_1271 + 32]:
                            revert with 0, 'TransferHelper: APPROVE_FAILED'
            else:
                mem[_994 + _976 + 100] = 0
                call address(_963).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _994 + _976 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: APPROVE_FAILED'
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'TransferHelper: APPROVE_FAILED'
                else:
                    _1272 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1272] = return_data.size
                    mem[_1272 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: APPROVE_FAILED'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_1272 + 32] == bool(mem[_1272 + 32])
                        if not mem[_1272 + 32]:
                            revert with 0, 'TransferHelper: APPROVE_FAILED'
            if idx == -1:
                revert with 0, 17
            _886 = mem[96]
            idx = idx + 1
            continue 
        if not _458:
            mem[mem[64]] = 0x5a1002800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _457
            mem[mem[64] + 36] = _455
            mem[mem[64] + 68] = _456
            require ext_code.size(address(_449))
            call address(_449).burn(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args _457, _455, _456
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1236 = mem[96]
            idx = 0
            while idx < _1236:
                if idx >= mem[96]:
                    revert with 0, 50
                _1254 = mem[mem[(32 * idx) + 128] + 64]
                _1256 = mem[mem[(32 * idx) + 128] + 128]
                _1261 = mem[64]
                mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                mem[mem[64] + 68] = _1256
                _1265 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1265 + 32] = mem[_1265 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                _1297 = mem[_1265]
                s = 0
                while s < _1297:
                    mem[s + _1261 + 100] = mem[s + _1265 + 32]
                    _1236 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_1297) <= _1297:
                    call address(_1254).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1297 + _1261 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        _1519 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1519] = return_data.size
                        mem[_1519 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_1519 + 32] == bool(mem[_1519 + 32])
                            if not mem[_1519 + 32]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                else:
                    mem[_1297 + _1261 + 100] = 0
                    call address(_1254).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1297 + _1261 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        _1520 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1520] = return_data.size
                        mem[_1520 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_1520 + 32] == bool(mem[_1520 + 32])
                            if not mem[_1520 + 32]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if idx == -1:
                    revert with 0, 17
                _1236 = mem[96]
                idx = idx + 1
                continue 
        else:
            mem[mem[64]] = 0x2acc94b00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _457
            mem[mem[64] + 36] = _455
            mem[mem[64] + 68] = _456
            require ext_code.size(address(_449))
            call address(_449).mint(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args _457, _455, _456
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1237 = mem[96]
            idx = 0
            while idx < _1237:
                if idx >= mem[96]:
                    revert with 0, 50
                _1258 = mem[mem[(32 * idx) + 128] + 64]
                _1260 = mem[mem[(32 * idx) + 128] + 128]
                _1262 = mem[64]
                mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                mem[mem[64] + 68] = _1260
                _1268 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1268 + 32] = mem[_1268 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                _1298 = mem[_1268]
                s = 0
                while s < _1298:
                    mem[s + _1262 + 100] = mem[s + _1268 + 32]
                    _1237 = mem[96]
                    s = s + 32
                    continue 
                if ceil32(_1298) <= _1298:
                    call address(_1258).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1298 + _1262 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        _1521 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1521] = return_data.size
                        mem[_1521 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_1521 + 32] == bool(mem[_1521 + 32])
                            if not mem[_1521 + 32]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                else:
                    mem[_1298 + _1262 + 100] = 0
                    call address(_1258).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1298 + _1262 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        _1522 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1522] = return_data.size
                        mem[_1522 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_1522 + 32] == bool(mem[_1522 + 32])
                            if not mem[_1522 + 32]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                if idx == -1:
                    revert with 0, 17
                _1237 = mem[96]
                idx = idx + 1
                continue 
    else:
        if 1 > !cd[(arg4 + 36)]:
            revert with 0, 17
        if cd[(arg4 + 36)] + 1 >= mem[96]:
            revert with 0, 50
        _451 = mem[(32 * cd[(arg4 + 36)] + 1) + 128]
        _452 = mem[mem[(32 * cd[(arg4 + 36)] + 1) + 128]]
        require ext_code.size(mem[mem[(32 * cd[(arg4 + 36)] + 1) + 128] + 12 len 20])
        staticcall mem[mem[(32 * cd[(arg4 + 36)] + 1) + 128] + 12 len 20].token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _459 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _460 = mem[_459]
        require mem[_459] == mem[_459 + 12 len 20]
        _467 = mem[_451 + 32]
        require ext_code.size(address(_452))
        staticcall address(_452).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _473 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_473] == mem[_473 + 18 len 14]
        require mem[_473 + 32] == mem[_473 + 50 len 14]
        require mem[_473 + 64] == mem[_473 + 92 len 4]
        if address(_467) == address(_460):
            if mem[_451 + 128] != 0:
                if mem[_451 + 96]:
                    if address(_467) == address(_460):
                        _538 = mem[_451 + 96]
                        _544 = mem[64]
                        mem[mem[64] + 32] = cd[(arg4 + 36)] + 1
                        mem[mem[64] + 64] = 96
                        _554 = mem[96]
                        mem[mem[64] + 128] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 160
                        while idx < _554:
                            _888 = mem[s]
                            mem[t] = mem[mem[s] + 12 len 20]
                            mem[t + 32] = mem[_888 + 44 len 20]
                            mem[t + 64] = mem[_888 + 76 len 20]
                            mem[t + 96] = mem[_888 + 96]
                            mem[t + 128] = mem[_888 + 128]
                            idx = idx + 1
                            s = s + 32
                            t = t + 160
                            continue 
                        mem[_544 + 96] = (160 * _554) + 128
                        _964 = mem[_446]
                        mem[_544 + (160 * _554) + 160] = mem[_446]
                        mem[_544 + (160 * _554) + 192 len ceil32(_964)] = mem[_446 + 32 len ceil32(_964)]
                        if ceil32(_964) <= _964:
                            _1273 = mem[64]
                            mem[mem[64]] = ceil32(_964) + _544 + (160 * _554) + -mem[64] + 160
                            mem[64] = ceil32(_964) + _544 + (160 * _554) + 192
                            mem[ceil32(_964) + _544 + (160 * _554) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(_964) + _544 + (160 * _554) + 196] = _538
                            mem[ceil32(_964) + _544 + (160 * _554) + 228] = 0
                            mem[ceil32(_964) + _544 + (160 * _554) + 260] = this.address
                            mem[ceil32(_964) + _544 + (160 * _554) + 292] = 128
                            _1303 = mem[_1273]
                            mem[ceil32(_964) + _544 + (160 * _554) + 324] = mem[_1273]
                            mem[ceil32(_964) + _544 + (160 * _554) + 356 len ceil32(_1303)] = mem[_1273 + 32 len ceil32(_1303)]
                            if ceil32(_1303) > _1303:
                                mem[_1303 + ceil32(_964) + _544 + (160 * _554) + 356] = 0
                            require ext_code.size(address(_452))
                            call address(_452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _538, 0, address(this.address), 128, mem[ceil32(_964) + _544 + (160 * _554) + 324 len ceil32(_1303) + 32]
                        else:
                            mem[_964 + _544 + (160 * _554) + 192] = 0
                            _1274 = mem[64]
                            mem[mem[64]] = ceil32(_964) + _544 + (160 * _554) + -mem[64] + 160
                            mem[64] = ceil32(_964) + _544 + (160 * _554) + 192
                            mem[ceil32(_964) + _544 + (160 * _554) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(_964) + _544 + (160 * _554) + 196] = _538
                            mem[ceil32(_964) + _544 + (160 * _554) + 228] = 0
                            mem[ceil32(_964) + _544 + (160 * _554) + 260] = this.address
                            mem[ceil32(_964) + _544 + (160 * _554) + 292] = 128
                            _1304 = mem[_1274]
                            mem[ceil32(_964) + _544 + (160 * _554) + 324] = mem[_1274]
                            mem[ceil32(_964) + _544 + (160 * _554) + 356 len ceil32(_1304)] = mem[_1274 + 32 len ceil32(_1304)]
                            if ceil32(_1304) > _1304:
                                mem[_1304 + ceil32(_964) + _544 + (160 * _554) + 356] = 0
                            require ext_code.size(address(_452))
                            call address(_452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _538, 0, address(this.address), 128, mem[ceil32(_964) + _544 + (160 * _554) + 324 len ceil32(_1304) + 32]
                    else:
                        _539 = mem[_451 + 96]
                        _545 = mem[64]
                        mem[mem[64] + 32] = cd[(arg4 + 36)] + 1
                        mem[mem[64] + 64] = 96
                        _555 = mem[96]
                        mem[mem[64] + 128] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 160
                        while idx < _555:
                            _894 = mem[s]
                            mem[t] = mem[mem[s] + 12 len 20]
                            mem[t + 32] = mem[_894 + 44 len 20]
                            mem[t + 64] = mem[_894 + 76 len 20]
                            mem[t + 96] = mem[_894 + 96]
                            mem[t + 128] = mem[_894 + 128]
                            idx = idx + 1
                            s = s + 32
                            t = t + 160
                            continue 
                        mem[_545 + 96] = (160 * _555) + 128
                        _965 = mem[_446]
                        mem[_545 + (160 * _555) + 160] = mem[_446]
                        mem[_545 + (160 * _555) + 192 len ceil32(_965)] = mem[_446 + 32 len ceil32(_965)]
                        if ceil32(_965) <= _965:
                            _1275 = mem[64]
                            mem[mem[64]] = ceil32(_965) + _545 + (160 * _555) + -mem[64] + 160
                            mem[64] = ceil32(_965) + _545 + (160 * _555) + 192
                            mem[ceil32(_965) + _545 + (160 * _555) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(_965) + _545 + (160 * _555) + 196] = 0
                            mem[ceil32(_965) + _545 + (160 * _555) + 228] = _539
                            mem[ceil32(_965) + _545 + (160 * _555) + 260] = this.address
                            mem[ceil32(_965) + _545 + (160 * _555) + 292] = 128
                            _1305 = mem[_1275]
                            mem[ceil32(_965) + _545 + (160 * _555) + 324] = mem[_1275]
                            mem[ceil32(_965) + _545 + (160 * _555) + 356 len ceil32(_1305)] = mem[_1275 + 32 len ceil32(_1305)]
                            if ceil32(_1305) > _1305:
                                mem[_1305 + ceil32(_965) + _545 + (160 * _555) + 356] = 0
                            require ext_code.size(address(_452))
                            call address(_452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _539, address(this.address), 128, mem[ceil32(_965) + _545 + (160 * _555) + 324 len ceil32(_1305) + 32]
                        else:
                            mem[_965 + _545 + (160 * _555) + 192] = 0
                            _1276 = mem[64]
                            mem[mem[64]] = ceil32(_965) + _545 + (160 * _555) + -mem[64] + 160
                            mem[64] = ceil32(_965) + _545 + (160 * _555) + 192
                            mem[ceil32(_965) + _545 + (160 * _555) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(_965) + _545 + (160 * _555) + 196] = 0
                            mem[ceil32(_965) + _545 + (160 * _555) + 228] = _539
                            mem[ceil32(_965) + _545 + (160 * _555) + 260] = this.address
                            mem[ceil32(_965) + _545 + (160 * _555) + 292] = 128
                            _1306 = mem[_1276]
                            mem[ceil32(_965) + _545 + (160 * _555) + 324] = mem[_1276]
                            mem[ceil32(_965) + _545 + (160 * _555) + 356 len ceil32(_1306)] = mem[_1276 + 32 len ceil32(_1306)]
                            if ceil32(_1306) > _1306:
                                mem[_1306 + ceil32(_965) + _545 + (160 * _555) + 356] = 0
                            require ext_code.size(address(_452))
                            call address(_452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _539, address(this.address), 128, mem[ceil32(_965) + _545 + (160 * _555) + 324 len ceil32(_1306) + 32]
                else:
                    if mem[_451 + 128] <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_INPUT_AMOUNT'
                    if mem[_473 + 50 len 14] <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                    if mem[_473 + 18 len 14] <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                    if mem[_451 + 128] and 997 > -1 / mem[_451 + 128]:
                        revert with 0, 17
                    if 997 * mem[_451 + 128] and mem[_473 + 18 len 14] > -1 / 997 * mem[_451 + 128]:
                        revert with 0, 17
                    if mem[_473 + 50 len 14] and 1000 > -1 / mem[_473 + 50 len 14]:
                        revert with 0, 17
                    if 1000 * mem[_473 + 50 len 14] > !(997 * mem[_451 + 128]):
                        revert with 0, 17
                    if not (1000 * mem[_473 + 50 len 14]) + (997 * mem[_451 + 128]):
                        revert with 0, 18
                    mem[_451 + 96] = 997 * mem[_451 + 128] * mem[_473 + 18 len 14] / (1000 * mem[_473 + 50 len 14]) + (997 * mem[_451 + 128])
                    if address(_467) == address(_460):
                        _718 = mem[_451 + 96]
                        _722 = mem[64]
                        mem[mem[64] + 32] = cd[(arg4 + 36)] + 1
                        mem[mem[64] + 64] = 96
                        _726 = mem[96]
                        mem[mem[64] + 128] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 160
                        while idx < _726:
                            _900 = mem[s]
                            mem[t] = mem[mem[s] + 12 len 20]
                            mem[t + 32] = mem[_900 + 44 len 20]
                            mem[t + 64] = mem[_900 + 76 len 20]
                            mem[t + 96] = mem[_900 + 96]
                            mem[t + 128] = mem[_900 + 128]
                            idx = idx + 1
                            s = s + 32
                            t = t + 160
                            continue 
                        mem[_722 + 96] = (160 * _726) + 128
                        _966 = mem[_446]
                        mem[_722 + (160 * _726) + 160] = mem[_446]
                        mem[_722 + (160 * _726) + 192 len ceil32(_966)] = mem[_446 + 32 len ceil32(_966)]
                        if ceil32(_966) <= _966:
                            _1277 = mem[64]
                            mem[mem[64]] = ceil32(_966) + _722 + (160 * _726) + -mem[64] + 160
                            mem[64] = ceil32(_966) + _722 + (160 * _726) + 192
                            mem[ceil32(_966) + _722 + (160 * _726) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(_966) + _722 + (160 * _726) + 196] = _718
                            mem[ceil32(_966) + _722 + (160 * _726) + 228] = 0
                            mem[ceil32(_966) + _722 + (160 * _726) + 260] = this.address
                            mem[ceil32(_966) + _722 + (160 * _726) + 292] = 128
                            _1307 = mem[_1277]
                            mem[ceil32(_966) + _722 + (160 * _726) + 324] = mem[_1277]
                            mem[ceil32(_966) + _722 + (160 * _726) + 356 len ceil32(_1307)] = mem[_1277 + 32 len ceil32(_1307)]
                            if ceil32(_1307) > _1307:
                                mem[_1307 + ceil32(_966) + _722 + (160 * _726) + 356] = 0
                            require ext_code.size(address(_452))
                            call address(_452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _718, 0, address(this.address), 128, mem[ceil32(_966) + _722 + (160 * _726) + 324 len ceil32(_1307) + 32]
                        else:
                            mem[_966 + _722 + (160 * _726) + 192] = 0
                            _1278 = mem[64]
                            mem[mem[64]] = ceil32(_966) + _722 + (160 * _726) + -mem[64] + 160
                            mem[64] = ceil32(_966) + _722 + (160 * _726) + 192
                            mem[ceil32(_966) + _722 + (160 * _726) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(_966) + _722 + (160 * _726) + 196] = _718
                            mem[ceil32(_966) + _722 + (160 * _726) + 228] = 0
                            mem[ceil32(_966) + _722 + (160 * _726) + 260] = this.address
                            mem[ceil32(_966) + _722 + (160 * _726) + 292] = 128
                            _1308 = mem[_1278]
                            mem[ceil32(_966) + _722 + (160 * _726) + 324] = mem[_1278]
                            mem[ceil32(_966) + _722 + (160 * _726) + 356 len ceil32(_1308)] = mem[_1278 + 32 len ceil32(_1308)]
                            if ceil32(_1308) > _1308:
                                mem[_1308 + ceil32(_966) + _722 + (160 * _726) + 356] = 0
                            require ext_code.size(address(_452))
                            call address(_452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _718, 0, address(this.address), 128, mem[ceil32(_966) + _722 + (160 * _726) + 324 len ceil32(_1308) + 32]
                    else:
                        _719 = mem[_451 + 96]
                        _723 = mem[64]
                        mem[mem[64] + 32] = cd[(arg4 + 36)] + 1
                        mem[mem[64] + 64] = 96
                        _727 = mem[96]
                        mem[mem[64] + 128] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 160
                        while idx < _727:
                            _906 = mem[s]
                            mem[t] = mem[mem[s] + 12 len 20]
                            mem[t + 32] = mem[_906 + 44 len 20]
                            mem[t + 64] = mem[_906 + 76 len 20]
                            mem[t + 96] = mem[_906 + 96]
                            mem[t + 128] = mem[_906 + 128]
                            idx = idx + 1
                            s = s + 32
                            t = t + 160
                            continue 
                        mem[_723 + 96] = (160 * _727) + 128
                        _967 = mem[_446]
                        mem[_723 + (160 * _727) + 160] = mem[_446]
                        mem[_723 + (160 * _727) + 192 len ceil32(_967)] = mem[_446 + 32 len ceil32(_967)]
                        if ceil32(_967) <= _967:
                            _1279 = mem[64]
                            mem[mem[64]] = ceil32(_967) + _723 + (160 * _727) + -mem[64] + 160
                            mem[64] = ceil32(_967) + _723 + (160 * _727) + 192
                            mem[ceil32(_967) + _723 + (160 * _727) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(_967) + _723 + (160 * _727) + 196] = 0
                            mem[ceil32(_967) + _723 + (160 * _727) + 228] = _719
                            mem[ceil32(_967) + _723 + (160 * _727) + 260] = this.address
                            mem[ceil32(_967) + _723 + (160 * _727) + 292] = 128
                            _1309 = mem[_1279]
                            mem[ceil32(_967) + _723 + (160 * _727) + 324] = mem[_1279]
                            mem[ceil32(_967) + _723 + (160 * _727) + 356 len ceil32(_1309)] = mem[_1279 + 32 len ceil32(_1309)]
                            if ceil32(_1309) > _1309:
                                mem[_1309 + ceil32(_967) + _723 + (160 * _727) + 356] = 0
                            require ext_code.size(address(_452))
                            call address(_452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _719, address(this.address), 128, mem[ceil32(_967) + _723 + (160 * _727) + 324 len ceil32(_1309) + 32]
                        else:
                            mem[_967 + _723 + (160 * _727) + 192] = 0
                            _1280 = mem[64]
                            mem[mem[64]] = ceil32(_967) + _723 + (160 * _727) + -mem[64] + 160
                            mem[64] = ceil32(_967) + _723 + (160 * _727) + 192
                            mem[ceil32(_967) + _723 + (160 * _727) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(_967) + _723 + (160 * _727) + 196] = 0
                            mem[ceil32(_967) + _723 + (160 * _727) + 228] = _719
                            mem[ceil32(_967) + _723 + (160 * _727) + 260] = this.address
                            mem[ceil32(_967) + _723 + (160 * _727) + 292] = 128
                            _1310 = mem[_1280]
                            mem[ceil32(_967) + _723 + (160 * _727) + 324] = mem[_1280]
                            mem[ceil32(_967) + _723 + (160 * _727) + 356 len ceil32(_1310)] = mem[_1280 + 32 len ceil32(_1310)]
                            if ceil32(_1310) > _1310:
                                mem[_1310 + ceil32(_967) + _723 + (160 * _727) + 356] = 0
                            require ext_code.size(address(_452))
                            call address(_452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _719, address(this.address), 128, mem[ceil32(_967) + _723 + (160 * _727) + 324 len ceil32(_1310) + 32]
            else:
                if mem[_451 + 96] <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_OUTPUT_AMOUNT'
                if mem[_473 + 50 len 14] <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                if mem[_473 + 18 len 14] <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                if mem[_473 + 50 len 14] and mem[_451 + 96] > -1 / mem[_473 + 50 len 14]:
                    revert with 0, 17
                if mem[_473 + 50 len 14] * mem[_451 + 96] and 1000 > -1 / mem[_473 + 50 len 14] * mem[_451 + 96]:
                    revert with 0, 17
                if mem[_473 + 18 len 14] < mem[_451 + 96]:
                    revert with 0, 17
                if mem[_473 + 18 len 14] - mem[_451 + 96] and 997 > -1 / mem[_473 + 18 len 14] - mem[_451 + 96]:
                    revert with 0, 17
                if not (997 * mem[_473 + 18 len 14]) - (997 * mem[_451 + 96]):
                    revert with 0, 18
                if 1000 * mem[_473 + 50 len 14] * mem[_451 + 96] / (997 * mem[_473 + 18 len 14]) - (997 * mem[_451 + 96]) > -2:
                    revert with 0, 17
                mem[_451 + 128] = (1000 * mem[_473 + 50 len 14] * mem[_451 + 96] / (997 * mem[_473 + 18 len 14]) - (997 * mem[_451 + 96])) + 1
                if address(_467) == address(_460):
                    _742 = mem[_451 + 96]
                    _760 = mem[64]
                    mem[mem[64] + 32] = cd[(arg4 + 36)] + 1
                    mem[mem[64] + 64] = 96
                    _766 = mem[96]
                    mem[mem[64] + 128] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 160
                    while idx < _766:
                        _912 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_912 + 44 len 20]
                        mem[t + 64] = mem[_912 + 76 len 20]
                        mem[t + 96] = mem[_912 + 96]
                        mem[t + 128] = mem[_912 + 128]
                        idx = idx + 1
                        s = s + 32
                        t = t + 160
                        continue 
                    mem[_760 + 96] = (160 * _766) + 128
                    _968 = mem[_446]
                    mem[_760 + (160 * _766) + 160] = mem[_446]
                    mem[_760 + (160 * _766) + 192 len ceil32(_968)] = mem[_446 + 32 len ceil32(_968)]
                    if ceil32(_968) <= _968:
                        _1281 = mem[64]
                        mem[mem[64]] = ceil32(_968) + _760 + (160 * _766) + -mem[64] + 160
                        mem[64] = ceil32(_968) + _760 + (160 * _766) + 192
                        mem[ceil32(_968) + _760 + (160 * _766) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(_968) + _760 + (160 * _766) + 196] = _742
                        mem[ceil32(_968) + _760 + (160 * _766) + 228] = 0
                        mem[ceil32(_968) + _760 + (160 * _766) + 260] = this.address
                        mem[ceil32(_968) + _760 + (160 * _766) + 292] = 128
                        _1311 = mem[_1281]
                        mem[ceil32(_968) + _760 + (160 * _766) + 324] = mem[_1281]
                        mem[ceil32(_968) + _760 + (160 * _766) + 356 len ceil32(_1311)] = mem[_1281 + 32 len ceil32(_1311)]
                        if ceil32(_1311) > _1311:
                            mem[_1311 + ceil32(_968) + _760 + (160 * _766) + 356] = 0
                        require ext_code.size(address(_452))
                        call address(_452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _742, 0, address(this.address), 128, mem[ceil32(_968) + _760 + (160 * _766) + 324 len ceil32(_1311) + 32]
                    else:
                        mem[_968 + _760 + (160 * _766) + 192] = 0
                        _1282 = mem[64]
                        mem[mem[64]] = ceil32(_968) + _760 + (160 * _766) + -mem[64] + 160
                        mem[64] = ceil32(_968) + _760 + (160 * _766) + 192
                        mem[ceil32(_968) + _760 + (160 * _766) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(_968) + _760 + (160 * _766) + 196] = _742
                        mem[ceil32(_968) + _760 + (160 * _766) + 228] = 0
                        mem[ceil32(_968) + _760 + (160 * _766) + 260] = this.address
                        mem[ceil32(_968) + _760 + (160 * _766) + 292] = 128
                        _1312 = mem[_1282]
                        mem[ceil32(_968) + _760 + (160 * _766) + 324] = mem[_1282]
                        mem[ceil32(_968) + _760 + (160 * _766) + 356 len ceil32(_1312)] = mem[_1282 + 32 len ceil32(_1312)]
                        if ceil32(_1312) > _1312:
                            mem[_1312 + ceil32(_968) + _760 + (160 * _766) + 356] = 0
                        require ext_code.size(address(_452))
                        call address(_452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _742, 0, address(this.address), 128, mem[ceil32(_968) + _760 + (160 * _766) + 324 len ceil32(_1312) + 32]
                else:
                    _743 = mem[_451 + 96]
                    _761 = mem[64]
                    mem[mem[64] + 32] = cd[(arg4 + 36)] + 1
                    mem[mem[64] + 64] = 96
                    _767 = mem[96]
                    mem[mem[64] + 128] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 160
                    while idx < _767:
                        _918 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_918 + 44 len 20]
                        mem[t + 64] = mem[_918 + 76 len 20]
                        mem[t + 96] = mem[_918 + 96]
                        mem[t + 128] = mem[_918 + 128]
                        idx = idx + 1
                        s = s + 32
                        t = t + 160
                        continue 
                    mem[_761 + 96] = (160 * _767) + 128
                    _969 = mem[_446]
                    mem[_761 + (160 * _767) + 160] = mem[_446]
                    mem[_761 + (160 * _767) + 192 len ceil32(_969)] = mem[_446 + 32 len ceil32(_969)]
                    if ceil32(_969) <= _969:
                        _1283 = mem[64]
                        mem[mem[64]] = ceil32(_969) + _761 + (160 * _767) + -mem[64] + 160
                        mem[64] = ceil32(_969) + _761 + (160 * _767) + 192
                        mem[ceil32(_969) + _761 + (160 * _767) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(_969) + _761 + (160 * _767) + 196] = 0
                        mem[ceil32(_969) + _761 + (160 * _767) + 228] = _743
                        mem[ceil32(_969) + _761 + (160 * _767) + 260] = this.address
                        mem[ceil32(_969) + _761 + (160 * _767) + 292] = 128
                        _1313 = mem[_1283]
                        mem[ceil32(_969) + _761 + (160 * _767) + 324] = mem[_1283]
                        mem[ceil32(_969) + _761 + (160 * _767) + 356 len ceil32(_1313)] = mem[_1283 + 32 len ceil32(_1313)]
                        if ceil32(_1313) > _1313:
                            mem[_1313 + ceil32(_969) + _761 + (160 * _767) + 356] = 0
                        require ext_code.size(address(_452))
                        call address(_452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _743, address(this.address), 128, mem[ceil32(_969) + _761 + (160 * _767) + 324 len ceil32(_1313) + 32]
                    else:
                        mem[_969 + _761 + (160 * _767) + 192] = 0
                        _1284 = mem[64]
                        mem[mem[64]] = ceil32(_969) + _761 + (160 * _767) + -mem[64] + 160
                        mem[64] = ceil32(_969) + _761 + (160 * _767) + 192
                        mem[ceil32(_969) + _761 + (160 * _767) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(_969) + _761 + (160 * _767) + 196] = 0
                        mem[ceil32(_969) + _761 + (160 * _767) + 228] = _743
                        mem[ceil32(_969) + _761 + (160 * _767) + 260] = this.address
                        mem[ceil32(_969) + _761 + (160 * _767) + 292] = 128
                        _1314 = mem[_1284]
                        mem[ceil32(_969) + _761 + (160 * _767) + 324] = mem[_1284]
                        mem[ceil32(_969) + _761 + (160 * _767) + 356 len ceil32(_1314)] = mem[_1284 + 32 len ceil32(_1314)]
                        if ceil32(_1314) > _1314:
                            mem[_1314 + ceil32(_969) + _761 + (160 * _767) + 356] = 0
                        require ext_code.size(address(_452))
                        call address(_452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _743, address(this.address), 128, mem[ceil32(_969) + _761 + (160 * _767) + 324 len ceil32(_1314) + 32]
        else:
            if mem[_451 + 128] != 0:
                if mem[_451 + 96]:
                    if address(_467) == address(_460):
                        _541 = mem[_451 + 96]
                        _547 = mem[64]
                        mem[mem[64] + 32] = cd[(arg4 + 36)] + 1
                        mem[mem[64] + 64] = 96
                        _558 = mem[96]
                        mem[mem[64] + 128] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 160
                        while idx < _558:
                            _924 = mem[s]
                            mem[t] = mem[mem[s] + 12 len 20]
                            mem[t + 32] = mem[_924 + 44 len 20]
                            mem[t + 64] = mem[_924 + 76 len 20]
                            mem[t + 96] = mem[_924 + 96]
                            mem[t + 128] = mem[_924 + 128]
                            idx = idx + 1
                            s = s + 32
                            t = t + 160
                            continue 
                        mem[_547 + 96] = (160 * _558) + 128
                        _970 = mem[_446]
                        mem[_547 + (160 * _558) + 160] = mem[_446]
                        mem[_547 + (160 * _558) + 192 len ceil32(_970)] = mem[_446 + 32 len ceil32(_970)]
                        if ceil32(_970) <= _970:
                            _1285 = mem[64]
                            mem[mem[64]] = ceil32(_970) + _547 + (160 * _558) + -mem[64] + 160
                            mem[64] = ceil32(_970) + _547 + (160 * _558) + 192
                            mem[ceil32(_970) + _547 + (160 * _558) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(_970) + _547 + (160 * _558) + 196] = _541
                            mem[ceil32(_970) + _547 + (160 * _558) + 228] = 0
                            mem[ceil32(_970) + _547 + (160 * _558) + 260] = this.address
                            mem[ceil32(_970) + _547 + (160 * _558) + 292] = 128
                            _1315 = mem[_1285]
                            mem[ceil32(_970) + _547 + (160 * _558) + 324] = mem[_1285]
                            mem[ceil32(_970) + _547 + (160 * _558) + 356 len ceil32(_1315)] = mem[_1285 + 32 len ceil32(_1315)]
                            if ceil32(_1315) > _1315:
                                mem[_1315 + ceil32(_970) + _547 + (160 * _558) + 356] = 0
                            require ext_code.size(address(_452))
                            call address(_452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _541, 0, address(this.address), 128, mem[ceil32(_970) + _547 + (160 * _558) + 324 len ceil32(_1315) + 32]
                        else:
                            mem[_970 + _547 + (160 * _558) + 192] = 0
                            _1286 = mem[64]
                            mem[mem[64]] = ceil32(_970) + _547 + (160 * _558) + -mem[64] + 160
                            mem[64] = ceil32(_970) + _547 + (160 * _558) + 192
                            mem[ceil32(_970) + _547 + (160 * _558) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(_970) + _547 + (160 * _558) + 196] = _541
                            mem[ceil32(_970) + _547 + (160 * _558) + 228] = 0
                            mem[ceil32(_970) + _547 + (160 * _558) + 260] = this.address
                            mem[ceil32(_970) + _547 + (160 * _558) + 292] = 128
                            _1316 = mem[_1286]
                            mem[ceil32(_970) + _547 + (160 * _558) + 324] = mem[_1286]
                            mem[ceil32(_970) + _547 + (160 * _558) + 356 len ceil32(_1316)] = mem[_1286 + 32 len ceil32(_1316)]
                            if ceil32(_1316) > _1316:
                                mem[_1316 + ceil32(_970) + _547 + (160 * _558) + 356] = 0
                            require ext_code.size(address(_452))
                            call address(_452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _541, 0, address(this.address), 128, mem[ceil32(_970) + _547 + (160 * _558) + 324 len ceil32(_1316) + 32]
                    else:
                        _542 = mem[_451 + 96]
                        _548 = mem[64]
                        mem[mem[64] + 32] = cd[(arg4 + 36)] + 1
                        mem[mem[64] + 64] = 96
                        _559 = mem[96]
                        mem[mem[64] + 128] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 160
                        while idx < _559:
                            _930 = mem[s]
                            mem[t] = mem[mem[s] + 12 len 20]
                            mem[t + 32] = mem[_930 + 44 len 20]
                            mem[t + 64] = mem[_930 + 76 len 20]
                            mem[t + 96] = mem[_930 + 96]
                            mem[t + 128] = mem[_930 + 128]
                            idx = idx + 1
                            s = s + 32
                            t = t + 160
                            continue 
                        mem[_548 + 96] = (160 * _559) + 128
                        _971 = mem[_446]
                        mem[_548 + (160 * _559) + 160] = mem[_446]
                        mem[_548 + (160 * _559) + 192 len ceil32(_971)] = mem[_446 + 32 len ceil32(_971)]
                        if ceil32(_971) <= _971:
                            _1287 = mem[64]
                            mem[mem[64]] = ceil32(_971) + _548 + (160 * _559) + -mem[64] + 160
                            mem[64] = ceil32(_971) + _548 + (160 * _559) + 192
                            mem[ceil32(_971) + _548 + (160 * _559) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(_971) + _548 + (160 * _559) + 196] = 0
                            mem[ceil32(_971) + _548 + (160 * _559) + 228] = _542
                            mem[ceil32(_971) + _548 + (160 * _559) + 260] = this.address
                            mem[ceil32(_971) + _548 + (160 * _559) + 292] = 128
                            _1317 = mem[_1287]
                            mem[ceil32(_971) + _548 + (160 * _559) + 324] = mem[_1287]
                            mem[ceil32(_971) + _548 + (160 * _559) + 356 len ceil32(_1317)] = mem[_1287 + 32 len ceil32(_1317)]
                            if ceil32(_1317) > _1317:
                                mem[_1317 + ceil32(_971) + _548 + (160 * _559) + 356] = 0
                            require ext_code.size(address(_452))
                            call address(_452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _542, address(this.address), 128, mem[ceil32(_971) + _548 + (160 * _559) + 324 len ceil32(_1317) + 32]
                        else:
                            mem[_971 + _548 + (160 * _559) + 192] = 0
                            _1288 = mem[64]
                            mem[mem[64]] = ceil32(_971) + _548 + (160 * _559) + -mem[64] + 160
                            mem[64] = ceil32(_971) + _548 + (160 * _559) + 192
                            mem[ceil32(_971) + _548 + (160 * _559) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(_971) + _548 + (160 * _559) + 196] = 0
                            mem[ceil32(_971) + _548 + (160 * _559) + 228] = _542
                            mem[ceil32(_971) + _548 + (160 * _559) + 260] = this.address
                            mem[ceil32(_971) + _548 + (160 * _559) + 292] = 128
                            _1318 = mem[_1288]
                            mem[ceil32(_971) + _548 + (160 * _559) + 324] = mem[_1288]
                            mem[ceil32(_971) + _548 + (160 * _559) + 356 len ceil32(_1318)] = mem[_1288 + 32 len ceil32(_1318)]
                            if ceil32(_1318) > _1318:
                                mem[_1318 + ceil32(_971) + _548 + (160 * _559) + 356] = 0
                            require ext_code.size(address(_452))
                            call address(_452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _542, address(this.address), 128, mem[ceil32(_971) + _548 + (160 * _559) + 324 len ceil32(_1318) + 32]
                else:
                    if mem[_451 + 128] <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_INPUT_AMOUNT'
                    if mem[_473 + 18 len 14] <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                    if mem[_473 + 50 len 14] <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                    if mem[_451 + 128] and 997 > -1 / mem[_451 + 128]:
                        revert with 0, 17
                    if 997 * mem[_451 + 128] and mem[_473 + 50 len 14] > -1 / 997 * mem[_451 + 128]:
                        revert with 0, 17
                    if mem[_473 + 18 len 14] and 1000 > -1 / mem[_473 + 18 len 14]:
                        revert with 0, 17
                    if 1000 * mem[_473 + 18 len 14] > !(997 * mem[_451 + 128]):
                        revert with 0, 17
                    if not (1000 * mem[_473 + 18 len 14]) + (997 * mem[_451 + 128]):
                        revert with 0, 18
                    mem[_451 + 96] = 997 * mem[_451 + 128] * mem[_473 + 50 len 14] / (1000 * mem[_473 + 18 len 14]) + (997 * mem[_451 + 128])
                    if address(_467) == address(_460):
                        _720 = mem[_451 + 96]
                        _724 = mem[64]
                        mem[mem[64] + 32] = cd[(arg4 + 36)] + 1
                        mem[mem[64] + 64] = 96
                        _728 = mem[96]
                        mem[mem[64] + 128] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 160
                        while idx < _728:
                            _936 = mem[s]
                            mem[t] = mem[mem[s] + 12 len 20]
                            mem[t + 32] = mem[_936 + 44 len 20]
                            mem[t + 64] = mem[_936 + 76 len 20]
                            mem[t + 96] = mem[_936 + 96]
                            mem[t + 128] = mem[_936 + 128]
                            idx = idx + 1
                            s = s + 32
                            t = t + 160
                            continue 
                        mem[_724 + 96] = (160 * _728) + 128
                        _972 = mem[_446]
                        mem[_724 + (160 * _728) + 160] = mem[_446]
                        mem[_724 + (160 * _728) + 192 len ceil32(_972)] = mem[_446 + 32 len ceil32(_972)]
                        if ceil32(_972) <= _972:
                            _1289 = mem[64]
                            mem[mem[64]] = ceil32(_972) + _724 + (160 * _728) + -mem[64] + 160
                            mem[64] = ceil32(_972) + _724 + (160 * _728) + 192
                            mem[ceil32(_972) + _724 + (160 * _728) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(_972) + _724 + (160 * _728) + 196] = _720
                            mem[ceil32(_972) + _724 + (160 * _728) + 228] = 0
                            mem[ceil32(_972) + _724 + (160 * _728) + 260] = this.address
                            mem[ceil32(_972) + _724 + (160 * _728) + 292] = 128
                            _1319 = mem[_1289]
                            mem[ceil32(_972) + _724 + (160 * _728) + 324] = mem[_1289]
                            mem[ceil32(_972) + _724 + (160 * _728) + 356 len ceil32(_1319)] = mem[_1289 + 32 len ceil32(_1319)]
                            if ceil32(_1319) > _1319:
                                mem[_1319 + ceil32(_972) + _724 + (160 * _728) + 356] = 0
                            require ext_code.size(address(_452))
                            call address(_452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _720, 0, address(this.address), 128, mem[ceil32(_972) + _724 + (160 * _728) + 324 len ceil32(_1319) + 32]
                        else:
                            mem[_972 + _724 + (160 * _728) + 192] = 0
                            _1290 = mem[64]
                            mem[mem[64]] = ceil32(_972) + _724 + (160 * _728) + -mem[64] + 160
                            mem[64] = ceil32(_972) + _724 + (160 * _728) + 192
                            mem[ceil32(_972) + _724 + (160 * _728) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(_972) + _724 + (160 * _728) + 196] = _720
                            mem[ceil32(_972) + _724 + (160 * _728) + 228] = 0
                            mem[ceil32(_972) + _724 + (160 * _728) + 260] = this.address
                            mem[ceil32(_972) + _724 + (160 * _728) + 292] = 128
                            _1320 = mem[_1290]
                            mem[ceil32(_972) + _724 + (160 * _728) + 324] = mem[_1290]
                            mem[ceil32(_972) + _724 + (160 * _728) + 356 len ceil32(_1320)] = mem[_1290 + 32 len ceil32(_1320)]
                            if ceil32(_1320) > _1320:
                                mem[_1320 + ceil32(_972) + _724 + (160 * _728) + 356] = 0
                            require ext_code.size(address(_452))
                            call address(_452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _720, 0, address(this.address), 128, mem[ceil32(_972) + _724 + (160 * _728) + 324 len ceil32(_1320) + 32]
                    else:
                        _721 = mem[_451 + 96]
                        _725 = mem[64]
                        mem[mem[64] + 32] = cd[(arg4 + 36)] + 1
                        mem[mem[64] + 64] = 96
                        _729 = mem[96]
                        mem[mem[64] + 128] = mem[96]
                        idx = 0
                        s = 128
                        t = mem[64] + 160
                        while idx < _729:
                            _942 = mem[s]
                            mem[t] = mem[mem[s] + 12 len 20]
                            mem[t + 32] = mem[_942 + 44 len 20]
                            mem[t + 64] = mem[_942 + 76 len 20]
                            mem[t + 96] = mem[_942 + 96]
                            mem[t + 128] = mem[_942 + 128]
                            idx = idx + 1
                            s = s + 32
                            t = t + 160
                            continue 
                        mem[_725 + 96] = (160 * _729) + 128
                        _973 = mem[_446]
                        mem[_725 + (160 * _729) + 160] = mem[_446]
                        mem[_725 + (160 * _729) + 192 len ceil32(_973)] = mem[_446 + 32 len ceil32(_973)]
                        if ceil32(_973) <= _973:
                            _1291 = mem[64]
                            mem[mem[64]] = ceil32(_973) + _725 + (160 * _729) + -mem[64] + 160
                            mem[64] = ceil32(_973) + _725 + (160 * _729) + 192
                            mem[ceil32(_973) + _725 + (160 * _729) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(_973) + _725 + (160 * _729) + 196] = 0
                            mem[ceil32(_973) + _725 + (160 * _729) + 228] = _721
                            mem[ceil32(_973) + _725 + (160 * _729) + 260] = this.address
                            mem[ceil32(_973) + _725 + (160 * _729) + 292] = 128
                            _1321 = mem[_1291]
                            mem[ceil32(_973) + _725 + (160 * _729) + 324] = mem[_1291]
                            mem[ceil32(_973) + _725 + (160 * _729) + 356 len ceil32(_1321)] = mem[_1291 + 32 len ceil32(_1321)]
                            if ceil32(_1321) > _1321:
                                mem[_1321 + ceil32(_973) + _725 + (160 * _729) + 356] = 0
                            require ext_code.size(address(_452))
                            call address(_452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _721, address(this.address), 128, mem[ceil32(_973) + _725 + (160 * _729) + 324 len ceil32(_1321) + 32]
                        else:
                            mem[_973 + _725 + (160 * _729) + 192] = 0
                            _1292 = mem[64]
                            mem[mem[64]] = ceil32(_973) + _725 + (160 * _729) + -mem[64] + 160
                            mem[64] = ceil32(_973) + _725 + (160 * _729) + 192
                            mem[ceil32(_973) + _725 + (160 * _729) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[ceil32(_973) + _725 + (160 * _729) + 196] = 0
                            mem[ceil32(_973) + _725 + (160 * _729) + 228] = _721
                            mem[ceil32(_973) + _725 + (160 * _729) + 260] = this.address
                            mem[ceil32(_973) + _725 + (160 * _729) + 292] = 128
                            _1322 = mem[_1292]
                            mem[ceil32(_973) + _725 + (160 * _729) + 324] = mem[_1292]
                            mem[ceil32(_973) + _725 + (160 * _729) + 356 len ceil32(_1322)] = mem[_1292 + 32 len ceil32(_1322)]
                            if ceil32(_1322) > _1322:
                                mem[_1322 + ceil32(_973) + _725 + (160 * _729) + 356] = 0
                            require ext_code.size(address(_452))
                            call address(_452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _721, address(this.address), 128, mem[ceil32(_973) + _725 + (160 * _729) + 324 len ceil32(_1322) + 32]
            else:
                if mem[_451 + 96] <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_OUTPUT_AMOUNT'
                if mem[_473 + 18 len 14] <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                if mem[_473 + 50 len 14] <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                if mem[_473 + 18 len 14] and mem[_451 + 96] > -1 / mem[_473 + 18 len 14]:
                    revert with 0, 17
                if mem[_473 + 18 len 14] * mem[_451 + 96] and 1000 > -1 / mem[_473 + 18 len 14] * mem[_451 + 96]:
                    revert with 0, 17
                if mem[_473 + 50 len 14] < mem[_451 + 96]:
                    revert with 0, 17
                if mem[_473 + 50 len 14] - mem[_451 + 96] and 997 > -1 / mem[_473 + 50 len 14] - mem[_451 + 96]:
                    revert with 0, 17
                if not (997 * mem[_473 + 50 len 14]) - (997 * mem[_451 + 96]):
                    revert with 0, 18
                if 1000 * mem[_473 + 18 len 14] * mem[_451 + 96] / (997 * mem[_473 + 50 len 14]) - (997 * mem[_451 + 96]) > -2:
                    revert with 0, 17
                mem[_451 + 128] = (1000 * mem[_473 + 18 len 14] * mem[_451 + 96] / (997 * mem[_473 + 50 len 14]) - (997 * mem[_451 + 96])) + 1
                if address(_467) == address(_460):
                    _756 = mem[_451 + 96]
                    _764 = mem[64]
                    mem[mem[64] + 32] = cd[(arg4 + 36)] + 1
                    mem[mem[64] + 64] = 96
                    _768 = mem[96]
                    mem[mem[64] + 128] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 160
                    while idx < _768:
                        _948 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_948 + 44 len 20]
                        mem[t + 64] = mem[_948 + 76 len 20]
                        mem[t + 96] = mem[_948 + 96]
                        mem[t + 128] = mem[_948 + 128]
                        idx = idx + 1
                        s = s + 32
                        t = t + 160
                        continue 
                    mem[_764 + 96] = (160 * _768) + 128
                    _974 = mem[_446]
                    mem[_764 + (160 * _768) + 160] = mem[_446]
                    mem[_764 + (160 * _768) + 192 len ceil32(_974)] = mem[_446 + 32 len ceil32(_974)]
                    if ceil32(_974) <= _974:
                        _1293 = mem[64]
                        mem[mem[64]] = ceil32(_974) + _764 + (160 * _768) + -mem[64] + 160
                        mem[64] = ceil32(_974) + _764 + (160 * _768) + 192
                        mem[ceil32(_974) + _764 + (160 * _768) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(_974) + _764 + (160 * _768) + 196] = _756
                        mem[ceil32(_974) + _764 + (160 * _768) + 228] = 0
                        mem[ceil32(_974) + _764 + (160 * _768) + 260] = this.address
                        mem[ceil32(_974) + _764 + (160 * _768) + 292] = 128
                        _1323 = mem[_1293]
                        mem[ceil32(_974) + _764 + (160 * _768) + 324] = mem[_1293]
                        mem[ceil32(_974) + _764 + (160 * _768) + 356 len ceil32(_1323)] = mem[_1293 + 32 len ceil32(_1323)]
                        if ceil32(_1323) > _1323:
                            mem[_1323 + ceil32(_974) + _764 + (160 * _768) + 356] = 0
                        require ext_code.size(address(_452))
                        call address(_452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _756, 0, address(this.address), 128, mem[ceil32(_974) + _764 + (160 * _768) + 324 len ceil32(_1323) + 32]
                    else:
                        mem[_974 + _764 + (160 * _768) + 192] = 0
                        _1294 = mem[64]
                        mem[mem[64]] = ceil32(_974) + _764 + (160 * _768) + -mem[64] + 160
                        mem[64] = ceil32(_974) + _764 + (160 * _768) + 192
                        mem[ceil32(_974) + _764 + (160 * _768) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(_974) + _764 + (160 * _768) + 196] = _756
                        mem[ceil32(_974) + _764 + (160 * _768) + 228] = 0
                        mem[ceil32(_974) + _764 + (160 * _768) + 260] = this.address
                        mem[ceil32(_974) + _764 + (160 * _768) + 292] = 128
                        _1324 = mem[_1294]
                        mem[ceil32(_974) + _764 + (160 * _768) + 324] = mem[_1294]
                        mem[ceil32(_974) + _764 + (160 * _768) + 356 len ceil32(_1324)] = mem[_1294 + 32 len ceil32(_1324)]
                        if ceil32(_1324) > _1324:
                            mem[_1324 + ceil32(_974) + _764 + (160 * _768) + 356] = 0
                        require ext_code.size(address(_452))
                        call address(_452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _756, 0, address(this.address), 128, mem[ceil32(_974) + _764 + (160 * _768) + 324 len ceil32(_1324) + 32]
                else:
                    _757 = mem[_451 + 96]
                    _765 = mem[64]
                    mem[mem[64] + 32] = cd[(arg4 + 36)] + 1
                    mem[mem[64] + 64] = 96
                    _769 = mem[96]
                    mem[mem[64] + 128] = mem[96]
                    idx = 0
                    s = 128
                    t = mem[64] + 160
                    while idx < _769:
                        _954 = mem[s]
                        mem[t] = mem[mem[s] + 12 len 20]
                        mem[t + 32] = mem[_954 + 44 len 20]
                        mem[t + 64] = mem[_954 + 76 len 20]
                        mem[t + 96] = mem[_954 + 96]
                        mem[t + 128] = mem[_954 + 128]
                        idx = idx + 1
                        s = s + 32
                        t = t + 160
                        continue 
                    mem[_765 + 96] = (160 * _769) + 128
                    _975 = mem[_446]
                    mem[_765 + (160 * _769) + 160] = mem[_446]
                    mem[_765 + (160 * _769) + 192 len ceil32(_975)] = mem[_446 + 32 len ceil32(_975)]
                    if ceil32(_975) <= _975:
                        _1295 = mem[64]
                        mem[mem[64]] = ceil32(_975) + _765 + (160 * _769) + -mem[64] + 160
                        mem[64] = ceil32(_975) + _765 + (160 * _769) + 192
                        mem[ceil32(_975) + _765 + (160 * _769) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(_975) + _765 + (160 * _769) + 196] = 0
                        mem[ceil32(_975) + _765 + (160 * _769) + 228] = _757
                        mem[ceil32(_975) + _765 + (160 * _769) + 260] = this.address
                        mem[ceil32(_975) + _765 + (160 * _769) + 292] = 128
                        _1325 = mem[_1295]
                        mem[ceil32(_975) + _765 + (160 * _769) + 324] = mem[_1295]
                        mem[ceil32(_975) + _765 + (160 * _769) + 356 len ceil32(_1325)] = mem[_1295 + 32 len ceil32(_1325)]
                        if ceil32(_1325) > _1325:
                            mem[_1325 + ceil32(_975) + _765 + (160 * _769) + 356] = 0
                        require ext_code.size(address(_452))
                        call address(_452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _757, address(this.address), 128, mem[ceil32(_975) + _765 + (160 * _769) + 324 len ceil32(_1325) + 32]
                    else:
                        mem[_975 + _765 + (160 * _769) + 192] = 0
                        _1296 = mem[64]
                        mem[mem[64]] = ceil32(_975) + _765 + (160 * _769) + -mem[64] + 160
                        mem[64] = ceil32(_975) + _765 + (160 * _769) + 192
                        mem[ceil32(_975) + _765 + (160 * _769) + 192] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[ceil32(_975) + _765 + (160 * _769) + 196] = 0
                        mem[ceil32(_975) + _765 + (160 * _769) + 228] = _757
                        mem[ceil32(_975) + _765 + (160 * _769) + 260] = this.address
                        mem[ceil32(_975) + _765 + (160 * _769) + 292] = 128
                        _1326 = mem[_1296]
                        mem[ceil32(_975) + _765 + (160 * _769) + 324] = mem[_1296]
                        mem[ceil32(_975) + _765 + (160 * _769) + 356 len ceil32(_1326)] = mem[_1296 + 32 len ceil32(_1326)]
                        if ceil32(_1326) > _1326:
                            mem[_1326 + ceil32(_975) + _765 + (160 * _769) + 356] = 0
                        require ext_code.size(address(_452))
                        call address(_452).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _757, address(this.address), 128, mem[ceil32(_975) + _765 + (160 * _769) + 324 len ceil32(_1326) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
