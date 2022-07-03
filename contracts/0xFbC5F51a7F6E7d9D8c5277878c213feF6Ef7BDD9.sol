contract main {




// =====================  Runtime code  =====================


#
#  - sub_97b2c421(?)
#  - withdrawERC20(address arg1, uint256 arg2)
#
const vault = 0x9ab2de34a33fb459b538c43f251eb825645e8595


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
uint32 stor51;
address owner;
uint256 stor51;
mapping of uint8 stor101;
mapping of uint8 stor102;
address implementationAddress;

function operators(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor101[arg1])
}

function implementation() {
    return implementationAddress
}

function accounts(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor102[arg1])
}

function owner() {
    return address(owner)
}

function renounceOwnership() {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    address(owner) = 0
    emit OwnershipTransferred(address(owner), 0);
}

function sub_3ecce421(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor101[address(arg1)]:
        return bool(stor101[address(arg1)])
    return (address(owner) == address(arg1))
}

function addOperator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor101[address(arg1)] = 1
}

function removeOperator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor101[address(arg1)] = 0
}

function setAccountImplementation(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not ext_code.size(arg1):
        revert with 0, 'not a contract'
    implementationAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    address(owner) = arg1
    emit OwnershipTransferred(address(owner), arg1);
}

function withdrawEth(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor101[address(msg.sender)]:
        if address(owner) != msg.sender:
            revert with 0, 'op'
    if eth.balance(this.address) < arg1:
        revert with 0, 'Address: insufficient balance'
    call address(owner) with:
       value arg1 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    address(owner) = msg.sender
    emit OwnershipTransferred(address(owner), msg.sender);
    if not ext_code.size(arg1):
        revert with 0, 'not a contract'
    implementationAddress = arg1
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_b5241469(?) {
    require calldata.size - 4 >= 256
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg6 == bool(arg6)
    if not stor101[address(msg.sender)]:
        if address(owner) != msg.sender:
            revert with 0, 'op'
    if not stor102[address(arg1)]:
        revert with 0, 'invalid account'
    if arg8 < block.timestamp:
        revert with 0, 'deadline exceeded'
    if not arg6:
        staticcall 0x9ab2de34a33fb459b538c43f251eb825645e8595.getMaxPrice(address arg1) with:
                gas gas_remaining wei
               args address(arg3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > arg7:
            revert with 0, 'price'
    else:
        staticcall 0x9ab2de34a33fb459b538c43f251eb825645e8595.getMinPrice(address arg1) with:
                gas gas_remaining wei
               args address(arg3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg7:
            revert with 0, 'price'
    require ext_code.size(address(arg1))
    call address(arg1).0x13e6911f with:
         gas gas_remaining wei
        args address(arg2), address(arg3), arg4, arg5, bool(arg6)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function createAccount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor101[address(msg.sender)]:
        if address(owner) != msg.sender:
            revert with 0, 'op'
    if arg1 > test266151307():
        revert with 0, 65
    mem[96] = arg1
    mem[64] = (32 * arg1) + 128
    if arg1:
        mem[128 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
    idx = 0
    while idx < arg1:
        mem[(32 * arg1) + 128 len 2481] = code.data[6490 len 2481]
        mem[(32 * arg1) + 2609] = this.address
        mem[(32 * arg1) + 2641] = 64
        mem[(32 * arg1) + 2673] = 0
        create contract with 0 wei
                        code: code.data[6490 len 2481], address(this.address), 64, 0
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = address(create.new_address)
        mem[32] = 102
        stor102[address(create.new_address)] = 1
        if idx >= arg1:
            revert with 0, 50
        mem[(32 * idx) + 128] = address(create.new_address)
        mem[(32 * arg1) + 128] = address(create.new_address)
        emit AccountCreated(address(create.new_address));
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(32 * arg1) + 128] = 32
    mem[(32 * arg1) + 160] = arg1
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < arg1:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * arg1) + -mem[64] + 192
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x9870d7fe(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xc311d049(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xcab13915(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0xc311d049(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if not stor101[address(msg.sender)]:
                            if address(owner) != msg.sender:
                                revert with 0, 'op'
                        if eth.balance(this.address) < arg1:
                            revert with 0, 'Address: insufficient balance'
                        call address(owner) with:
                           value arg1 wei
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with 0, 'Address: unable to send value, recipient may have reverted'
                    else:
                        require unknown_0xc4d66de8(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if uint8(stor0.field_8):
                            if ext_code.size(this.address):
                                revert with 0, 'Initializable: contract is already initialized'
                        else:
                            if uint8(stor0.field_0):
                                revert with 0, 'Initializable: contract is already initialized'
                        if not uint8(stor0.field_8):
                            uint16(stor0.field_0) = 257
                            revert with 0, 'Initializable: contract is not initializing'
                        address(owner) = msg.sender
                        emit OwnershipTransferred(address(owner), msg.sender);
                        if not ext_code.size(arg1):
                            revert with 0, 'not a contract'
                        implementationAddress = address(arg1)
                        if not uint8(stor0.field_8):
                            uint8(stor0.field_8) = 0
                if uint32(call.func_hash) >> 224 != unknown_0xcab13915(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0xf2fde38b(?????):
                        require unknown_0xfbfa77cf(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return 0x9ab2de34a33fb459b538c43f251eb825645e8595
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if address(owner) != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not address(arg1):
                        revert with 0, 'Ownable: new owner is the zero address'
                    address(owner) = address(arg1)
                    emit OwnershipTransferred(address(owner), address(arg1));
                require not msg.value
                require calldata.size - 4 >= 32
                if not stor101[address(msg.sender)]:
                    if address(owner) != msg.sender:
                        revert with 0, 'op'
                if arg1 > test266151307():
                    revert with 0, 65
                mem[128] = arg1
                mem[64] = (32 * arg1) + 160
                if arg1:
                    mem[160 len 32 * arg1] = call.data[calldata.size len 32 * arg1]
                idx = 0
                while idx < arg1:
                    mem[(32 * arg1) + 160 len 2481] = code.data[6490 len 2481]
                    mem[(32 * arg1) + 2641] = this.address
                    mem[(32 * arg1) + 2673] = 64
                    mem[(32 * arg1) + 2705] = 0
                    create contract with 0 wei
                                    code: code.data[6490 len 2481], address(this.address), 64, 0
                    if not create.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[0] = address(create.new_address)
                    mem[32] = 102
                    stor102[address(create.new_address)] = 1
                    if idx >= arg1:
                        revert with 0, 50
                    mem[(32 * idx) + 160] = address(create.new_address)
                    mem[(32 * arg1) + 160] = address(create.new_address)
                    emit AccountCreated(address(create.new_address));
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[(32 * arg1) + 160] = 32
                mem[(32 * arg1) + 192] = arg1
                idx = 0
                s = mem[64] + 64
                t = 160
                while idx < arg1:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len (64 * arg1) + -mem[64] + 224
            if unknown_0x9870d7fe(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if address(owner) != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                stor101[address(arg1)] = 1
            else:
                if uint32(call.func_hash) >> 224 != unknown_0xa1db9782(?????):
                    if unknown_0xac8a584a(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if address(owner) != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        stor101[address(arg1)] = 0
                    else:
                        require unknown_0xb5241469(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 256
                        require arg1 == address(arg1)
                        require arg2 == address(arg2)
                        require arg3 == address(arg3)
                        require arg6 == bool(arg6)
                        if not stor101[address(msg.sender)]:
                            if address(owner) != msg.sender:
                                revert with 0, 'op'
                        if not stor102[address(arg1)]:
                            revert with 0, 'invalid account'
                        if arg8 < block.timestamp:
                            revert with 0, 'deadline exceeded'
                        if not arg6:
                            staticcall 0x9ab2de34a33fb459b538c43f251eb825645e8595.getMaxPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg3)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > arg7:
                                revert with 0, 'price'
                        else:
                            staticcall 0x9ab2de34a33fb459b538c43f251eb825645e8595.getMinPrice(address arg1) with:
                                    gas gas_remaining wei
                                   args address(arg3)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < arg7:
                                revert with 0, 'price'
                        require ext_code.size(address(arg1))
                        call address(arg1).0x13e6911f with:
                             gas gas_remaining wei
                            args address(arg2), address(arg3), arg4, arg5, bool(arg6)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    if not stor101[address(msg.sender)]:
                        if address(owner) != msg.sender:
                            revert with 0, 'op'
                    mem[164] = address(owner)
                    mem[196] = arg2
                    mem[128] = 68
                    mem[164 len 28] = Mask(224, 0, stor51)
                    mem[160 len 4] = unknown_0xa9059cbb(?????)
                    mem[228] = 32
                    mem[260] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(arg1)):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor51), uint32(stor51), arg2, 0
                    mem[360] = 0
                    call address(arg1) with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor51), uint32(stor51), arg2, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor51), uint32(stor51), arg2, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        require not mem[96]
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[324] == bool(mem[324])
                        if not mem[324]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if unknown_0x5e5c06e2(?????) > uint32(call.func_hash) >> 224:
                if setAccountImplementation(address arg1) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if address(owner) != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if not ext_code.size(arg1):
                        revert with 0, 'not a contract'
                    implementationAddress = address(arg1)
                if unknown_0x13e7c9d8(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return bool(stor101[arg1])
                if uint32(call.func_hash) >> 224 != unknown_0x3ecce421(?????):
                    require unknown_0x5c60da1b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return implementationAddress
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if stor101[address(arg1)]:
                    return bool(stor101[address(arg1)])
                return (address(owner) == address(arg1))
            if unknown_0x5e5c06e2(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return bool(stor102[arg1])
            if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if address(owner) != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                address(owner) = 0
                emit OwnershipTransferred(address(owner), 0);
            else:
                if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return address(owner)
                require unknown_0x97b2c421(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 256
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                require arg3 == address(arg3)
                require arg6 == bool(arg6)
                if not stor101[address(msg.sender)]:
                    if address(owner) != msg.sender:
                        revert with 0, 'op'
                if not stor102[address(arg1)]:
                    revert with 0, 'invalid account'
                if arg8 < block.timestamp:
                    revert with 0, 'deadline exceeded'
                if arg4:
                    mem[164] = 0x9ab2de34a33fb459b538c43f251eb825645e8595
                    mem[196] = arg4
                    mem[128] = 68
                    mem[164 len 28] = 0x9ab2de34a33fb459b538c43f251eb825
                    mem[160 len 4] = unknown_0xa9059cbb(?????)
                    mem[228] = 32
                    mem[260] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(arg2)):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0xa9059cbb(?????), 0x9ab2de34a33fb459b538c43f, 0, arg4, 0
                    mem[360] = 0
                    call address(arg2) with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), 0x9ab2de34a33fb459b538c43f, 0, arg4, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), 0x9ab2de34a33fb459b538c43f, 0, arg4, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        require not mem[96]
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[324] == bool(mem[324])
                            if not mem[324]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if not arg6:
                    staticcall 0x9ab2de34a33fb459b538c43f251eb825645e8595.getMinPrice(address arg1) with:
                            gas gas_remaining wei
                           args address(arg3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < arg7:
                        revert with 0, 'price'
                else:
                    staticcall 0x9ab2de34a33fb459b538c43f251eb825645e8595.getMaxPrice(address arg1) with:
                            gas gas_remaining wei
                           args address(arg3)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > arg7:
                        revert with 0, 'price'
                require ext_code.size(address(arg1))
                call address(arg1).0xe3fb008e with:
                     gas gas_remaining wei
                    args address(arg2), address(arg3), arg5, bool(arg6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}



}
