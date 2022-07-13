contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_bc32f4a3;
uint256 preSaleStartTime;
uint256 preSaleEndTime;
uint256 sub_f8b6d839;
uint256 sub_4612144d;
uint256 rate1;
uint256 rate2;
address teamPoolAddress;
address rewardsPoolAddress;
address stor10;
address stor11;
address sub_e124f97aAddress;
mapping of uint8 stor13;
mapping of uint256 sub_956c7a45;
mapping of uint8 stor15;

function rewardsPool() {
    return rewardsPoolAddress
}

function preSaleStartTime() {
    return preSaleStartTime
}

function teamPool() {
    return teamPoolAddress
}

function sub_4612144d(?) {
    return sub_4612144d
}

function owner() {
    return owner
}

function sub_956c7a45(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_956c7a45[arg1]
}

function sub_bc32f4a3(?) {
    return sub_bc32f4a3
}

function sub_c03b8261(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor13[arg1])
}

function preSaleEndTime() {
    return preSaleEndTime
}

function rate1() {
    return rate1
}

function sub_d981c119(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor15[arg1])
}

function sub_e124f97a(?) {
    return sub_e124f97aAddress
}

function rate2() {
    return rate2
}

function sub_f8b6d839(?) {
    return sub_f8b6d839
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_35fdc788(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_bc32f4a3 = arg1
}

function sub_068bf3ba(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e124f97aAddress = address(arg1)
}

function withdrawCurrency(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function stopSale() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp <= preSaleStartTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PreSale: Sale hasn't started yet!'
    if block.timestamp >= preSaleEndTime:
        revert with 0, 'PreSale: Sale has already ended!'
    preSaleEndTime = block.timestamp
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawAll(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_3e04c679(?) {
    require calldata.size - 4 >= 224
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if preSaleStartTime:
        if block.timestamp >= preSaleStartTime:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'PreSale: Sale has already started. Cannot change Sale Params!'
    if block.timestamp >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'PreSale: Starting time is less than current TimeStamp!'
    if arg2 >= arg3:
        revert with 0, 'PreSale: Invalid PreSale Dates!'
    sub_f8b6d839 = arg1
    preSaleStartTime = arg2
    preSaleEndTime = arg3
    rate1 = arg4
    rate2 = arg5
    teamPoolAddress = address(arg6)
    rewardsPoolAddress = address(arg7)
}

function sub_51e2262e(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length <= 0:
        revert with 0, 'Wrong length'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'Wrong address'
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 13
        stor13[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_c5917613(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if block.timestamp <= preSaleStartTime:
        revert with 0, 'Presale: Sale hasn't started'
    if block.timestamp >= preSaleEndTime:
        revert with 0, 'PreSale: Sale has already ended'
    if 3 >= arg3.length:
        revert with 0, 'PreSale: Invalid Node name'
    if arg3.length >= 32:
        revert with 0, 'PreSale: Invalid Node name'
    if not stor13[address(msg.sender)]:
        revert with 0, 'PreSale: buyer is not an Invader'
    if not stor13[address(msg.sender)]:
        if teamPoolAddress == msg.sender:
            revert with 0, 'PreSale: teamPool and rewardsPool cannot participate'
        if rewardsPoolAddress == msg.sender:
            revert with 0, 'PreSale: teamPool and rewardsPool cannot participate'
        if not address(arg1):
            if msg.value < rate2:
                revert with 0, 'PreSale: Not enough AVAX'
        else:
            if sub_e124f97aAddress != address(arg1):
                revert with 0, 'PreSale: Wrong token'
            if arg2 < rate1:
                revert with 0, 'PreSale: Not enough USDC.e'
            mem[ceil32(ceil32(arg3.length)) + 97] = 100
            mem[ceil32(ceil32(arg3.length)) + 133 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(ceil32(arg3.length)) + 129 len 4] = unknown_0x23b872dd(?????)
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(arg1)):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(ceil32(arg3.length)) + 293 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
            call address(arg1) with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if arg3.length:
                        revert with arg3[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg3.length:
                    require arg3.length >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(ceil32(arg3.length)) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(ceil32(arg3.length)) + 325] == bool(mem[ceil32(ceil32(arg3.length)) + 325])
                    if not mem[ceil32(ceil32(arg3.length)) + 325]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(ceil32(arg3.length)) + 101] = msg.sender
        require ext_code.size(stor10)
        call stor10.getNodeNumberOf(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        mem[ceil32(ceil32(arg3.length)) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 1 > !ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] + 1 > sub_f8b6d839:
            revert with 0, 'PreSale: Max presale nodes per Invader reached'
        if teamPoolAddress == msg.sender:
            revert with 0, 'PreSale: teamPool and rewardsPool cannot participate'
        if rewardsPoolAddress == msg.sender:
            revert with 0, 'PreSale: teamPool and rewardsPool cannot participate'
        if not address(arg1):
            if msg.value < rate2:
                revert with 0, 'PreSale: Not enough AVAX'
        else:
            if sub_e124f97aAddress != address(arg1):
                revert with 0, 'PreSale: Wrong token'
            if arg2 < rate1:
                revert with 0, 'PreSale: Not enough USDC.e'
            mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 97] = 100
            mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 133 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 129 len 4] = unknown_0x23b872dd(?????)
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(arg1)):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 293 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
            call address(arg1) with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if arg3.length:
                        revert with arg3[all]
                    revert with 0, 'SafeERC20: low-level call failed'
                if arg3.length:
                    require arg3.length >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 325 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 325] == bool(mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 325])
                    if not mem[ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 325]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if sub_4612144d == -1:
        revert with 0, 17
    sub_4612144d++
    if sub_956c7a45[address(msg.sender)] == -1:
        revert with 0, 17
    sub_956c7a45[address(msg.sender)]++
    require ext_code.size(stor10)
    call stor10.0x90219732 with:
         gas gas_remaining wei
        args msg.sender, Array(len=arg3.length, data=arg3[all]), sub_bc32f4a3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor11)
    call stor11.0x982540c9 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size >= 4:
        if unknown_0xbc32f4a3(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x3e04c679(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x35fdc788(?????) > uint32(call.func_hash) >> 224:
                    if rewardsPool() == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return rewardsPoolAddress
                    if uint32(call.func_hash) >> 224 != unknown_0x068bf3ba(?????):
                        if uint32(call.func_hash) >> 224 != preSaleStartTime():
                        require not msg.value
                        return preSaleStartTime
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    sub_e124f97aAddress = address(cd[4])
                else:
                    if unknown_0x35fdc788(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        sub_bc32f4a3 = cd[4]
                    else:
                        if unknown_0x39636504(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return teamPoolAddress
                        if unknown_0x3c00a36c(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            call msg.sender with:
                               value cd[4] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0x715018a6(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        owner = 0
                        emit OwnershipTransferred(owner, 0);
                    if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return owner
                    if uint32(call.func_hash) >> 224 != unknown_0x956c7a45(?????):
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return sub_956c7a45[cd[4]]
                if uint32(call.func_hash) >> 224 != unknown_0x3e04c679(?????):
                    if unknown_0x4612144d(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_4612144d
                    if unknown_0x51e2262e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] <= test266151307()
                        require cd[4] + 35 < calldata.size
                        if ('cd', 4).length > test266151307():
                            revert with 0, 65
                        if ceil32(32 * ('cd', 4).length) + 129 < 128 or ceil32(32 * ('cd', 4).length) + 129 > test266151307():
                            revert with 0, 65
                        require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
                        s = cd[4] + 36
                        t = 160
                        idx = 0
                        while idx < ('cd', 4).length:
                            require cd[s] == address(cd[s])
                            mem[t] = cd[s]
                            s = s + 32
                            t = t + 32
                            idx = idx + 1
                            continue 
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if ('cd', 4).length <= 0:
                            revert with 0, 'Wrong length'
                        idx = 0
                        while idx < ('cd', 4).length:
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            if not mem[(32 * idx) + 172 len 20]:
                                revert with 0, 'Wrong address'
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            mem[0] = mem[(32 * idx) + 172 len 20]
                            mem[32] = 13
                            stor13[mem[(32 * idx) + 172 len 20]] = 1
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                else:
                    require not msg.value
                    require calldata.size - 4 >= 224
                    require cd[164] == address(cd[164])
                    require cd[196] == address(cd[196])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if preSaleStartTime:
                        if block.timestamp >= preSaleStartTime:
                            revert with 0, 'PreSale: Sale has already started. Cannot change Sale Params!'
                    if block.timestamp >= cd[36]:
                        revert with 0, 'PreSale: Starting time is less than current TimeStamp!'
                    if cd[36] >= cd[68]:
                        revert with 0, 'PreSale: Invalid PreSale Dates!'
                    sub_f8b6d839 = cd[4]
                    preSaleStartTime = cd[36]
                    preSaleEndTime = cd[68]
                    rate1 = cd[100]
                    rate2 = cd[132]
                    teamPoolAddress = address(cd[164])
                    rewardsPoolAddress = address(cd[196])
        else:
            if unknown_0xe124f97a(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xf3fef3a3(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0xe124f97a(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_e124f97aAddress
                    if unknown_0xe36b0b37(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if block.timestamp <= preSaleStartTime:
                            revert with 0, 'PreSale: Sale hasn't started yet!'
                        if block.timestamp >= preSaleEndTime:
                            revert with 0, 'PreSale: Sale has already ended!'
                        preSaleEndTime = block.timestamp
                    else:
                        if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            if not address(cd[4]):
                                revert with 0, 'Ownable: new owner is the zero address'
                            owner = address(cd[4])
                            emit OwnershipTransferred(owner, address(cd[4]));
                else:
                    if unknown_0xf3fef3a3(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        require ext_code.size(address(cd[4]))
                        call address(cd[4]).0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, cd[36]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if unknown_0xf555b815(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return rate2
                        if unknown_0xf8b6d839(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return sub_f8b6d839
                        if unknown_0xfa09e630(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require cd[4] == address(cd[4])
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            require ext_code.size(address(cd[4]))
                            staticcall address(cd[4]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if unknown_0xcce29ea7(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0xcce29ea7(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return preSaleEndTime
                    if unknown_0xcf854969(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return rate1
                    if uint32(call.func_hash) >> 224 != unknown_0xd981c119(?????):
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return bool(stor15[cd[4]])
                if unknown_0xbc32f4a3(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_bc32f4a3
                if unknown_0xc03b8261(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return bool(stor13[cd[4]])
                if unknown_0xc5917613(?????) == uint32(call.func_hash) >> 224:
                    require calldata.size - 4 >= 96
                    require cd[4] == address(cd[4])
                    require cd[68] <= test266151307()
                    require cd[68] + 35 < calldata.size
                    if ('cd', 68).length > test266151307():
                        revert with 0, 65
                    if ceil32(ceil32(('cd', 68).length)) + 129 < 128 or ceil32(ceil32(('cd', 68).length)) + 129 > test266151307():
                        revert with 0, 65
                    mem[128] = ('cd', 68).length
                    require cd[68] + ('cd', 68).length + 36 <= calldata.size
                    mem[160 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                    mem[('cd', 68).length + 160] = 0
                    if block.timestamp <= preSaleStartTime:
                        revert with 0, 'Presale: Sale hasn't started'
                    if block.timestamp >= preSaleEndTime:
                        revert with 0, 'PreSale: Sale has already ended'
                    if 3 >= ('cd', 68).length:
                        revert with 0, 'PreSale: Invalid Node name'
                    if ('cd', 68).length >= 32:
                        revert with 0, 'PreSale: Invalid Node name'
                    if not stor13[address(msg.sender)]:
                        revert with 0, 'PreSale: buyer is not an Invader'
                    if not stor13[address(msg.sender)]:
                        if teamPoolAddress == msg.sender:
                            revert with 0, 'PreSale: teamPool and rewardsPool cannot participate'
                        if rewardsPoolAddress == msg.sender:
                            revert with 0, 'PreSale: teamPool and rewardsPool cannot participate'
                        if not address(cd[4]):
                            if msg.value < rate2:
                                revert with 0, 'PreSale: Not enough AVAX'
                        else:
                            if sub_e124f97aAddress != address(cd[4]):
                                revert with 0, 'PreSale: Wrong token'
                            if cd[36] < rate1:
                                revert with 0, 'PreSale: Not enough USDC.e'
                            mem[ceil32(ceil32(('cd', 68).length)) + 165] = msg.sender
                            mem[ceil32(ceil32(('cd', 68).length)) + 197] = this.address
                            mem[ceil32(ceil32(('cd', 68).length)) + 229] = cd[36]
                            mem[ceil32(ceil32(('cd', 68).length)) + 129] = 100
                            mem[ceil32(ceil32(('cd', 68).length)) + 165 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[ceil32(ceil32(('cd', 68).length)) + 161 len 4] = unknown_0x23b872dd(?????)
                            mem[ceil32(ceil32(('cd', 68).length)) + 261] = 32
                            mem[ceil32(ceil32(('cd', 68).length)) + 293] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(cd[4])):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(ceil32(('cd', 68).length)) + 325 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[36], 0
                            mem[ceil32(ceil32(('cd', 68).length)) + 425] = 0
                            call address(cd[4]) with:
                               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[36], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[36], 0) << 544)
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require ('cd', 68).length == bool(('cd', 68).length)
                                    if not ('cd', 68).length:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[ceil32(ceil32(('cd', 68).length)) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[ceil32(ceil32(('cd', 68).length)) + 357] == bool(mem[ceil32(ceil32(('cd', 68).length)) + 357])
                                    if not mem[ceil32(ceil32(('cd', 68).length)) + 357]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(ceil32(('cd', 68).length)) + 133] = msg.sender
                        require ext_code.size(stor10)
                        call stor10.getNodeNumberOf(address arg1) with:
                             gas gas_remaining wei
                            args msg.sender
                        mem[ceil32(ceil32(('cd', 68).length)) + 129] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 1 > !ext_call.return_data[0]:
                            revert with 0, 17
                        if ext_call.return_data[0] + 1 > sub_f8b6d839:
                            revert with 0, 'PreSale: Max presale nodes per Invader reached'
                        if teamPoolAddress == msg.sender:
                            revert with 0, 'PreSale: teamPool and rewardsPool cannot participate'
                        if rewardsPoolAddress == msg.sender:
                            revert with 0, 'PreSale: teamPool and rewardsPool cannot participate'
                        if not address(cd[4]):
                            if msg.value < rate2:
                                revert with 0, 'PreSale: Not enough AVAX'
                        else:
                            if sub_e124f97aAddress != address(cd[4]):
                                revert with 0, 'PreSale: Wrong token'
                            if cd[36] < rate1:
                                revert with 0, 'PreSale: Not enough USDC.e'
                            mem[ceil32(ceil32(('cd', 68).length)) + ceil32(return_data.size) + 165] = msg.sender
                            mem[ceil32(ceil32(('cd', 68).length)) + ceil32(return_data.size) + 197] = this.address
                            mem[ceil32(ceil32(('cd', 68).length)) + ceil32(return_data.size) + 229] = cd[36]
                            mem[ceil32(ceil32(('cd', 68).length)) + ceil32(return_data.size) + 129] = 100
                            mem[ceil32(ceil32(('cd', 68).length)) + ceil32(return_data.size) + 165 len 28] = Mask(224, 32, msg.sender) >> 32
                            mem[ceil32(ceil32(('cd', 68).length)) + ceil32(return_data.size) + 161 len 4] = unknown_0x23b872dd(?????)
                            mem[ceil32(ceil32(('cd', 68).length)) + ceil32(return_data.size) + 261] = 32
                            mem[ceil32(ceil32(('cd', 68).length)) + ceil32(return_data.size) + 293] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(address(cd[4])):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(ceil32(('cd', 68).length)) + ceil32(return_data.size) + 325 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[36], 0
                            mem[ceil32(ceil32(('cd', 68).length)) + ceil32(return_data.size) + 425] = 0
                            call address(cd[4]) with:
                               funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[36], 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), cd[36], 0) << 544)
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if mem[96]:
                                    require mem[96] >= 32
                                    require ('cd', 68).length == bool(('cd', 68).length)
                                    if not ('cd', 68).length:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[ceil32(ceil32(('cd', 68).length)) + ceil32(return_data.size) + 357 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[ceil32(ceil32(('cd', 68).length)) + ceil32(return_data.size) + 357] == bool(mem[ceil32(ceil32(('cd', 68).length)) + ceil32(return_data.size) + 357])
                                    if not mem[ceil32(ceil32(('cd', 68).length)) + ceil32(return_data.size) + 357]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if sub_4612144d == -1:
                        revert with 0, 17
                    sub_4612144d++
                    if sub_956c7a45[address(msg.sender)] == -1:
                        revert with 0, 17
                    sub_956c7a45[address(msg.sender)]++
                    require ext_code.size(stor10)
                    call stor10.0x90219732 with:
                         gas gas_remaining wei
                        args msg.sender, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length]), sub_bc32f4a3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor11)
                    call stor11.0x982540c9 with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}



}
