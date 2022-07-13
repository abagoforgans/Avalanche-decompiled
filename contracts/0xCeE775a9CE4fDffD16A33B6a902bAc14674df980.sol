contract main {




// =====================  Runtime code  =====================


uint256 fee;
uint256 referrerFee;
uint256 addressLimit;
uint8 stor3; offset 160
uint8 stor3; offset 168
uint128 stor3; offset 160
address owner;

function ReferrerFee() {
    return referrerFee
}

function AddressLimit() {
    return addressLimit
}

function AllowReffer() {
    return bool(uint8(stor3.field_160))
}

function owner() {
    return owner
}

function fee() {
    return fee
}

function lock() {
    return bool(uint8(stor3.field_168))
}

function _fallback() payable {
    revert
}

function TransferOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = arg1
}

function SetFee(bool arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if fee < referrerFee:
        revert with 0, 'fee must >=ReferrerFee'
    Mask(96, 0, stor3.field_160) = Mask(96, 0, arg1)
    fee = arg2
    referrerFee = arg3
}

function TransferETH(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function multiSender(address[] arg1, uint256[] arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = 128
    idx = arg1 + 36
    while idx < arg1 + (32 * arg1.length) + 36:
        require cd[idx] == address(cd[idx])
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 98 < 97 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = arg2 + 36
    s = ceil32(32 * arg1.length) + 129
    while idx < arg2 + (32 * arg2.length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require arg3 == arg3
    require arg4 == arg4
    require not uint8(stor3.field_168)
    uint8(stor3.field_168) = 1
    if msg.value < fee:
        revert with 0, 'fee not enough'
    if arg1.length > addressLimit:
        revert with 0, 'must less than Address Limit'
    if arg1.length != arg2.length:
        revert with 0, 'must less than Address Limit'
    staticcall arg3.0x313ce567 with:
            gas gas_remaining wei
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if arg1.length != arg2.length:
        revert with 0, 'Amount of addresses or transfer values are wrong'
    idx = 0
    s = 0
    while idx < arg2.length:
        if not ext_call.return_data[31 len 1]:
            if idx >= arg2.length:
                revert with 0, 50
            if mem[(32 * idx) + ceil32(32 * arg1.length) + 129] and 1 > -1 / mem[(32 * idx) + ceil32(32 * arg1.length) + 129]:
                revert with 0, 17
            if s > !mem[(32 * idx) + ceil32(32 * arg1.length) + 129]:
                revert with 0, 17
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
            continue 
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if idx >= arg2.length:
                revert with 0, 50
            if mem[(32 * idx) + ceil32(32 * arg1.length) + 129] and 10^ext_call.return_data[31 len 1] > -1 / mem[(32 * idx) + ceil32(32 * arg1.length) + 129]:
                revert with 0, 17
            if s > !(mem[(32 * idx) + ceil32(32 * arg1.length) + 129] * 10^ext_call.return_data[31 len 1]):
                revert with 0, 17
            if not idx + 1:
                revert with 0, 17
            idx = idx + 1
            s = s + (mem[(32 * idx) + ceil32(32 * arg1.length) + 129] * 10^ext_call.return_data[31 len 1])
            continue 
        u = 10
        v = 1
        t = ext_call.return_data[31 len 1]
        while t > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(t):
                u = u * u
                v = v
                t = uint255(t) * 0.5
                continue 
            u = u * u
            v = u * v
            t = uint255(t) * 0.5
            continue 
        if v > -1 / u:
            revert with 0, 17
        if idx >= arg2.length:
            revert with 0, 50
        if mem[(32 * idx) + ceil32(32 * arg1.length) + 129] and u * v > -1 / mem[(32 * idx) + ceil32(32 * arg1.length) + 129]:
            revert with 0, 17
        if s > !(mem[(32 * idx) + ceil32(32 * arg1.length) + 129] * u * v):
            revert with 0, 17
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        s = s + (mem[(32 * idx) + ceil32(32 * arg1.length) + 129] * u * v)
        continue 
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + ceil32(return_data.size) + 102] = msg.sender
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + ceil32(return_data.size) + 134] = this.address
    staticcall arg3.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + (2 * ceil32(return_data.size)) + 98
    require return_data.size >= 32
    if ext_call.return_data[0] < s:
        revert with 0, 'Allowance is less than amounts to transfer'
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        _182 = mem[(32 * idx) + 128]
        if idx >= mem[ceil32(32 * arg1.length) + 97]:
            revert with 0, 50
        _184 = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
        if not uint8(ext_call.return_data[0]):
            if mem[(32 * idx) + ceil32(32 * arg1.length) + 129] and 1 > -1 / mem[(32 * idx) + ceil32(32 * arg1.length) + 129]:
                revert with 0, 17
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = address(_182)
            mem[mem[64] + 68] = _184
            call arg3.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(_182), _184
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _189 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_189] == bool(mem[_189])
        else:
            if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
                if mem[(32 * idx) + ceil32(32 * arg1.length) + 129] and 10^uint8(ext_call.return_data[0]) > -1 / mem[(32 * idx) + ceil32(32 * arg1.length) + 129]:
                    revert with 0, 17
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = address(_182)
                mem[mem[64] + 68] = _184 * 10^uint8(ext_call.return_data[0])
                call arg3.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(_182), _184 * 10^uint8(ext_call.return_data[0])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _193 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_193] == bool(mem[_193])
            else:
                t = 10
                u = 1
                s = uint8(ext_call.return_data[0])
                while s > 1:
                    if t > -1 / t:
                        revert with 0, 17
                    if not bool(s):
                        t = t * t
                        u = u
                        s = uint255(s) * 0.5
                        continue 
                    t = t * t
                    u = t * u
                    s = uint255(s) * 0.5
                    continue 
                if u > -1 / t:
                    revert with 0, 17
                if mem[(32 * idx) + ceil32(32 * arg1.length) + 129] and t * u > -1 / mem[(32 * idx) + ceil32(32 * arg1.length) + 129]:
                    revert with 0, 17
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = address(_182)
                mem[mem[64] + 68] = _184 * t * u
                call arg3.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(_182), _184 * t * u
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _201 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_201] == bool(mem[_201])
        if not idx + 1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if uint8(stor3.field_160):
        call arg4 with:
           value referrerFee wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    uint8(stor3.field_168) = 0
}



}
