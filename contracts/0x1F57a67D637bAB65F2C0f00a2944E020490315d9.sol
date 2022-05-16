contract main {




// =====================  Runtime code  =====================


#
#  - sub_de332754(?)
#  - _fallback()
#
mapping of uint8 stor0;
address stor1;
address stor3;
address stor14;
address stor15;
uint256 stor16;
uint16 stor17;
uint256 stor17; offset 16
uint256 stor18;
uint256 stor19;
uint16 stor20;
uint256 stor20; offset 16

function setOwner(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor0[msg.sender]:
        revert with 0, 'Only I can do this.'
    stor0[address(arg1)] = uint8(arg2)
    if not arg2:
        stor0[address(arg1)] = 0
}

function sub_07e78888(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg4 == uint16(arg4)
    require arg6 == uint16(arg6)
    if not stor0[msg.sender]:
        revert with 0, 'Only I can do this.'
    stor16 = arg2
    uint16(stor17.field_0) = uint16(arg4)
    Mask(240, 0, stor17.field_16) = 0
    stor18 = arg3
    stor19 = arg5
    uint16(stor20.field_0) = uint16(arg6)
    Mask(240, 0, stor20.field_16) = 0
}

function withdrawEth(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor0[msg.sender]:
        revert with 0, 'Only I can do this.'
    if arg1 <= eth.balance(this.address):
        call msg.sender with:
           value arg1 wei
             gas gas_remaining wei
    else:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
    if not ext_call.success:
        revert with 0, '[761876] something went wrong'
    return bool(ext_call.success)
}

function updateApproval() {
    if not stor0[msg.sender]:
        revert with 0, 'Only I can do this.'
    call stor14.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    call stor15.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor1, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdraw(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg1.length) + 97
    mem[96] = arg1.length
    require (32 * arg1.length) + arg1 + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < (32 * arg1.length) + arg1 + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[msg.sender]:
        revert with 0, 'Only I can do this.'
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        _36 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        staticcall address(_36).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _39 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _40 = mem[_39]
        if mem[_39]:
            if idx >= mem[96]:
                revert with 0, 50
            _42 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _40
            call address(_42).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _40
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _45 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_45] == bool(mem[_45])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_d67351b1(?) {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require (32 * ('cd', 36).length) + cd[36] + 36 <= calldata.size
    s = 128
    idx = cd[36] + 36
    while idx < (32 * ('cd', 36).length) + cd[36] + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 0
    if not stor0[msg.sender]:
        revert with 0, 'Only I can do this.'
    mem[ceil32(32 * ('cd', 36).length) + 97] = 2
    mem[64] = ceil32(32 * ('cd', 36).length) + 193
    mem[ceil32(32 * ('cd', 36).length) + 129] = 0xb2ac04b71888e17aa2c5102cf3d0215467d74100
    mem[ceil32(32 * ('cd', 36).length) + 161] = 0xac3f978714c613e768272c502a8912bc03dcf624
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= mem[96]:
            revert with 0, 50
        _83 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = this.address
        staticcall address(_83).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _89 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _95 = mem[_89]
        if mem[_89]:
            if idx >= mem[96]:
                revert with 0, 50
            _102 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = _95
            call address(_102).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[4]), _95
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _106 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_106] == bool(mem[_106])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _113 = mem[ceil32(32 * ('cd', 36).length) + 97]
    idx = 0
    while idx < _113:
        if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
            revert with 0, 50
        _118 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
        mem[mem[64] + 4] = this.address
        staticcall address(_118).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _121 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _126 = mem[_121]
        if mem[_121]:
            if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                revert with 0, 50
            _128 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
            mem[mem[64] + 4] = address(cd[4])
            mem[mem[64] + 36] = _126
            call address(_128).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[4]), _126
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _131 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_131] == bool(mem[_131])
        if idx == -1:
            revert with 0, 17
        _113 = mem[ceil32(32 * ('cd', 36).length) + 97]
        idx = idx + 1
        continue 
    call address(cd[4]) with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    return bool(ext_call.success)
}



}
