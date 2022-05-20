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
array of struct stor1;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
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
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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
    require ('cd', 36).length <= test266151307()
    mem[96] = ('cd', 36).length
    if not ('cd', 36).length:
        require ('cd', 68).length <= test266151307()
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
                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, address(_311)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _355 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _367 = mem[_355]
                require mem[_355] == mem[_355 + 12 len 20]
                require ext_code.size(mem[_355 + 12 len 20])
                staticcall mem[_355 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _403 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _412 = mem[_403]
                require mem[_403] == mem[_403 + 18 len 14]
                _425 = mem[_403 + 32]
                require mem[_403 + 32] == mem[_403 + 50 len 14]
                require mem[_403 + 64] == mem[_403 + 92 len 4]
                require ext_code.size(address(_367))
                staticcall address(_367).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _445 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_445] == mem[_445 + 12 len 20]
                require idx < mem[96]
                mem[mem[(32 * idx) + 128]] = address(_367)
                require idx < mem[96]
                if mem[_445 + 12 len 20] == address(_311):
                    mem[mem[(32 * idx) + 128] + 64] = Mask(112, 0, _425)
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = Mask(112, 0, _412)
                else:
                    mem[mem[(32 * idx) + 128] + 64] = Mask(112, 0, _412)
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = Mask(112, 0, _425)
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
                staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, address(_602)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _647 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _657 = mem[_647]
                require mem[_647] == mem[_647 + 12 len 20]
                require ext_code.size(mem[_647 + 12 len 20])
                staticcall mem[_647 + 12 len 20].getReserves() with:
                        gas gas_remaining wei
                mem[mem[64] len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _689 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 96
                _697 = mem[_689]
                require mem[_689] == mem[_689 + 18 len 14]
                _705 = mem[_689 + 32]
                require mem[_689 + 32] == mem[_689 + 50 len 14]
                require mem[_689 + 64] == mem[_689 + 92 len 4]
                require ext_code.size(address(_657))
                staticcall address(_657).token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _725 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_725] == mem[_725 + 12 len 20]
                require idx < mem[(32 * ('cd', 36).length) + 128]
                mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160]] = address(_657)
                require idx < mem[(32 * ('cd', 36).length) + 128]
                if mem[_725 + 12 len 20] == address(_602):
                    mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160] + 64] = Mask(112, 0, _705)
                    require idx < mem[(32 * ('cd', 36).length) + 128]
                    mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160] + 32] = Mask(112, 0, _697)
                else:
                    mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160] + 64] = Mask(112, 0, _697)
                    require idx < mem[(32 * ('cd', 36).length) + 128]
                    mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160] + 32] = Mask(112, 0, _705)
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
            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
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
            require idx < mem[96]
            mem[mem[(32 * idx) + 128]] = address(_931)
            require idx < mem[96]
            if mem[_983 + 12 len 20] == address(_880):
                mem[mem[(32 * idx) + 128] + 64] = Mask(112, 0, _965)
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = Mask(112, 0, _956)
            else:
                mem[mem[(32 * idx) + 128] + 64] = Mask(112, 0, _956)
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = Mask(112, 0, _965)
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
            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, address(_1102)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1137 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1141 = mem[_1137]
            require mem[_1137] == mem[_1137 + 12 len 20]
            require ext_code.size(mem[_1137 + 12 len 20])
            staticcall mem[_1137 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1154 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1158 = mem[_1154]
            require mem[_1154] == mem[_1154 + 18 len 14]
            _1163 = mem[_1154 + 32]
            require mem[_1154 + 32] == mem[_1154 + 50 len 14]
            require mem[_1154 + 64] == mem[_1154 + 92 len 4]
            require ext_code.size(address(_1141))
            staticcall address(_1141).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1175 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1175] == mem[_1175 + 12 len 20]
            require idx < mem[(32 * ('cd', 36).length) + 128]
            mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160]] = address(_1141)
            require idx < mem[(32 * ('cd', 36).length) + 128]
            if mem[_1175 + 12 len 20] == address(_1102):
                mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160] + 64] = Mask(112, 0, _1163)
                require idx < mem[(32 * ('cd', 36).length) + 128]
                mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160] + 32] = Mask(112, 0, _1158)
            else:
                mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160] + 64] = Mask(112, 0, _1158)
                require idx < mem[(32 * ('cd', 36).length) + 128]
                mem[mem[(32 * idx) + (32 * ('cd', 36).length) + 160] + 32] = Mask(112, 0, _1163)
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
    require ('cd', 68).length <= test266151307()
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
            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
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
            require idx < mem[96]
            mem[mem[(32 * idx) + 128]] = address(_933)
            require idx < mem[96]
            if mem[_986 + 12 len 20] == address(_886):
                mem[mem[(32 * idx) + 128] + 64] = Mask(112, 0, _966)
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = Mask(112, 0, _957)
            else:
                mem[mem[(32 * idx) + 128] + 64] = Mask(112, 0, _957)
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = Mask(112, 0, _966)
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
            staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664, address(_1104)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1138 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1142 = mem[_1138]
            require mem[_1138] == mem[_1138 + 12 len 20]
            require ext_code.size(mem[_1138 + 12 len 20])
            staticcall mem[_1138 + 12 len 20].getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1155 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _1159 = mem[_1155]
            require mem[_1155] == mem[_1155 + 18 len 14]
            _1164 = mem[_1155 + 32]
            require mem[_1155 + 32] == mem[_1155 + 50 len 14]
            require mem[_1155 + 64] == mem[_1155 + 92 len 4]
            require ext_code.size(address(_1142))
            staticcall address(_1142).token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1176 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1176] == mem[_1176 + 12 len 20]
            require idx < mem[_593]
            mem[mem[(32 * idx) + _593 + 32]] = address(_1142)
            require idx < mem[_593]
            if mem[_1176 + 12 len 20] == address(_1104):
                mem[mem[(32 * idx) + _593 + 32] + 64] = Mask(112, 0, _1164)
                require idx < mem[_593]
                mem[mem[(32 * idx) + _593 + 32] + 32] = Mask(112, 0, _1159)
            else:
                mem[mem[(32 * idx) + _593 + 32] + 64] = Mask(112, 0, _1159)
                require idx < mem[_593]
                mem[mem[(32 * idx) + _593 + 32] + 32] = Mask(112, 0, _1164)
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
        staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
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
        require idx < mem[96]
        mem[mem[(32 * idx) + 128]] = address(_1284)
        require idx < mem[96]
        if mem[_1302 + 12 len 20] == address(_1270):
            mem[mem[(32 * idx) + 128] + 64] = Mask(112, 0, _1294)
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 32] = Mask(112, 0, _1292)
        else:
            mem[mem[(32 * idx) + 128] + 64] = Mask(112, 0, _1292)
            require idx < mem[96]
            mem[mem[(32 * idx) + 128] + 32] = Mask(112, 0, _1294)
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
        staticcall 0x9ad6c38be94206ca50bb0d90783181662f0cfa10.getPair(address arg1, address arg2) with:
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
        require idx < mem[_593]
        mem[mem[(32 * idx) + _593 + 32]] = address(_1359)
        require idx < mem[_593]
        if mem[_1368 + 12 len 20] == address(_1350):
            mem[mem[(32 * idx) + _593 + 32] + 64] = Mask(112, 0, _1364)
            require idx < mem[_593]
            mem[mem[(32 * idx) + _593 + 32] + 32] = Mask(112, 0, _1363)
        else:
            mem[mem[(32 * idx) + _593 + 32] + 64] = Mask(112, 0, _1363)
            require idx < mem[_593]
            mem[mem[(32 * idx) + _593 + 32] + 32] = Mask(112, 0, _1364)
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
    require arg4.length >= 64
    require cd[(arg4 + 68)] <= test266151307()
    require arg4 + cd[(arg4 + 68)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
    require ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128 >= 96 and ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128 <= test266151307()
    mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128
    mem[96] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
    require arg4.length + 36 >= cd[(arg4 + cd[(arg4 + 68)] + 36)] + cd[(arg4 + 68)] + 68
    mem[128 len cd[(arg4 + cd[(arg4 + 68)] + 36)]] = call.data[arg4 + cd[(arg4 + 68)] + 68 len cd[(arg4 + cd[(arg4 + 68)] + 36)]]
    mem[cd[(arg4 + cd[(arg4 + 68)] + 36)] + 128] = 0
    if cd[(arg4 + 36)] >= stor1.length - 1:
        require cd[(arg4 + cd[(arg4 + 68)] + 36)] >= 160
        _8 = mem[128]
        require mem[128] == mem[140 len 20]
        _10 = mem[160]
        _11 = mem[192]
        _12 = mem[224]
        _13 = mem[256]
        require mem[256] == bool(mem[256])
        idx = 0
        while idx < stor1.length:
            mem[0] = 1
            _759 = mem[64]
            mem[mem[64] + 36] = address(_8)
            mem[mem[64] + 68] = -1
            _762 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_762 + 32] = mem[_762 + 36 len 28] or 0x95ea7b300000000000000000000000000000000000000000000000000000000
            _837 = mem[_762]
            s = 0
            while s < _837:
                mem[s + _759 + 100] = mem[s + _762 + 32]
                s = s + 32
                continue 
            if ceil32(_837) <= _837:
                call stor1[idx].field_256.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _837 + _759 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: APPROVE_FAILED'
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'TransferHelper: APPROVE_FAILED'
                else:
                    _1326 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1326] = return_data.size
                    mem[_1326 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: APPROVE_FAILED'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_1326 + 32] == bool(mem[_1326 + 32])
                        if not mem[_1326 + 32]:
                            revert with 0, 'TransferHelper: APPROVE_FAILED'
            else:
                mem[_837 + _759 + 100] = 0
                call stor1[idx].field_256.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _837 + _759 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: APPROVE_FAILED'
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'TransferHelper: APPROVE_FAILED'
                else:
                    _1327 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_1327] = return_data.size
                    mem[_1327 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'TransferHelper: APPROVE_FAILED'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_1327 + 32] == bool(mem[_1327 + 32])
                        if not mem[_1327 + 32]:
                            revert with 0, 'TransferHelper: APPROVE_FAILED'
            idx = idx + 1
            continue 
        if not _13:
            mem[mem[64]] = 0x5a1002800000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _12
            mem[mem[64] + 36] = _10
            mem[mem[64] + 68] = _11
            require ext_code.size(address(_8))
            call address(_8).burn(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args _12, _10, _11
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            while idx < stor1.length:
                mem[0] = 1
                _1316 = mem[64]
                mem[mem[64] + 36] = stor1[idx].field_0
                mem[mem[64] + 68] = stor1[idx].field_1024
                _1320 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1320 + 32] = mem[_1320 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                _1472 = mem[_1320]
                s = 0
                while s < _1472:
                    mem[s + _1316 + 100] = mem[s + _1320 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1472) <= _1472:
                    call stor1[idx].field_512.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1472 + _1316 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        _1574 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1574] = return_data.size
                        mem[_1574 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_1574 + 32] == bool(mem[_1574 + 32])
                            if not mem[_1574 + 32]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                else:
                    mem[_1472 + _1316 + 100] = 0
                    call stor1[idx].field_512.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1472 + _1316 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        _1575 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1575] = return_data.size
                        mem[_1575 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_1575 + 32] == bool(mem[_1575 + 32])
                            if not mem[_1575 + 32]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                idx = idx + 1
                continue 
        else:
            mem[mem[64]] = 0x2acc94b00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _12
            mem[mem[64] + 36] = _10
            mem[mem[64] + 68] = _11
            require ext_code.size(address(_8))
            call address(_8).mint(uint256 arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args _12, _10, _11
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = 0
            while idx < stor1.length:
                mem[0] = 1
                _1317 = mem[64]
                mem[mem[64] + 36] = stor1[idx].field_0
                mem[mem[64] + 68] = stor1[idx].field_1024
                _1323 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1323 + 32] = mem[_1323 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                _1473 = mem[_1323]
                s = 0
                while s < _1473:
                    mem[s + _1317 + 100] = mem[s + _1323 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1473) <= _1473:
                    call stor1[idx].field_512.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1473 + _1317 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        _1576 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1576] = return_data.size
                        mem[_1576 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_1576 + 32] == bool(mem[_1576 + 32])
                            if not mem[_1576 + 32]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                else:
                    mem[_1473 + _1317 + 100] = 0
                    call stor1[idx].field_512.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1473 + _1317 + -mem[64] + 96]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                    else:
                        _1577 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1577] = return_data.size
                        mem[_1577 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'TransferHelper: TRANSFER_FAILED'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_1577 + 32] == bool(mem[_1577 + 32])
                            if not mem[_1577 + 32]:
                                revert with 0, 'TransferHelper: TRANSFER_FAILED'
                idx = idx + 1
                continue 
        stor1.length = 0
        idx = 0
        while 5 * stor1.length > idx:
            stor1[idx].field_0 = 0
            stor1[idx].field_256 = 0
            stor1[idx].field_512 = 0
            stor1[idx].field_768 = 0
            stor1[idx].field_1024 = 0
            idx = idx + 5
            continue 
    else:
        require cd[(arg4 + 36)] + 1 < stor1.length
        require ext_code.size(stor1[cd[(arg4 + 36)]].field_1280)
        staticcall stor1[cd[(arg4 + 36)]].field_1280.token0() with:
                gas gas_remaining wei
        mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _14 = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + cd[(arg4 + cd[(arg4 + 68)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 68)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 68)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]
        require Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + cd[(arg4 + cd[(arg4 + 68)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 68)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 68)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)])] == Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + cd[(arg4 + cd[(arg4 + 68)] + 36)] + 20, 0, 0), mem[cd[(arg4 + cd[(arg4 + 68)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 68)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)])]
        require ext_code.size(stor1[cd[(arg4 + 36)]].field_1280)
        staticcall stor1[cd[(arg4 + 36)]].field_1280.getReserves() with:
                gas gas_remaining wei
        mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + ceil32(return_data.size) + 128 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if stor1[cd[(arg4 + 36)]].field_1536 == address(_14):
            if stor1[cd[(arg4 + 36)]].field_2304 != 0:
                if not stor1[cd[(arg4 + 36)]].field_2048:
                    if stor1[cd[(arg4 + 36)]].field_2304 <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_INPUT_AMOUNT'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                    if not stor1[cd[(arg4 + 36)]].field_2304:
                        require ext_call.return_data[50 len 14]
                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        require 1000 * ext_call.return_data[50 len 14]
                        stor1[cd[(arg4 + 36)]].field_2048 = 0 / 1000 * ext_call.return_data[50 len 14]
                    else:
                        if 997 * stor1[cd[(arg4 + 36)]].field_2304 / stor1[cd[(arg4 + 36)]].field_2304 != 997:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 997 * stor1[cd[(arg4 + 36)]].field_2304:
                            if not ext_call.return_data[50 len 14]:
                                if 997 * stor1[cd[(arg4 + 36)]].field_2304 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 997 * stor1[cd[(arg4 + 36)]].field_2304
                                stor1[cd[(arg4 + 36)]].field_2048 = 0 / 997 * stor1[cd[(arg4 + 36)]].field_2304
                            else:
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if (997 * stor1[cd[(arg4 + 36)]].field_2304) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require (997 * stor1[cd[(arg4 + 36)]].field_2304) + (1000 * ext_call.return_data[50 len 14])
                                stor1[cd[(arg4 + 36)]].field_2048 = 0 / (997 * stor1[cd[(arg4 + 36)]].field_2304) + (1000 * ext_call.return_data[50 len 14])
                        else:
                            if 997 * ext_call.return_data[18 len 14] * stor1[cd[(arg4 + 36)]].field_2304 / 997 * stor1[cd[(arg4 + 36)]].field_2304 != ext_call.return_data[18 len 14]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not ext_call.return_data[50 len 14]:
                                if 997 * stor1[cd[(arg4 + 36)]].field_2304 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 997 * stor1[cd[(arg4 + 36)]].field_2304
                                stor1[cd[(arg4 + 36)]].field_2048 = 997 * ext_call.return_data[18 len 14] * stor1[cd[(arg4 + 36)]].field_2304 / 997 * stor1[cd[(arg4 + 36)]].field_2304
                            else:
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if (997 * stor1[cd[(arg4 + 36)]].field_2304) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require (997 * stor1[cd[(arg4 + 36)]].field_2304) + (1000 * ext_call.return_data[50 len 14])
                                stor1[cd[(arg4 + 36)]].field_2048 = 997 * ext_call.return_data[18 len 14] * stor1[cd[(arg4 + 36)]].field_2304 / (997 * stor1[cd[(arg4 + 36)]].field_2304) + (1000 * ext_call.return_data[50 len 14])
            else:
                if stor1[cd[(arg4 + 36)]].field_2048 <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_OUTPUT_AMOUNT'
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                if not ext_call.return_data[50 len 14]:
                    if stor1[cd[(arg4 + 36)]].field_2048 > ext_call.return_data[18 len 14]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_call.return_data[18 len 14] - stor1[cd[(arg4 + 36)]].field_2048
                    if (997 * ext_call.return_data[18 len 14]) - (997 * stor1[cd[(arg4 + 36)]].field_2048) / ext_call.return_data[18 len 14] - stor1[cd[(arg4 + 36)]].field_2048 != 997:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require (997 * ext_call.return_data[18 len 14]) - (997 * stor1[cd[(arg4 + 36)]].field_2048)
                    if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * stor1[cd[(arg4 + 36)]].field_2048)) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * stor1[cd[(arg4 + 36)]].field_2048):
                        revert with 0, 'SafeMath: addition overflow'
                    stor1[cd[(arg4 + 36)]].field_2304 = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * stor1[cd[(arg4 + 36)]].field_2048)) + 1
                else:
                    if stor1[cd[(arg4 + 36)]].field_2048 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != stor1[cd[(arg4 + 36)]].field_2048:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not stor1[cd[(arg4 + 36)]].field_2048 * ext_call.return_data[50 len 14]:
                        if stor1[cd[(arg4 + 36)]].field_2048 > ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[18 len 14] - stor1[cd[(arg4 + 36)]].field_2048
                        if (997 * ext_call.return_data[18 len 14]) - (997 * stor1[cd[(arg4 + 36)]].field_2048) / ext_call.return_data[18 len 14] - stor1[cd[(arg4 + 36)]].field_2048 != 997:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require (997 * ext_call.return_data[18 len 14]) - (997 * stor1[cd[(arg4 + 36)]].field_2048)
                        if (0 / (997 * ext_call.return_data[18 len 14]) - (997 * stor1[cd[(arg4 + 36)]].field_2048)) + 1 < 0 / (997 * ext_call.return_data[18 len 14]) - (997 * stor1[cd[(arg4 + 36)]].field_2048):
                            revert with 0, 'SafeMath: addition overflow'
                        stor1[cd[(arg4 + 36)]].field_2304 = (0 / (997 * ext_call.return_data[18 len 14]) - (997 * stor1[cd[(arg4 + 36)]].field_2048)) + 1
                    else:
                        if 1000 * stor1[cd[(arg4 + 36)]].field_2048 * ext_call.return_data[50 len 14] / stor1[cd[(arg4 + 36)]].field_2048 * ext_call.return_data[50 len 14] != 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor1[cd[(arg4 + 36)]].field_2048 > ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[18 len 14] - stor1[cd[(arg4 + 36)]].field_2048
                        if (997 * ext_call.return_data[18 len 14]) - (997 * stor1[cd[(arg4 + 36)]].field_2048) / ext_call.return_data[18 len 14] - stor1[cd[(arg4 + 36)]].field_2048 != 997:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require (997 * ext_call.return_data[18 len 14]) - (997 * stor1[cd[(arg4 + 36)]].field_2048)
                        if (1000 * stor1[cd[(arg4 + 36)]].field_2048 * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * stor1[cd[(arg4 + 36)]].field_2048)) + 1 < 1000 * stor1[cd[(arg4 + 36)]].field_2048 * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * stor1[cd[(arg4 + 36)]].field_2048):
                            revert with 0, 'SafeMath: addition overflow'
                        stor1[cd[(arg4 + 36)]].field_2304 = (1000 * stor1[cd[(arg4 + 36)]].field_2048 * ext_call.return_data[50 len 14] / (997 * ext_call.return_data[18 len 14]) - (997 * stor1[cd[(arg4 + 36)]].field_2048)) + 1
        else:
            if stor1[cd[(arg4 + 36)]].field_2304 != 0:
                if not stor1[cd[(arg4 + 36)]].field_2048:
                    if stor1[cd[(arg4 + 36)]].field_2304 <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_INPUT_AMOUNT'
                    if ext_call.return_data[18 len 14] <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                    if ext_call.return_data[50 len 14] <= 0:
                        revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                    if not stor1[cd[(arg4 + 36)]].field_2304:
                        require ext_call.return_data[18 len 14]
                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        require 1000 * ext_call.return_data[18 len 14]
                        stor1[cd[(arg4 + 36)]].field_2048 = 0 / 1000 * ext_call.return_data[18 len 14]
                    else:
                        if 997 * stor1[cd[(arg4 + 36)]].field_2304 / stor1[cd[(arg4 + 36)]].field_2304 != 997:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not 997 * stor1[cd[(arg4 + 36)]].field_2304:
                            if not ext_call.return_data[18 len 14]:
                                if 997 * stor1[cd[(arg4 + 36)]].field_2304 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 997 * stor1[cd[(arg4 + 36)]].field_2304
                                stor1[cd[(arg4 + 36)]].field_2048 = 0 / 997 * stor1[cd[(arg4 + 36)]].field_2304
                            else:
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if (997 * stor1[cd[(arg4 + 36)]].field_2304) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require (997 * stor1[cd[(arg4 + 36)]].field_2304) + (1000 * ext_call.return_data[18 len 14])
                                stor1[cd[(arg4 + 36)]].field_2048 = 0 / (997 * stor1[cd[(arg4 + 36)]].field_2304) + (1000 * ext_call.return_data[18 len 14])
                        else:
                            if 997 * ext_call.return_data[50 len 14] * stor1[cd[(arg4 + 36)]].field_2304 / 997 * stor1[cd[(arg4 + 36)]].field_2304 != ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not ext_call.return_data[18 len 14]:
                                if 997 * stor1[cd[(arg4 + 36)]].field_2304 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                require 997 * stor1[cd[(arg4 + 36)]].field_2304
                                stor1[cd[(arg4 + 36)]].field_2048 = 997 * ext_call.return_data[50 len 14] * stor1[cd[(arg4 + 36)]].field_2304 / 997 * stor1[cd[(arg4 + 36)]].field_2304
                            else:
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if (997 * stor1[cd[(arg4 + 36)]].field_2304) + (1000 * ext_call.return_data[18 len 14]) < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                require (997 * stor1[cd[(arg4 + 36)]].field_2304) + (1000 * ext_call.return_data[18 len 14])
                                stor1[cd[(arg4 + 36)]].field_2048 = 997 * ext_call.return_data[50 len 14] * stor1[cd[(arg4 + 36)]].field_2304 / (997 * stor1[cd[(arg4 + 36)]].field_2304) + (1000 * ext_call.return_data[18 len 14])
            else:
                if stor1[cd[(arg4 + 36)]].field_2048 <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_OUTPUT_AMOUNT'
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0, 'JoeLibrary: INSUFFICIENT_LIQUIDITY'
                if not ext_call.return_data[18 len 14]:
                    if stor1[cd[(arg4 + 36)]].field_2048 > ext_call.return_data[50 len 14]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_call.return_data[50 len 14] - stor1[cd[(arg4 + 36)]].field_2048
                    if (997 * ext_call.return_data[50 len 14]) - (997 * stor1[cd[(arg4 + 36)]].field_2048) / ext_call.return_data[50 len 14] - stor1[cd[(arg4 + 36)]].field_2048 != 997:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require (997 * ext_call.return_data[50 len 14]) - (997 * stor1[cd[(arg4 + 36)]].field_2048)
                    if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * stor1[cd[(arg4 + 36)]].field_2048)) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * stor1[cd[(arg4 + 36)]].field_2048):
                        revert with 0, 'SafeMath: addition overflow'
                    stor1[cd[(arg4 + 36)]].field_2304 = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * stor1[cd[(arg4 + 36)]].field_2048)) + 1
                else:
                    if stor1[cd[(arg4 + 36)]].field_2048 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != stor1[cd[(arg4 + 36)]].field_2048:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not stor1[cd[(arg4 + 36)]].field_2048 * ext_call.return_data[18 len 14]:
                        if stor1[cd[(arg4 + 36)]].field_2048 > ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[50 len 14] - stor1[cd[(arg4 + 36)]].field_2048
                        if (997 * ext_call.return_data[50 len 14]) - (997 * stor1[cd[(arg4 + 36)]].field_2048) / ext_call.return_data[50 len 14] - stor1[cd[(arg4 + 36)]].field_2048 != 997:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require (997 * ext_call.return_data[50 len 14]) - (997 * stor1[cd[(arg4 + 36)]].field_2048)
                        if (0 / (997 * ext_call.return_data[50 len 14]) - (997 * stor1[cd[(arg4 + 36)]].field_2048)) + 1 < 0 / (997 * ext_call.return_data[50 len 14]) - (997 * stor1[cd[(arg4 + 36)]].field_2048):
                            revert with 0, 'SafeMath: addition overflow'
                        stor1[cd[(arg4 + 36)]].field_2304 = (0 / (997 * ext_call.return_data[50 len 14]) - (997 * stor1[cd[(arg4 + 36)]].field_2048)) + 1
                    else:
                        if 1000 * stor1[cd[(arg4 + 36)]].field_2048 * ext_call.return_data[18 len 14] / stor1[cd[(arg4 + 36)]].field_2048 * ext_call.return_data[18 len 14] != 1000:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if stor1[cd[(arg4 + 36)]].field_2048 > ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_call.return_data[50 len 14] - stor1[cd[(arg4 + 36)]].field_2048
                        if (997 * ext_call.return_data[50 len 14]) - (997 * stor1[cd[(arg4 + 36)]].field_2048) / ext_call.return_data[50 len 14] - stor1[cd[(arg4 + 36)]].field_2048 != 997:
                            revert with 0, 'SafeMath: multiplication overflow'
                        require (997 * ext_call.return_data[50 len 14]) - (997 * stor1[cd[(arg4 + 36)]].field_2048)
                        if (1000 * stor1[cd[(arg4 + 36)]].field_2048 * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * stor1[cd[(arg4 + 36)]].field_2048)) + 1 < 1000 * stor1[cd[(arg4 + 36)]].field_2048 * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * stor1[cd[(arg4 + 36)]].field_2048):
                            revert with 0, 'SafeMath: addition overflow'
                        stor1[cd[(arg4 + 36)]].field_2304 = (1000 * stor1[cd[(arg4 + 36)]].field_2048 * ext_call.return_data[18 len 14] / (997 * ext_call.return_data[50 len 14]) - (997 * stor1[cd[(arg4 + 36)]].field_2048)) + 1
        mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 160] = cd[(arg4 + 36)] + 1
        mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 192] = 64
        mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 224] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 256 len ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)])] = call.data[arg4 + cd[(arg4 + 68)] + 68 len cd[(arg4 + cd[(arg4 + 68)] + 36)]], mem[cd[(arg4 + cd[(arg4 + 68)] + 36)] + 128 len ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) - cd[(arg4 + cd[(arg4 + 68)] + 36)]]
        if ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) > cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            mem[cd[(arg4 + cd[(arg4 + 68)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 256] = 0
        mem[(2 * ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)])) + (2 * ceil32(return_data.size)) + 256] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        if stor1[cd[(arg4 + 36)]].field_1536 == address(_14):
            mem[(2 * ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)])) + (2 * ceil32(return_data.size)) + 260] = stor1[cd[(arg4 + 36)]].field_2048
            mem[(2 * ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)])) + (2 * ceil32(return_data.size)) + 292] = 0
            mem[(2 * ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)])) + (2 * ceil32(return_data.size)) + 324] = this.address
            mem[(2 * ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)])) + (2 * ceil32(return_data.size)) + 356] = 128
            mem[(2 * ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)])) + (2 * ceil32(return_data.size)) + 388] = ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 96
            mem[(2 * ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)])) + (2 * ceil32(return_data.size)) + 420 len ceil32(ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)])) + 3] = mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 160 len ceil32(ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)])) + 3]
            if ceil32(ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)])) + 3 > ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 96:
                mem[(4 * ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)])) + (2 * ceil32(return_data.size)) + 516] = 0
            require ext_code.size(stor1[cd[(arg4 + 36)]].field_1280)
            call stor1[cd[(arg4 + 36)]].field_1280.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args stor1[cd[(arg4 + 36)]].field_2048, 0, address(this.address), 128, ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 96, mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 160 len ceil32(ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)])) + 3]
        else:
            mem[(2 * ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)])) + (2 * ceil32(return_data.size)) + 260] = 0
            mem[(2 * ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)])) + (2 * ceil32(return_data.size)) + 292] = stor1[cd[(arg4 + 36)]].field_2048
            mem[(2 * ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)])) + (2 * ceil32(return_data.size)) + 324] = this.address
            mem[(2 * ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)])) + (2 * ceil32(return_data.size)) + 356] = 128
            mem[(2 * ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)])) + (2 * ceil32(return_data.size)) + 388] = ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 96
            mem[(2 * ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)])) + (2 * ceil32(return_data.size)) + 420 len ceil32(ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)])) + 3] = mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 160 len ceil32(ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)])) + 3]
            if ceil32(ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)])) + 3 > ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 96:
                mem[(4 * ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)])) + (2 * ceil32(return_data.size)) + 516] = 0
            require ext_code.size(stor1[cd[(arg4 + 36)]].field_1280)
            call stor1[cd[(arg4 + 36)]].field_1280.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, stor1[cd[(arg4 + 36)]].field_2048, address(this.address), 128, ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 96, mem[ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (2 * ceil32(return_data.size)) + 160 len ceil32(ceil32(cd[(arg4 + cd[(arg4 + 68)] + 36)])) + 3]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
