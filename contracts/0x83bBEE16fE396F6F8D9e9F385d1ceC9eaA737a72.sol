contract main {




// =====================  Runtime code  =====================


const sub_a9ea9681(?) = 1000


address owner;
address sub_8336f2c4Address;
address sub_650a21b9Address;
address sub_142e7e3fAddress;
uint256 sub_acab85ae;
uint256 sub_eead113b;
uint256 sub_2716a509;
uint256 stor7;
uint256 sub_af6bf70c;
array of uint256 sub_1f5cb64b;
array of address sub_60b663bb;
uint8 sub_13c9c43e; offset 160
uint128 stor19; offset 160
address stor19;
uint256 sub_16520ded;
uint8 sub_9442f71e;

function sub_13c9c43e(?) {
    return bool(sub_13c9c43e)
}

function sub_142e7e3f(?) {
    return sub_142e7e3fAddress
}

function sub_16520ded(?) {
    return sub_16520ded
}

function sub_1f5cb64b(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_1f5cb64b.length
    return sub_1f5cb64b[arg1]
}

function sub_2716a509(?) {
    return sub_2716a509
}

function sub_60b663bb(?) {
    if sub_60b663bb.length < 1:
        revert with 0, 17
    if sub_60b663bb.length - 1 >= sub_60b663bb.length:
        revert with 0, 50
    return sub_60b663bb[sub_60b663bb.length]
}

function sub_650a21b9(?) {
    return sub_650a21b9Address
}

function sub_8336f2c4(?) {
    return sub_8336f2c4Address
}

function owner() {
    return owner
}

function sub_9442f71e(?) {
    return bool(sub_9442f71e)
}

function allGames(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < sub_60b663bb.length
    return sub_60b663bb[arg1]
}

function sub_acab85ae(?) {
    return sub_acab85ae
}

function sub_af6bf70c(?) {
    return sub_af6bf70c
}

function sub_eead113b(?) {
    return sub_eead113b
}

function numberOfGames() {
    return sub_60b663bb.length
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_1a1af164(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2716a509 = arg1
}

function sub_1a330868(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_acab85ae = arg1
    sub_eead113b = arg2
}

function sub_9ac54912(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9442f71e = uint8(bool(arg1))
}

function sub_61ff6a3f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_142e7e3fAddress = address(arg1)
}

function sub_e3db290c(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(stor19.field_0) = address(arg1)
}

function sub_796c7ffe(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor19.field_160) = Mask(96, 0, bool(arg1))
}

function sub_f6688947(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 120:
        revert with 0, 'timeToAddOnSteal too large'
    sub_16520ded = arg1
}

function sub_75f6e1c8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'bad input'
    sub_650a21b9Address = address(arg1)
}

function sub_92cfee01(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'bad input'
    sub_8336f2c4Address = address(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_17913a75(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg4 == address(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).0x7f447cc0 with:
         gas gas_remaining wei
        args address(arg2), arg3, address(arg4)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d38f2bd5(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).recoverERC20(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg2), address(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fc948b50(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_60b663bb.length < 1:
        revert with 0, 17
    if sub_60b663bb.length - 1 >= sub_60b663bb.length:
        revert with 0, 50
    require ext_code.size(sub_60b663bb[sub_60b663bb.length])
    call sub_60b663bb[sub_60b663bb.length].0xfc948b50 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeStartDate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_60b663bb.length < 1:
        revert with 0, 17
    if sub_60b663bb.length - 1 >= sub_60b663bb.length:
        revert with 0, 50
    require ext_code.size(sub_60b663bb[sub_60b663bb.length])
    call sub_60b663bb[sub_60b663bb.length].changeStartDate(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function roll(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_60b663bb.length < 1:
        revert with 0, 17
    if sub_60b663bb.length - 1 >= sub_60b663bb.length:
        revert with 0, 50
    if msg.sender == sub_60b663bb[sub_60b663bb.length]:
        if sub_13c9c43e:
            require ext_code.size(address(stor19.field_0))
            call address(stor19.field_0).0x14198ab4 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function sub_f57f47f8(?) {
    require calldata.size - 4 >= 96
    require 35 < calldata.size
    require 100 <= calldata.size
    idx = 4
    s = 96
    while idx < 100:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if mem[128] > mem[160]:
        revert with 0, 'invalid bidIncrease values'
    stor7 = mem[96]
    s = 8
    idx = 128
    while 192 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 10
    while 10 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
}

function sub_bf67e4fa(?) {
    require calldata.size - 4 >= 192
    require 35 < calldata.size
    require 196 <= calldata.size
    idx = 4
    s = 96
    while idx < 196:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if mem[224] > !mem[256]:
        revert with 0, 17
    if mem[224] + mem[256] != 10000:
        revert with 0, 'bad poisonSplit inputs'
    if 1000 < mem[128]:
        revert with 0, 'bad poisonBipsFee inpupt'
    s = 10
    idx = 96
    while 288 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 16
    while 16 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
}

function sub_0f5b4433(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    s = 128
    idx = cd[36] + 36
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if cd[4] <= 0:
        revert with 0, 'must have at least 1 top emperor'
    if ('cd', 36).length != cd[4]:
        revert with 0, 'wrong length of _JACKPOT_SPLIT input'
    sub_af6bf70c = cd[4]
}

function sub_7f447cc0(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if address(arg1) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if arg2:
            if arg2 <= eth.balance(this.address):
                call address(arg3) with:
                   value arg2 wei
                     gas 2300 * is_zero(value) wei
            else:
                call address(arg3) with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(address(arg1))
        staticcall address(arg1).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(arg1))
        if arg2 <= ext_call.return_data[0]:
            call address(arg1).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg3), arg2
        else:
            call address(arg1).transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg3), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, '_safeTokenTransfer: transfer failed'
}

function sub_47ffd897(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= block.timestamp:
        revert with 0, 'game must start in future'
    if sub_60b663bb.length <= 0:
        mem[96] = sub_8336f2c4Address
        mem[128] = sub_650a21b9Address
        mem[160] = sub_142e7e3fAddress
        mem[192] = this.address
        mem[224] = bool(sub_13c9c43e)
        mem[256] = bool(sub_9442f71e)
        mem[288 len 15201] = code.data[7862 len 15201]
        idx = 0
        s = 96
        t = 15649
        while idx < 4:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        idx = 0
        s = 0
        t = 16225
        while idx < sub_1f5cb64b.length:
            mem[t] = sub_1f5cb64b[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        idx = 0
        s = 7
        t = 15809
        while idx < 3:
            mem[t] = stor[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        idx = 0
        s = 10
        t = 15905
        while idx < 6:
            mem[t] = stor[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        idx = 0
        s = 224
        t = 16097
        while idx < 2:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        create contract with 0 wei
                        code: code.data[7862 len 15201], sub_acab85ae, sub_eead113b, arg1, sub_2716a509, sub_af6bf70c, mem[15649 len 128], 704, mem[15809 len 352], sub_16520ded, sub_1f5cb64b.length, mem[16225 len 32 * sub_1f5cb64b.length]
    else:
        if sub_60b663bb.length < 1:
            revert with 0, 17
        if sub_60b663bb.length - 1 >= sub_60b663bb.length:
            revert with 0, 50
        require ext_code.size(sub_60b663bb[sub_60b663bb.length])
        staticcall sub_60b663bb[sub_60b663bb.length].0x1cc41bba with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'previous game not yet resolved'
        mem[ceil32(return_data.size) + 96] = sub_8336f2c4Address
        mem[ceil32(return_data.size) + 128] = sub_650a21b9Address
        mem[ceil32(return_data.size) + 160] = sub_142e7e3fAddress
        mem[ceil32(return_data.size) + 192] = this.address
        mem[ceil32(return_data.size) + 224] = bool(sub_13c9c43e)
        mem[ceil32(return_data.size) + 256] = bool(sub_9442f71e)
        mem[ceil32(return_data.size) + 288 len 15201] = code.data[7862 len 15201]
        idx = 0
        s = ceil32(return_data.size) + 96
        t = ceil32(return_data.size) + 15649
        while idx < 4:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        idx = 0
        s = 0
        t = ceil32(return_data.size) + 16225
        while idx < sub_1f5cb64b.length:
            mem[t] = sub_1f5cb64b[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        idx = 0
        s = 7
        t = ceil32(return_data.size) + 15809
        while idx < 3:
            mem[t] = stor[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        idx = 0
        s = 10
        t = ceil32(return_data.size) + 15905
        while idx < 6:
            mem[t] = stor[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        idx = 0
        s = ceil32(return_data.size) + 224
        t = ceil32(return_data.size) + 16097
        while idx < 2:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        create contract with 0 wei
                        code: code.data[7862 len 15201], sub_acab85ae, sub_eead113b, arg1, sub_2716a509, sub_af6bf70c, mem[ceil32(return_data.size) + 15649 len 128], 704, mem[ceil32(return_data.size) + 15809 len 352], sub_16520ded, sub_1f5cb64b.length, mem[ceil32(return_data.size) + 16225 len 32 * sub_1f5cb64b.length]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_60b663bb.length++
    sub_60b663bb[sub_60b663bb.length] = address(create.new_address)
    return address(create.new_address)
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x7f447cc0(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xaf6bf70c(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xf2fde38b(?????) > uint32(call.func_hash) >> 224:
                if unknown_0xaf6bf70c(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_af6bf70c
                if uint32(call.func_hash) >> 224 != unknown_0xbf67e4fa(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0xd38f2bd5(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0xe3db290c(?????):
                            require unknown_0xeead113b(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return sub_eead113b
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        address(stor19.field_0) = address(cd[4])
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        require cd[68] == address(cd[68])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).recoverERC20(address arg1, address arg2) with:
                             gas gas_remaining wei
                            args address(cd[36]), address(cd[68])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require not msg.value
                    require calldata.size - 4 >= 192
                    require 35 < calldata.size
                    require 196 <= calldata.size
                    idx = 4
                    s = 128
                    while idx < 196:
                        mem[s] = cd[idx]
                        idx = idx + 32
                        s = s + 32
                        continue 
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if mem[256] > !mem[288]:
                        revert with 0, 17
                    if mem[256] + mem[288] != 10000:
                        revert with 0, 'bad poisonSplit inputs'
                    if 1000 < mem[160]:
                        revert with 0, 'bad poisonBipsFee inpupt'
                    s = 10
                    idx = 128
                    while 320 > idx:
                        stor[s] = mem[idx]
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = 16
                    while 16 > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
            else:
                if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(cd[4]):
                        revert with 0, 'Ownable: new owner is the zero address'
                    emit OwnershipTransferred(owner, address(cd[4]));
                    owner = address(cd[4])
                else:
                    if unknown_0xf57f47f8(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require 35 < calldata.size
                        require 100 <= calldata.size
                        idx = 4
                        s = 128
                        while idx < 100:
                            mem[s] = cd[idx]
                            idx = idx + 32
                            s = s + 32
                            continue 
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if mem[160] > mem[192]:
                            revert with 0, 'invalid bidIncrease values'
                        stor7 = mem[128]
                        s = 8
                        idx = 160
                        while 224 > idx:
                            stor[s] = mem[idx]
                            s = s + 1
                            idx = idx + 32
                            continue 
                        idx = 10
                        while 10 > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    else:
                        if unknown_0xf6688947(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if cd[4] > 120:
                                revert with 0, 'timeToAddOnSteal too large'
                            sub_16520ded = cd[4]
                        else:
                            if unknown_0xf6928070(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return sub_60b663bb.length
                            require unknown_0xfc948b50(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if sub_60b663bb.length < 1:
                                revert with 0, 17
                            if sub_60b663bb.length - 1 >= sub_60b663bb.length:
                                revert with 0, 50
                            require ext_code.size(sub_60b663bb[sub_60b663bb.length])
                            call sub_60b663bb[sub_60b663bb.length].0xfc948b50 with:
                                 gas gas_remaining wei
                                args cd[4]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        else:
            if unknown_0x9442f71e(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x9442f71e(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return bool(sub_9442f71e)
                if uint32(call.func_hash) >> 224 != unknown_0x9ac54912(?????):
                    if unknown_0xa0b55095(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] < sub_60b663bb.length
                        return sub_60b663bb[cd[4]]
                    if unknown_0xa9ea9681(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return 1000
                    require unknown_0xacab85ae(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return sub_acab85ae
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == bool(cd[4])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                sub_9442f71e = uint8(bool(cd[4]))
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x7f447cc0(?????):
                    if unknown_0x8336f2c4(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_8336f2c4Address
                    if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return owner
                    require unknown_0x92cfee01(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(cd[4]):
                        revert with 0, 'bad input'
                    sub_8336f2c4Address = address(cd[4])
                else:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require cd[4] == address(cd[4])
                    require cd[68] == address(cd[68])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if address(cd[4]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
                        if cd[36]:
                            if cd[36] <= eth.balance(this.address):
                                call address(cd[68]) with:
                                   value cd[36] wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                call address(cd[68]) with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require ext_code.size(address(cd[4]))
                        staticcall address(cd[4]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(cd[4]))
                        if cd[36] <= ext_call.return_data[0]:
                            call address(cd[4]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(cd[68]), cd[36]
                        else:
                            call address(cd[4]).transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(cd[68]), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, '_safeTokenTransfer: transfer failed'
    if unknown_0x1f5cb64b(?????) > uint32(call.func_hash) >> 224:
        if unknown_0x142e7e3f(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x142e7e3f(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_142e7e3fAddress
            if unknown_0x16520ded(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_16520ded
            if uint32(call.func_hash) >> 224 != unknown_0x17913a75(?????):
                if unknown_0x1a1af164(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    sub_2716a509 = cd[4]
                else:
                    require unknown_0x1a330868(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    sub_acab85ae = cd[4]
                    sub_eead113b = cd[36]
            else:
                require not msg.value
                require calldata.size - 4 >= 128
                require cd[4] == address(cd[4])
                require cd[36] == address(cd[36])
                require cd[100] == address(cd[100])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                require ext_code.size(address(cd[4]))
                call address(cd[4]).0x7f447cc0 with:
                     gas gas_remaining wei
                    args address(cd[36]), cd[68], address(cd[100])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if changeStartDate(uint256 arg1) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if sub_60b663bb.length < 1:
                    revert with 0, 17
                if sub_60b663bb.length - 1 >= sub_60b663bb.length:
                    revert with 0, 50
                require ext_code.size(sub_60b663bb[sub_60b663bb.length])
                call sub_60b663bb[sub_60b663bb.length].changeStartDate(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[4]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0x0f5b4433(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[36] <= test266151307()
                    require cd[36] + 35 < calldata.size
                    if ('cd', 36).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 36).length) + 129 < 128 or ceil32(32 * ('cd', 36).length) + 129 > test266151307():
                        revert with 0, 65
                    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
                    s = 160
                    idx = cd[36] + 36
                    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
                        mem[s] = cd[idx]
                        s = s + 32
                        idx = idx + 32
                        continue 
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if cd[4] <= 0:
                        revert with 0, 'must have at least 1 top emperor'
                    if ('cd', 36).length != cd[4]:
                        revert with 0, 'wrong length of _JACKPOT_SPLIT input'
                    sub_af6bf70c = cd[4]
                else:
                    if unknown_0x13c9c43e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return bool(sub_13c9c43e)
                    require unknown_0x14198ab4(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if sub_60b663bb.length < 1:
                        revert with 0, 17
                    if sub_60b663bb.length - 1 >= sub_60b663bb.length:
                        revert with 0, 50
                    if msg.sender == sub_60b663bb[sub_60b663bb.length]:
                        if sub_13c9c43e:
                            require ext_code.size(address(stor19.field_0))
                            call address(stor19.field_0).0x14198ab4 with:
                                 gas gas_remaining wei
                                args address(cd[4])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
    if unknown_0x61ff6a3f(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0x61ff6a3f(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            sub_142e7e3fAddress = address(cd[4])
        else:
            if unknown_0x650a21b9(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_650a21b9Address
            if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                emit OwnershipTransferred(owner, 0);
                owner = 0
            else:
                if unknown_0x75f6e1c8(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(cd[4]):
                        revert with 0, 'bad input'
                    sub_650a21b9Address = address(cd[4])
                else:
                    require unknown_0x796c7ffe(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == bool(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    Mask(96, 0, stor19.field_160) = Mask(96, 0, bool(cd[4]))
    if unknown_0x1f5cb64b(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 32
        require cd[4] < sub_1f5cb64b.length
        return sub_1f5cb64b[cd[4]]
    if unknown_0x2716a509(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        return sub_2716a509
    if uint32(call.func_hash) >> 224 != unknown_0x47ffd897(?????):
        require unknown_0x60b663bb(?????) == uint32(call.func_hash) >> 224
        require not msg.value
        if sub_60b663bb.length < 1:
            revert with 0, 17
        if sub_60b663bb.length - 1 >= sub_60b663bb.length:
            revert with 0, 50
        return sub_60b663bb[sub_60b663bb.length]
    require not msg.value
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if cd[4] <= block.timestamp:
        revert with 0, 'game must start in future'
    if sub_60b663bb.length <= 0:
        mem[128] = sub_8336f2c4Address
        mem[160] = sub_650a21b9Address
        mem[192] = sub_142e7e3fAddress
        mem[224] = this.address
        mem[256] = bool(sub_13c9c43e)
        mem[288] = bool(sub_9442f71e)
        mem[320 len 15201] = code.data[7862 len 15201]
        idx = 0
        s = 128
        t = 15681
        while idx < 4:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        idx = 0
        s = 0
        t = 16257
        while idx < sub_1f5cb64b.length:
            mem[t] = sub_1f5cb64b[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        idx = 0
        s = 7
        t = 15841
        while idx < 3:
            mem[t] = stor[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        idx = 0
        s = 10
        t = 15937
        while idx < 6:
            mem[t] = stor[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        idx = 0
        s = 256
        t = 16129
        while idx < 2:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        create contract with 0 wei
                        code: code.data[7862 len 15201], sub_acab85ae, sub_eead113b, cd[4], sub_2716a509, sub_af6bf70c, mem[15681 len 128], 704, mem[15841 len 352], sub_16520ded, sub_1f5cb64b.length, mem[16257 len 32 * sub_1f5cb64b.length]
    else:
        if sub_60b663bb.length < 1:
            revert with 0, 17
        if sub_60b663bb.length - 1 >= sub_60b663bb.length:
            revert with 0, 50
        require ext_code.size(sub_60b663bb[sub_60b663bb.length])
        staticcall sub_60b663bb[sub_60b663bb.length].0x1cc41bba with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'previous game not yet resolved'
        mem[ceil32(return_data.size) + 128] = sub_8336f2c4Address
        mem[ceil32(return_data.size) + 160] = sub_650a21b9Address
        mem[ceil32(return_data.size) + 192] = sub_142e7e3fAddress
        mem[ceil32(return_data.size) + 224] = this.address
        mem[ceil32(return_data.size) + 256] = bool(sub_13c9c43e)
        mem[ceil32(return_data.size) + 288] = bool(sub_9442f71e)
        mem[ceil32(return_data.size) + 320 len 15201] = code.data[7862 len 15201]
        idx = 0
        s = ceil32(return_data.size) + 128
        t = ceil32(return_data.size) + 15681
        while idx < 4:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        idx = 0
        s = 0
        t = ceil32(return_data.size) + 16257
        while idx < sub_1f5cb64b.length:
            mem[t] = sub_1f5cb64b[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        idx = 0
        s = 7
        t = ceil32(return_data.size) + 15841
        while idx < 3:
            mem[t] = stor[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        idx = 0
        s = 10
        t = ceil32(return_data.size) + 15937
        while idx < 6:
            mem[t] = stor[s]
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        idx = 0
        s = ceil32(return_data.size) + 256
        t = ceil32(return_data.size) + 16129
        while idx < 2:
            mem[t] = bool(mem[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        create contract with 0 wei
                        code: code.data[7862 len 15201], sub_acab85ae, sub_eead113b, cd[4], sub_2716a509, sub_af6bf70c, mem[ceil32(return_data.size) + 15681 len 128], 704, mem[ceil32(return_data.size) + 15841 len 352], sub_16520ded, sub_1f5cb64b.length, mem[ceil32(return_data.size) + 16257 len 32 * sub_1f5cb64b.length]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    sub_60b663bb.length++
    sub_60b663bb[sub_60b663bb.length] = address(create.new_address)
    return address(create.new_address)
}



}
