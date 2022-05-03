contract main {




// =====================  Runtime code  =====================


#
#  - sub_1b34a86e(?)
#  - sub_6b6f320e(?)
#  - sub_c007acca(?)
#  - sub_e3e7edc0(?)
#  - sub_e85e187e(?)
#
uint8 stor0;
uint256 stor1;
mapping of uint8 stor2;

function sub_044ec7ad(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor2[address(arg1)])
}

function _fallback() payable {
  stop
}

function sub_855ec0ef(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor2[msg.sender]:
        revert with 0, 'ERR_NOT_ALLOWED_OWNER'
    stor1 = arg1
}

function sub_73589f8c(?) {
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0], stor1
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        return eth.balance(this.address)
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_8dbe9b22(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not stor2[msg.sender]:
        revert with 0, 'ERR_NOT_ALLOWED_OWNER'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 2
        stor2[address(cd[((32 * idx) + cd[4] + 36)])] = 0
        idx = idx + 1
        continue 
}

function sub_a2763cac(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not stor2[msg.sender]:
        revert with 0, 'ERR_NOT_ALLOWED_OWNER'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 2
        stor2[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        idx = idx + 1
        continue 
}

function sub_6d18b9f5(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == cd[36]
    if not stor2[msg.sender]:
        revert with 0, 'ERR_NOT_ALLOWED_OWNER'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 2
        stor2[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        idx = idx + 1
        continue 
    stor1 = cd[36]
    stor0 = 0
}

function sub_525aa434(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor0:
        revert with 0, 'CONTRACT_NOT_CONFIGURATED'
    if stor1 <= 0:
        revert with 0, 'NULL_MIN_PROFIT'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 2
        if not stor2[address(cd[((32 * idx) + cd[4] + 36)])]:
            revert with 0, 'WRONG_OWNER'
        idx = idx + 1
        continue 
    return 1
}

function sub_1c61069c(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if not stor2[msg.sender]:
        revert with 0, 'ERR_NOT_ALLOWED_OWNER'
    if address(arg1) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        call msg.sender with:
           value arg2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'ERR_TRANSFER_FAILED'
    else:
        require ext_code.size(address(arg1))
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_068331f5(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == cd[36]
    mem[0] = msg.sender
    mem[32] = 2
    if not stor2[msg.sender]:
        revert with 0, 'ERR_NOT_ALLOWED_OWNER'
    mem[100] = this.address
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    staticcall 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ('cd', 4).length * cd[36] >= ext_call.return_data[0]:
        revert with 0, 'TOO_LARGE_AMOUNT'
    mem[ceil32(return_data.size) + 96] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = ('cd', 4).length * cd[36]
    require ext_code.size(0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7)
    call 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7.0x2e1a7d4d with:
         gas gas_remaining wei
        args (('cd', 4).length * cd[36])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        _27 = mem[64]
        mem[mem[64]] = 0
        mem[64] = mem[64] + 32
        s = 0
        while s < mem[_27]:
            s = s + 32
            continue 
        if ceil32(mem[_27]) <= mem[_27]:
            call address(cd[((32 * idx) + cd[4] + 36)]) with:
               value cd[36] wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len mem[_27] + _27 + -mem[64] + 28]
            if return_data.size:
                _44 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_44] = return_data.size
                mem[_44 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[_27 + mem[_27] + 32] = 0
            call address(cd[((32 * idx) + cd[4] + 36)]) with:
               value cd[36] wei
                 gas gas_remaining wei
                args mem[mem[64] + 4 len mem[_27] + _27 + -mem[64] + 28]
            if return_data.size:
                _46 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_46] = return_data.size
                mem[_46 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'ERR_TRANSFER_FAILED'
        idx = idx + 1
        continue 
}



}
