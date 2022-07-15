contract main {




// =====================  Runtime code  =====================


const sub_099199c3(?) = 106


address contractOwner;

function contractOwner() {
    return contractOwner
}

function _fallback() payable {
  stop
}

function transferNative(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if contractOwner != msg.sender:
        revert with 0, '0x701'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferERC20(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if contractOwner != msg.sender:
        revert with 0, '0x701'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_f5caf165(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if msg.sender != 0x640ac4e094f50816460eb10df015ab5b47a9ff13:
        revert with 0, '0x701'
    require 0 < ('cd', 68).length
    mem[100] = address(('cd', 68)[0])
    mem[132] = cd[36]
    require ext_code.size(address(cd[4]))
    call address(cd[4]).0xa9059cbb with:
         gas gas_remaining wei
        args address(('cd', 68)[0]), cd[36]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < ('cd', 68).length:
        require 2 * idx < ('cd', 100).length
        require (2 * idx) + 1 < ('cd', 100).length
        if idx == ('cd', 68).length - 1:
            _34 = mem[64]
            mem[64] = mem[64] + 32
            mem[_34 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_34 + 36] = cd[((64 * idx) + cd[100] + 36)]
            mem[_34 + 68] = cd[((32 * (2 * idx) + 1) + cd[100] + 36)]
            mem[_34 + 100] = this.address
            mem[_34 + 132] = 128
            mem[_34 + 164] = mem[_34]
            s = 0
            while s < mem[_34]:
                mem[s + _34 + 196] = mem[s + _34 + 32]
                s = s + 32
                continue 
            if not mem[_34] % 32:
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args cd[((64 * idx) + cd[100] + 36)], cd[((32 * (2 * idx) + 1) + cd[100] + 36)], address(this.address), 128, mem[_34 + 164 len mem[_34] + 32]
            else:
                mem[floor32(mem[_34]) + _34 + 196] = mem[floor32(mem[_34]) + _34 + -(mem[_34] % 32) + 228 len mem[_34] % 32]
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args cd[((64 * idx) + cd[100] + 36)], cd[((32 * (2 * idx) + 1) + cd[100] + 36)], address(this.address), Array(len=mem[_34], data=mem[_34 + 196 len floor32(mem[_34]) + 32])
        else:
            require idx + 1 < ('cd', 68).length
            _38 = mem[64]
            mem[64] = mem[64] + 32
            mem[_38 + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
            mem[_38 + 36] = cd[((64 * idx) + cd[100] + 36)]
            mem[_38 + 68] = cd[((32 * (2 * idx) + 1) + cd[100] + 36)]
            mem[_38 + 100] = address(cd[((32 * idx + 1) + cd[68] + 36)])
            mem[_38 + 132] = 128
            mem[_38 + 164] = mem[_38]
            s = 0
            while s < mem[_38]:
                mem[s + _38 + 196] = mem[s + _38 + 32]
                s = s + 32
                continue 
            if not mem[_38] % 32:
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args cd[((64 * idx) + cd[100] + 36)], cd[((32 * (2 * idx) + 1) + cd[100] + 36)], address(cd[((32 * idx + 1) + cd[68] + 36)]), 128, mem[_38 + 164 len mem[_38] + 32]
            else:
                mem[floor32(mem[_38]) + _38 + 196] = mem[floor32(mem[_38]) + _38 + -(mem[_38] % 32) + 228 len mem[_38] % 32]
                require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                call address(cd[((32 * idx) + cd[68] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args cd[((64 * idx) + cd[100] + 36)], cd[((32 * (2 * idx) + 1) + cd[100] + 36)], address(cd[((32 * idx + 1) + cd[68] + 36)]), Array(len=mem[_38], data=mem[_38 + 196 len floor32(mem[_38]) + 32])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    require ext_code.size(address(cd[4]))
    staticcall address(cd[4]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < cd[132]:
        revert with 0, '0x703'
}



}
