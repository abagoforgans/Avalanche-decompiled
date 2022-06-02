contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function getSelector(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    return Mask(32, 224, sha3(arg1[all]))
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_80610936(?) payable {
    require calldata.size - 4 >= 192
    require cd[100] == address(cd[100])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require (32 * ('cd', 132).length) + 128 <= test266151307() and (32 * ('cd', 132).length) + 128 >= 96
    require calldata.size >= cd[132] + (32 * ('cd', 132).length) + 36
    s = cd[132] + 36
    idx = 0
    t = 128
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    require ('cd', 164).length <= test266151307()
    require (32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 160 <= test266151307() and (32 * ('cd', 164).length) + 160 >= 128
    mem[(32 * ('cd', 132).length) + 128] = ('cd', 164).length
    require calldata.size >= cd[164] + (32 * ('cd', 164).length) + 36
    s = cd[164] + 36
    idx = 0
    t = (32 * ('cd', 132).length) + 160
    while idx < ('cd', 164).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    if stor0 != msg.sender:
        revert with 0, 'Not Allowed'
    require 0 < ('cd', 132).length
    require 0 < ('cd', 164).length
    mem[(32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 164] = mem[(32 * ('cd', 132).length) + 172 len 20]
    mem[(32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 196] = cd[4]
    require ext_code.size(address(cd[100]))
    call address(cd[100]).0xa9059cbb with:
         gas gas_remaining wei
        args mem[(32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 164], cd[4]
    mem[(32 * ('cd', 132).length) + (32 * ('cd', 164).length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require 0 < ('cd', 164).length
    if address(cd[100]) == mem[140 len 20]:
        _93 = mem[(32 * ('cd', 132).length) + 160]
        require 1 < ('cd', 164).length
        _97 = mem[(32 * ('cd', 132).length) + 192]
        mem[(32 * ('cd', 132).length) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[(32 * ('cd', 132).length) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 164] = 0
        mem[(32 * ('cd', 132).length) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 196] = cd[68]
        require ext_code.size(address(_93))
        call address(_93).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, cd[68], address(_97), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require 1 < ('cd', 164).length
        require ext_code.size(mem[(32 * ('cd', 132).length) + 204 len 20])
        call mem[(32 * ('cd', 132).length) + 204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args cd[36], 0, address(this.address), 128, 0
    else:
        _96 = mem[(32 * ('cd', 132).length) + 160]
        require 1 < ('cd', 164).length
        _100 = mem[(32 * ('cd', 132).length) + 192]
        mem[(32 * ('cd', 132).length) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
        mem[(32 * ('cd', 132).length) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 164] = cd[68]
        mem[(32 * ('cd', 132).length) + (32 * ('cd', 164).length) + ceil32(return_data.size) + 196] = 0
        require ext_code.size(address(_96))
        call address(_96).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args cd[68], 0, address(_100), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require 1 < ('cd', 164).length
        require ext_code.size(mem[(32 * ('cd', 132).length) + 204 len 20])
        call mem[(32 * ('cd', 132).length) + 204 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, cd[36], address(this.address), 128, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
