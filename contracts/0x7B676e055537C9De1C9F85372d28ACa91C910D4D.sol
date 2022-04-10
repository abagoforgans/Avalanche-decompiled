contract main {




// =====================  Runtime code  =====================


const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7


address targetContractAddress;
address adminAddress;
uint256 count;
array of address sub_22f03136;
mapping of uint256 workers;

function count() {
    return count
}

function sub_22f03136(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_22f03136.length
    return sub_22f03136[arg1]
}

function workers(address arg1) {
    require calldata.size - 4 >= 32
    return workers[arg1]
}

function getCount() {
    return count
}

function targetContract() {
    return targetContractAddress
}

function admin() {
    return adminAddress
}

function sub_afafbf6f(?) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, '0'
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function setTargetContract(address arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, '0'
    targetContractAddress = arg1
}

function setWorker(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, '0'
    if arg2 == 1:
        sub_22f03136.length++
        sub_22f03136[sub_22f03136.length] = arg1
    workers[address(arg1)] = arg2
}

function sub_a0d065c3(?) payable {
    if workers[address(msg.sender)] != 1:
        revert with 0, '2'
    if msg.value <= 0:
        revert with 0, 'no amount'
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args targetContractAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_c76b5527(?) {
    require calldata.size - 4 >= 64
    if workers[address(msg.sender)] != 1:
        revert with 0, '2'
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args targetContractAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'no amount'
    require ext_code.size(targetContractAddress)
    call targetContractAddress.0x13794211 with:
         gas gas_remaining wei
        args 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
}

function sub_a1efa4ec(?) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if adminAddress != msg.sender:
        revert with 0, '0'
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
    call arg1 with:
       funct Mask(32, -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256
       value arg2 wei
         gas gas_remaining wei
        args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    if not ext_call.success:
        revert with 0, 'target.call failed!'
    if return_data.size:
        return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
    mem[ceil32(arg3.length) + 128] = 32
    mem[ceil32(arg3.length) + 160] = arg3.length
    mem[ceil32(arg3.length) + 192 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), 
               mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32],
               Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    mem[floor32(arg3.length) + ceil32(arg3.length) + 192] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 224 len arg3.length % 32]
    return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), 
           mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32],
           Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
           mem[(2 * ceil32(arg3.length)) + 192 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
}



}
