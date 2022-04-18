contract main {




// =====================  Runtime code  =====================


uint32 stor0;
address stor0;
uint256 stor0;
address stor1;
address stor2;
uint32 stor3;
uint256 stor3; offset 32
uint256 stor3;
array of struct stor4;

function _fallback() payable {
    revert
}

function setMinAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(stor0) != msg.sender:
        revert with 0, 'UNAUTHORIZED'
    uint256(stor3.field_0) = arg1
}

function withdraw() {
    if address(stor0) != msg.sender:
        revert with 0, 'UNAUTHORIZED'
    call address(stor0) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8a21e5a5(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if address(stor0) != msg.sender:
        revert with 0, 'UNAUTHORIZED'
    stor2 = address(cd[4])
    stor4.length = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while stor4.length > idx:
            stor4[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[36] + 36
        while cd[36] + (32 * ('cd', 36).length) + 36 > idx:
            stor4[s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while stor4.length > idx:
            stor4[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_1c0babf6(?) {
    require calldata.size - 4 >= 96
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if address(stor0) != msg.sender:
        revert with 0, 'UNAUTHORIZED'
    stor2 = address(cd[4])
    stor4.length = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while stor4.length > idx:
            stor4[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[36] + 36
        while cd[36] + (32 * ('cd', 36).length) + 36 > idx:
            stor4[s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while stor4.length > idx:
            stor4[idx].field_0 = 0
            idx = idx + 1
            continue 
    uint256(stor3.field_0) = cd[68]
}

function drainToken(address arg1) {
    require calldata.size - 4 >= 32
    if address(stor0) != msg.sender:
        revert with 0, 'UNAUTHORIZED'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'ZERO_BALANCE'
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0 len 28]
    call arg1 with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TRANSFER_FAILED'
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
            revert with 0, 'TRANSFER_FAILED'
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TRANSFER_FAILED'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 'TRANSFER_FAILED'
}

function buyToken() {
    mem[96] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[100] = uint256(stor3.field_0)
    mem[164] = address(stor0)
    mem[196] = block.timestamp
    mem[132] = 128
    mem[228] = stor4.length
    if not stor4.length:
        require ext_code.size(stor1)
        call stor1.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args 0, uint32(stor3.field_0), 128, address(stor0), block.timestamp, stor4.length
    else:
        mem[0] = 4
        mem[260] = address(stor4.field_0)
        idx = 260
        s = 0
        while (32 * stor4.length) + 260 > idx + 32:
            mem[idx + 32] = stor4[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require ext_code.size(stor1)
        call stor1.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args 0, uint32(stor3.field_0), 128, address(stor0), block.timestamp, stor4.length, mem[260 len 32 * stor4.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[96 len 4], Mask(224, 0, stor3.field_32) <= 4294967296
    require mem[96 len 4], Mask(224, 0, stor3.field_32) + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 0, stor3.field_32) + 96] <= 4294967296 and mem[96 len 4], Mask(224, 0, stor3.field_32) + (32 * mem[mem[96 len 4], Mask(224, 0, stor3.field_32) + 96]) + 32 <= return_data.size
}



}
