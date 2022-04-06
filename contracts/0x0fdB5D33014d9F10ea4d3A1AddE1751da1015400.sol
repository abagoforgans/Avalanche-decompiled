contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


uint8 stor0;
address stor0;
address owner; offset 8
array of address stor1;
uint256 amountOut;
uint256 times;
array of struct stor4;

function getAmountOut() {
    return amountOut
}

function getOwner() {
    require msg.sender == owner
    return owner
}

function getRouter() {
    return stor1.length
}

function getTimes() {
    return times
}

function invest() payable {
  stop
}

function _fallback() payable {
  stop
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor1.length = arg1
}

function getRecursive() {
    require msg.sender == owner
    if bool(uint8(stor0.field_0)) != 1:
        return 0
    return 1
}

function setRecursive(bool arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    uint8(stor0.field_0) = uint8(arg1)
}

function retireBalance() {
    require msg.sender == owner
    require ext_code.size(this.address)
    staticcall this.address.0x12065fe0 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call owner with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getPath() {
    require msg.sender == owner
    if not stor4.length:
        mem[(32 * stor4.length) + 128] = 32
        mem[(32 * stor4.length) + 160] = stor4.length
        mem[(32 * stor4.length) + 192 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
        return memory
          from (32 * stor4.length) + 128
           len (96 * stor4.length) + 64
    mem[128] = address(stor4.field_0)
    idx = 128
    s = 0
    while (32 * stor4.length) + 96 > idx:
        mem[idx + 32] = stor4[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor4.length) + 192 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
    return Array(len=stor4.length, data=mem[128 len floor32(stor4.length)], mem[(32 * stor4.length) + floor32(stor4.length) + 192 len (32 * stor4.length) - floor32(stor4.length)]), 
}

function subsTractBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(this.address)
    staticcall this.address.0x12065fe0 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(this.address)
    staticcall this.address.0x12065fe0 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 < ext_call.return_data[0]:
        call owner with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function configureNormal(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require msg.sender == owner
    uint8(stor0.field_0) = 0
    stor4.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor4.length > idx:
            stor4[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg1 + 36
        while arg1 + (32 * arg1.length) + 36 > idx:
            stor4[s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor4.length > idx:
            stor4[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function configureRecursive(address[] arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require msg.sender == owner
    times = arg3
    amountOut = arg2
    stor4.length = arg1.length
    if not arg1.length:
        idx = 0
        while stor4.length > idx:
            stor4[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg1 + 36
        while arg1 + (32 * arg1.length) + 36 > idx:
            stor4[s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while stor4.length > idx:
            stor4[idx].field_0 = 0
            idx = idx + 1
            continue 
    uint8(stor0.field_0) = 1
}

function makeSwap() payable {
    mem[64] = 96
    require ext_code.size(this.address)
    staticcall this.address.0x12065fe0 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    if bool(uint8(stor0.field_0)) == 1:
        idx = 0
        while idx < times:
            if gas_remaining < 150000:
            require ext_code.size(this.address)
            staticcall this.address.0x12065fe0 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _36 = mem[64]
            mem[mem[64]] = 0x8a657e6700000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = amountOut
            mem[mem[64] + 68] = owner
            mem[mem[64] + 100] = block.timestamp + 1200
            mem[mem[64] + 36] = 128
            mem[mem[64] + 132] = stor4.length
            if not stor4.length:
                require ext_code.size(stor1.length)
                call stor1.length.swapAVAXForExactTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
                    args amountOut, 128, address(stor0.field_0), block.timestamp + 1200, stor4.length
                if not ext_call.success:
                _39 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _40 = mem[_39]
                require mem[_39] <= 4294967296
                require mem[_39] + 32 <= return_data.size
                require mem[mem[_39] + _39] <= 4294967296 and mem[_39] + (32 * mem[mem[_39] + _39]) + 32 <= return_data.size
                mem[_39 + ceil32(return_data.size)] = mem[mem[_39] + _39]
                _43 = mem[_40 + _39]
                s = 0
                while s < 32 * _43:
                    mem[_39 + ceil32(return_data.size) + s + 32] = mem[_40 + _39 + s + 32]
                    s = s + 32
                    continue 
                mem[64] = (32 * _43) + _39 + ceil32(return_data.size) + 32
            else:
                mem[0] = 4
                mem[mem[64] + 164] = address(stor4.field_0)
                s = mem[64] + 164
                t = sha3(4)
                while mem[64] + (32 * stor4.length) + 164 > s + 32:
                    mem[s + 32] = stor1[t]
                    s = s + 32
                    t = t + 1
                    continue 
                require ext_code.size(stor1.length)
                call stor1.length.mem[mem[64] len 4] with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _36 + (32 * stor4.length) + -mem[64] + 160]
                if not ext_call.success:
                _55 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _56 = mem[_55]
                require mem[_55] <= 4294967296
                require mem[_55] + 32 <= return_data.size
                require mem[mem[_55] + _55] <= 4294967296 and mem[_55] + (32 * mem[mem[_55] + _55]) + 32 <= return_data.size
                mem[_55 + ceil32(return_data.size)] = mem[mem[_55] + _55]
                _59 = mem[_56 + _55]
                s = 0
                while s < 32 * _59:
                    mem[_55 + ceil32(return_data.size) + s + 32] = mem[_56 + _55 + s + 32]
                    s = s + 32
                    continue 
                mem[64] = (32 * _59) + _55 + ceil32(return_data.size) + 32
            idx = idx + 1
            continue 
    else:
        require ext_code.size(this.address)
        staticcall this.address.0x12065fe0 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
        mem[100] = 1
        mem[164] = owner
        mem[196] = block.timestamp + 1200
        mem[132] = 128
        mem[228] = stor4.length
        if not stor4.length:
            require ext_code.size(stor1.length)
            call stor1.length.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
                args 0, 1, 128, address(stor0.field_0), block.timestamp + 1200, stor4.length
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
            require ext_code.size(stor1.length)
            call stor1.length.swapExactAVAXForTokens(uint256 rg1, address[] rg2, address rg3, uint256 rg4) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
                args 0, 1, 128, address(stor0.field_0), block.timestamp + 1200, stor4.length, mem[260 len 32 * stor4.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require mem[96 len 4], 0 <= 4294967296
        require mem[96 len 4], 0 + 32 <= return_data.size
        require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
}



}
