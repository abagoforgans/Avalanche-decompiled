contract main {




// =====================  Runtime code  =====================


address sub_2faff427Address;
address owner;
uint256 balance;

function sub_2faff427(?) {
    return sub_2faff427Address
}

function owner() {
    return owner
}

function balance() {
    return balance
}

function _fallback() payable {
    revert
}

function sub_8e238ef1(?) payable {
    balance += msg.value
}

function withdraw(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Only owner can withdraw'
    if arg1 > balance:
        revert with 0, 'Insufficient Funds'
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    balance -= arg1
}

function swap() {
    mem[160] = 0x93783055f9047c2bff99c4e414501f8a147bc69
    if 3 * 10^16 >= balance:
        revert with 0, 'Insufficient Funds'
    mem[192] = 0x676528d100000000000000000000000000000000000000000000000000000000
    mem[196] = 3 * 10^16
    mem[228] = 10^18
    mem[292] = 0x6afa4c480aad3f97a392fdc36e87e45111a50df8
    mem[324] = block.timestamp
    mem[260] = 160
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(sub_2faff427Address)
    call sub_2faff427Address.swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 3 * 10^16, 10^18, 160, 0x6afa4c480aad3f97a392fdc36e87e45111a50df8, block.timestamp, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    require mem[192 len 4], 6984919 <= 4294967296
    require mem[192 len 4], 6984919 + 32 <= return_data.size
    require mem[mem[192 len 4], 6984919 + 192] <= 4294967296 and mem[192 len 4], 6984919 + (32 * mem[mem[192 len 4], 6984919 + 192]) + 32 <= return_data.size
}



}
