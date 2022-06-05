contract main {




// =====================  Runtime code  =====================


#
#  - joeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address stor0;
uint256 unlockTime;

function unlockTime() {
    return unlockTime
}

function _fallback() payable {
    revert
}

function lockPool(uint256 arg1) {
    require calldata.size - 4 >= 32
}

function sub_ca92ef5f(?) {
    require calldata.size - 4 >= 96
    if stor0 != msg.sender:
        revert with 0, 'Invalid sender'
    require ext_code.size(arg1)
    call arg1.swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args arg2, arg3, address(this.address), '1'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addressToBytes(address arg1) {
    require calldata.size - 4 >= 32
    mem[116] = 0x140000000000000000000000000000000000000000 xor arg1
    mem[64] = 148
    mem[148] = 32
    mem[180] = mem[96 len 20], Mask(96, 160, 0x140000000000000000000000000000000000000000 xor arg1) >> 160
    mem[212 len ceil32(mem[96 len 20], Mask(96, 160, 0x140000000000000000000000000000000000000000 xor arg1) >> 160)] = mem[128 len ceil32(mem[96 len 20], Mask(96, 160, 0x140000000000000000000000000000000000000000 xor arg1) >> 160)]
    if not Mask(5, 160, 0x140000000000000000000000000000000000000000 xor arg1):
        return memory
          from 148
           len mem[96 len 20], Mask(96, 160, 0x140000000000000000000000000000000000000000 xor arg1) >> 160 + 64
    mem[floor32(mem[96 len 20], Mask(96, 160, 0x140000000000000000000000000000000000000000 xor arg1) >> 160) + 212] = mem[floor32(mem[96 len 20], Mask(96, 160, 0x140000000000000000000000000000000000000000 xor arg1) >> 160) + -(Mask(5, 160, 0x140000000000000000000000000000000000000000 xor arg1) >> 160) + 244 len Mask(5, 160, 0x140000000000000000000000000000000000000000 xor arg1) >> 160]
    return memory
      from 148
       len floor32(mem[96 len 20], Mask(96, 160, 0x140000000000000000000000000000000000000000 xor arg1) >> 160) + 96
}



}
