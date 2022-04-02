contract main {




// =====================  Runtime code  =====================


address owner;
address wnativeAddress;
address routerAddress;
address gtonAddress;
mapping of uint256 feeMin;
mapping of uint256 feePercent;

function wnative() {
    return wnativeAddress
}

function feeMin(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return feeMin[arg1[all]]
}

function owner() {
    return owner
}

function gton() {
    return gtonAddress
}

function feePercent(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return feePercent[arg1[all]]
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'ACW'
    owner = arg1
    emit SetOwner(owner, arg1);
}

function reclaimNative(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ACW'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setFees(string arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    feeMin[arg1[all]] = arg2
    feePercent[arg1[all]] = arg3
}

function reclaimERC20(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'ACW'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function lock(string arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(wnativeAddress)
    call wnativeAddress.deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[100] = routerAddress
    mem[132] = msg.value
    require ext_code.size(wnativeAddress)
    call wnativeAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args routerAddress, msg.value
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = wnativeAddress
    mem[ceil32(return_data.size) + 160] = gtonAddress
    if 3600 > !block.timestamp:
        revert with 0, 17
    mem[ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = msg.value
    mem[ceil32(return_data.size) + 228] = 0
    mem[ceil32(return_data.size) + 260] = 160
    mem[ceil32(return_data.size) + 356] = 2
    idx = 0
    s = ceil32(return_data.size) + 388
    t = ceil32(return_data.size) + 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(return_data.size) + 292] = this.address
    mem[ceil32(return_data.size) + 324] = block.timestamp + 3600
    require ext_code.size(routerAddress)
    call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args msg.value, 0, 160, address(this.address), block.timestamp + 3600, 2, mem[ceil32(return_data.size) + 388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _79 = mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32
    require mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 223 < ceil32(return_data.size) + return_data.size + 192
    _80 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 193 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 192 len 4], Mask(224, 32, msg.value) >> 32 + 192]) + 193
    mem[(2 * ceil32(return_data.size)) + 192] = _80
    require return_data.size >= _79 + (32 * _80) + 32
    mem[(2 * ceil32(return_data.size)) + 224 len 32 * _80] = mem[ceil32(return_data.size) + _79 + 224 len 32 * _80]
    _141 = mem[64]
    mem[mem[64] len arg1.length] = arg1[all]
    mem[arg1.length + mem[64]] = 5
    _143 = sha3(mem[mem[64] len arg1.length + _141 + -mem[64] + 32])
    if 1 >= _80:
        revert with 0, 50
    _145 = mem[(2 * ceil32(return_data.size)) + 256]
    if mem[(2 * ceil32(return_data.size)) + 256] and stor[sha3(mem[mem[64] len arg1.length + _141 + -mem[64] + 32])] > -1 / mem[(2 * ceil32(return_data.size)) + 256]:
        revert with 0, 17
    _146 = mem[64]
    mem[mem[64] len arg1.length] = arg1[all]
    mem[arg1.length + mem[64]] = 4
    if _145 * stor[_143] / 100000 > stor[sha3(mem[mem[64] len arg1.length + _146 + -mem[64] + 32])]:
        if 1 >= _80:
            revert with 0, 50
        _151 = mem[(2 * ceil32(return_data.size)) + 256]
        if mem[(2 * ceil32(return_data.size)) + 256] < _145 * stor[_143] / 100000:
            revert with 0, 17
        if 0 >= _80:
            revert with 0, 50
        _157 = mem[(2 * ceil32(return_data.size)) + 224]
        if 1 >= _80:
            revert with 0, 50
        _160 = mem[(2 * ceil32(return_data.size)) + 256]
        _161 = mem[64]
        mem[mem[64] len arg1.length] = arg1[all]
        mem[arg1.length + mem[64]] = 4
        _167 = sha3(mem[mem[64] len arg1.length + _161 + -mem[64] + 32])
        _168 = mem[64]
        mem[mem[64] len arg1.length] = arg1[all]
        mem[arg1.length + mem[64]] = 5
        _173 = sha3(mem[mem[64] len arg1.length + _168 + -mem[64] + 32])
        mem[mem[64]] = _157
        mem[mem[64] + 32] = _160
        mem[mem[64] + 64] = stor[_167]
        mem[mem[64] + 96] = stor[_173]
        mem[mem[64] + 128] = _145 * stor[_143] / 100000
        mem[mem[64] + 160] = _151 - (_145 * stor[_143] / 100000)
        emit CalculateFee(_157, _160, stor[_167], stor[_173], _145 * stor[_143] / 100000, _151 - (_145 * stor[_143] / 100000));
        if _151 - (_145 * stor[_143] / 100000) <= 0:
            revert with 0, 'RL1'
        mem[mem[64] len arg2.length] = arg2[all]
        mem[arg2.length + mem[64]] = 0
        _185 = mem[64]
        mem[mem[64] len arg1.length] = arg1[all]
        mem[arg1.length + mem[64]] = 0
        _191 = sha3(mem[mem[64] len arg1.length + _185 - mem[64]])
        _192 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = arg1.length
        mem[mem[64] + 128 len arg1.length] = arg1[all]
        mem[arg1.length + mem[64] + 128] = 0
        mem[mem[64] + 32] = ceil32(arg1.length) + 128
        mem[_192 + ceil32(arg1.length) + 128] = arg2.length
        mem[_192 + ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
        mem[arg2.length + _192 + ceil32(arg1.length) + 160] = 0
        mem[_192 + 64] = _151 - (_145 * stor[_143] / 100000)
        emit Lock(string rg1, bytes rg2, string rg3, bytes rg4, uint256 rg5):
                  mem[mem[64] len _192 + ceil32(arg1.length) + ceil32(arg2.length) + -mem[64] + 160],
                  _191,
                  sha3(arg2[all]),
    else:
        _149 = mem[64]
        mem[mem[64] len arg1.length] = arg1[all]
        mem[arg1.length + mem[64]] = 4
        _153 = sha3(mem[mem[64] len arg1.length + _149 + -mem[64] + 32])
        if 1 >= _80:
            revert with 0, 50
        _155 = mem[(2 * ceil32(return_data.size)) + 256]
        if mem[(2 * ceil32(return_data.size)) + 256] < stor[sha3(mem[mem[64] len arg1.length + _149 + -mem[64] + 32])]:
            revert with 0, 17
        if 0 >= _80:
            revert with 0, 50
        _162 = mem[(2 * ceil32(return_data.size)) + 224]
        if 1 >= _80:
            revert with 0, 50
        _164 = mem[(2 * ceil32(return_data.size)) + 256]
        _165 = mem[64]
        mem[mem[64] len arg1.length] = arg1[all]
        mem[arg1.length + mem[64]] = 4
        _170 = sha3(mem[mem[64] len arg1.length + _165 + -mem[64] + 32])
        _171 = mem[64]
        mem[mem[64] len arg1.length] = arg1[all]
        mem[arg1.length + mem[64]] = 5
        _178 = sha3(mem[mem[64] len arg1.length + _171 + -mem[64] + 32])
        mem[mem[64]] = _162
        mem[mem[64] + 32] = _164
        mem[mem[64] + 64] = stor[_170]
        mem[mem[64] + 96] = stor[_178]
        mem[mem[64] + 128] = _145 * stor[_143] / 100000
        mem[mem[64] + 160] = _155 - stor[_153]
        emit CalculateFee(_162, _164, stor[_170], stor[_178], _145 * stor[_143] / 100000, _155 - stor[_153]);
        if _155 - stor[_153] <= 0:
            revert with 0, 'RL1'
        mem[mem[64] len arg2.length] = arg2[all]
        mem[arg2.length + mem[64]] = 0
        _189 = mem[64]
        mem[mem[64] len arg1.length] = arg1[all]
        mem[arg1.length + mem[64]] = 0
        _194 = sha3(mem[mem[64] len arg1.length + _189 - mem[64]])
        _195 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = arg1.length
        mem[mem[64] + 128 len arg1.length] = arg1[all]
        mem[arg1.length + mem[64] + 128] = 0
        mem[mem[64] + 32] = ceil32(arg1.length) + 128
        mem[_195 + ceil32(arg1.length) + 128] = arg2.length
        mem[_195 + ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
        mem[arg2.length + _195 + ceil32(arg1.length) + 160] = 0
        mem[_195 + 64] = _155 - stor[_153]
        emit Lock(string rg1, bytes rg2, string rg3, bytes rg4, uint256 rg5):
                  mem[mem[64] len _195 + ceil32(arg1.length) + ceil32(arg2.length) + -mem[64] + 160],
                  _194,
                  sha3(arg2[all]),
}



}
