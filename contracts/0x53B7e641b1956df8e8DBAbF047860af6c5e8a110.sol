contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function withdraw() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require eth.balance(this.address) >= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_5dd65ebf(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    mem[100] = address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).getTroveStatus(address arg1) with:
            gas gas_remaining wei
           args address(arg2)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] != 1:
        revert with 0, 'E0'
    mem[ceil32(return_data.size) + 96] = 0x2f86556800000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = address(arg2)
    require ext_code.size(address(arg1))
    call address(arg1).liquidate(address arg1) with:
         gas gas_remaining wei
        args address(arg2)
    if ext_call.success:
    if return_data.size <= 3:
        revert with 0, 'E3'
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
        revert with 0, 'E3'
    if return_data.size < 68:
        revert with 0, 'E3'
    mem[ceil32(return_data.size) + 96 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if 0, address(arg2) << 64 > test266151307() or 0, address(arg2) << 64 + 36 > return_data.size:
        revert with 0, 'E3'
    if mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96] > test266151307():
        revert with 0, 'E3'
    if 0, address(arg2) << 64 + mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96] + 32 > return_data.size - 4:
        revert with 0, 'E3'
    if ceil32(return_data.size) + floor32(0, address(arg2) << 64 + mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96] + 31) + 97 > test266151307() or floor32(0, address(arg2) << 64 + mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96] + 31) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(0, address(arg2) << 64 + mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96] + 31) + 97
    if not ceil32(return_data.size) + 0, address(arg2) << 64 + 96:
        revert with 0, 'E3'
    _35 = mem[64]
    _39 = mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96]
    mem[mem[64] + 32 len ceil32(mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96])] = mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 128 len ceil32(mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96])]
    if ceil32(_39) <= _39:
        _72 = mem[64]
        mem[mem[64]] = _39
        mem[64] = mem[64] + _39 + 32
        if sha3(mem[_72 + 32 len mem[_72]]) == 0x7d658b50b587f33d05d4f70b673e160265ffffef0c3c89a0367070d96f910b97:
            revert with 0, 'E1'
        mem[_35 + _39 + 32] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_35 + _39 + 36] = 32
        _82 = mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96]
        mem[_35 + _39 + 68] = mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96]
        mem[_35 + _39 + 100 len ceil32(_82)] = mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 128 len ceil32(_82)]
        if ceil32(_82) > _82:
            mem[_35 + _39 + _82 + 100] = 0
        revert with 0, 32, mem[_35 + _39 + 68 len ceil32(_82) + 32]
    mem[mem[64] + _39 + 32] = 0
    _77 = mem[64]
    mem[mem[64]] = _39
    mem[64] = mem[64] + _39 + 32
    if sha3(mem[_77 + 32 len mem[_77]]) == 0x7d658b50b587f33d05d4f70b673e160265ffffef0c3c89a0367070d96f910b97:
        revert with 0, 'E1'
    mem[_35 + _39 + 32] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_35 + _39 + 36] = 32
    _83 = mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96]
    mem[_35 + _39 + 68] = mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 96]
    mem[_35 + _39 + 100 len ceil32(_83)] = mem[ceil32(return_data.size) + 0, address(arg2) << 64 + 128 len ceil32(_83)]
    if ceil32(_83) > _83:
        mem[_35 + _39 + _83 + 100] = 0
    revert with 0, 32, mem[_35 + _39 + 68 len ceil32(_83) + 32]
}

function sub_093defd0(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 36).length) + 97 > test266151307() or floor32(('cd', 36).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if ('cd', 36).length != 1:
        mem[floor32(('cd', 36).length) + 97] = 0xe369e4ab00000000000000000000000000000000000000000000000000000000
        mem[floor32(('cd', 36).length) + 101] = 64
        mem[floor32(('cd', 36).length) + 165] = ('cd', 36).length
        idx = 0
        s = 128
        t = floor32(('cd', 36).length) + 197
        while idx < ('cd', 36).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(cd[4]))
        call address(cd[4]).0xe369e4ab with:
             gas gas_remaining wei
            args Array(len=('cd', 36).length, data=mem[floor32(('cd', 36).length) + 197 len 32 * ('cd', 36).length]), owner
        if ext_call.success:
        if return_data.size <= 3:
            revert with 0, 'E3'
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'E3'
        if return_data.size < 68:
            revert with 0, 'E3'
        if not bool(36 <= return_data.size):
            revert with 0, 'E3'
        if 3815367851, 0 > test266151307():
            revert with 0, 'E3'
        if 3815367851, 0 + 32 > return_data.size - 4:
            revert with 0, 'E3'
        if floor32(('cd', 36).length) + ceil32(3815367851, 0) + 98 > test266151307() or ceil32(3815367851, 0) + 98 < 97:
            revert with 'NH{q', 65
        if floor32(('cd', 36).length) + 97:
            if sha3(None) == 0x7d658b50b587f33d05d4f70b673e160265ffffef0c3c89a0367070d96f910b97:
                revert with 0, 'E1'
            revert with 0, '', None
        if return_data.size:
            revert with 0, 'E3'
        revert with Error(string arg1), 'E3'
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    _143 = mem[128]
    mem[floor32(('cd', 36).length) + 101] = mem[140 len 20]
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).getTroveStatus(address arg1) with:
            gas gas_remaining wei
           args address(_143)
    mem[floor32(('cd', 36).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(('cd', 36).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] != 1:
        revert with 0, 'E0'
    mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97] = 0x2f86556800000000000000000000000000000000000000000000000000000000
    mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 101] = address(_143)
    require ext_code.size(address(cd[4]))
    call address(cd[4]).liquidate(address arg1) with:
         gas gas_remaining wei
        args address(_143)
    if ext_call.success:
    if return_data.size <= 3:
        revert with 0, 'E3'
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
        revert with 0, 'E3'
    if return_data.size < 68:
        revert with 0, 'E3'
    mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 97 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if 0, address(_143) << 64 > test266151307() or 0, address(_143) << 64 + 36 > return_data.size:
        revert with 0, 'E3'
    if mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 0, address(_143) << 64 + 97] > test266151307():
        revert with 0, 'E3'
    if 0, address(_143) << 64 + mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 0, address(_143) << 64 + 97] + 32 > return_data.size - 4:
        revert with 0, 'E3'
    if floor32(('cd', 36).length) + ceil32(return_data.size) + floor32(0, address(_143) << 64 + mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 0, address(_143) << 64 + 97] + 31) + 98 > test266151307() or floor32(0, address(_143) << 64 + mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 0, address(_143) << 64 + 97] + 31) + 98 < 97:
        revert with 'NH{q', 65
    mem[64] = floor32(('cd', 36).length) + ceil32(return_data.size) + floor32(0, address(_143) << 64 + mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 0, address(_143) << 64 + 97] + 31) + 98
    if not floor32(('cd', 36).length) + ceil32(return_data.size) + 0, address(_143) << 64 + 97:
        revert with 0, 'E3'
    _222 = mem[64]
    _231 = mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 0, address(_143) << 64 + 97]
    mem[mem[64] + 32 len ceil32(mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 0, address(_143) << 64 + 97])] = mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 0, address(_143) << 64 + 129 len ceil32(mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 0, address(_143) << 64 + 97])]
    if ceil32(_231) <= _231:
        _282 = mem[64]
        mem[mem[64]] = _231
        mem[64] = mem[64] + _231 + 32
        if sha3(mem[_282 + 32 len mem[_282]]) == 0x7d658b50b587f33d05d4f70b673e160265ffffef0c3c89a0367070d96f910b97:
            revert with 0, 'E1'
        mem[_222 + _231 + 32] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_222 + _231 + 36] = 32
        _293 = mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 0, address(_143) << 64 + 97]
        mem[_222 + _231 + 68] = mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 0, address(_143) << 64 + 97]
        mem[_222 + _231 + 100 len ceil32(_293)] = mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 0, address(_143) << 64 + 129 len ceil32(_293)]
        if ceil32(_293) > _293:
            mem[_222 + _231 + _293 + 100] = 0
        revert with 0, 32, mem[_222 + _231 + 68 len ceil32(_293) + 32]
    mem[mem[64] + _231 + 32] = 0
    _287 = mem[64]
    mem[mem[64]] = _222 + _231 - mem[64]
    mem[64] = _222 + _231 + 32
    if sha3(mem[_287 + 32 len mem[_287]]) == 0x7d658b50b587f33d05d4f70b673e160265ffffef0c3c89a0367070d96f910b97:
        revert with 0, 'E1'
    mem[_222 + _231 + 32] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_222 + _231 + 36] = 32
    _294 = mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 0, address(_143) << 64 + 97]
    mem[_222 + _231 + 68] = mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 0, address(_143) << 64 + 97]
    mem[_222 + _231 + 100 len ceil32(_294)] = mem[floor32(('cd', 36).length) + ceil32(return_data.size) + 0, address(_143) << 64 + 129 len ceil32(_294)]
    if ceil32(_294) > _294:
        mem[_222 + _231 + _294 + 100] = 0
    revert with 0, 32, mem[_222 + _231 + 68 len ceil32(_294) + 32]
}



}
