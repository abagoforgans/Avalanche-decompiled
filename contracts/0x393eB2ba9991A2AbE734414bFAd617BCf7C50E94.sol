contract main {




// =====================  Runtime code  =====================


#
#  - sub_7756836f(?)
#  - sub_a7fe4baa(?)
#
address owner;
mapping of struct order;
address feeReceiverAddress;
uint256 sub_1544e652;
mapping of uint256 stor4;
mapping of struct stor5;

function sub_1544e652(?) {
    return sub_1544e652
}

function getOrder(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if order[arg1].field_1024 > 3:
        revert with 0, 33
    if order[arg1].field_1792 > 3:
        revert with 0, 33
    if order[arg1].field_1024 >= 4:
        revert with 0, 33
    if order[arg1].field_1792 >= 4:
        revert with 0, 33
    return order[arg1].field_0, 
           order[arg1].field_256,
           order[arg1].field_512,
           order[arg1].field_768,
           order[arg1].field_1024,
           order[arg1].field_1280,
           order[arg1].field_1536,
           order[arg1].field_1792,
           order[arg1].field_2048,
           order[arg1].field_2304,
           bool(order[arg1].field_2560)
}

function owner() {
    return owner
}

function feeReceiver() {
    return feeReceiverAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setBaseFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1544e652 = arg1
}

function setFeeReceiver(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    feeReceiverAddress = arg1
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

function cancelListing(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if order[arg1].field_1024 > 3:
        revert with 0, 33
    if order[arg1].field_1792 > 3:
        revert with 0, 33
    if order[arg1].field_0 != msg.sender:
        revert with 0, 'NOT LISTED BY SENDER'
    order[arg1].field_0 = 0
    order[arg1].field_256 = 0
    order[arg1].field_512 = 0
    order[arg1].field_768 = 0
    order[arg1].field_1024 = 0
    order[arg1].field_1280 = 0
    order[arg1].field_1536 = 0
    order[arg1].field_1792 = 0
    order[arg1].field_2048 = 0
    order[arg1].field_2304 = 0
    order[arg1].field_2560 = 0
    emit 0x26452930: arg1
}

function sub_4254de01(?) {
    require calldata.size - 4 >= 352
    require arg1 == address(arg1)
    require calldata.size - 36 >= 224
    require calldata.size - 68 >= 96
    require arg3 == address(arg3)
    require arg5 < 4
    require calldata.size - 164 >= 96
    require arg6 == address(arg6)
    require arg8 < 4
    require arg11 == bool(arg11)
    if order[arg2][address(arg3)][arg4][address(arg6)][arg7].field_1024 > 3:
        revert with 0, 33
    if order[arg2][address(arg3)][arg4][address(arg6)][arg7].field_1792 > 3:
        revert with 0, 33
    if arg10 != order[arg2][address(arg3)][arg4][address(arg6)][arg7].field_2304:
        return (arg10 == order[arg2][address(arg3)][arg4][address(arg6)][arg7].field_2304)
    if order[arg2][address(arg3)][arg4][address(arg6)][arg7].field_2048 != arg9:
        return (order[arg2][address(arg3)][arg4][address(arg6)][arg7].field_2048 == arg9)
    return (arg2 == order[arg2][address(arg3)][arg4][address(arg6)][arg7].field_256)
}

function sub_89606bbb(?) {
    require calldata.size - 4 >= 448
    require arg1 == address(arg1)
    require calldata.size - 68 >= 96
    require arg3 == address(arg3)
    require arg4 < 4
    require calldata.size - 164 >= 96
    require arg5 == address(arg5)
    require arg7 < 4
    require arg8 == bool(arg8)
    require arg9 == bool(arg9)
    if stor5[address(arg5)][arg6][arg10].field_1024 > 3:
        revert with 0, 33
    if stor5[address(arg5)][arg6][arg10].field_1792 > 3:
        revert with 0, 33
    if bool(stor5[address(arg5)][arg6][arg10].field_3072) != 1:
        revert with 0, 'INVALID PARAMS'
    if stor5[address(arg5)][arg6][arg10].field_0 != msg.sender:
        revert with 0, 'INVALID PARAMS'
    if stor5[address(arg5)][arg6][arg10].field_256 != arg2:
        revert with 0, 'INVALID PARAMS'
    if stor5[address(arg5)][arg6][arg10].field_512 != address(arg3):
        revert with 0, 'INVALID PARAMS'
    stor5[stor5[address(arg5)][arg6][arg10].field_1280][stor5[address(arg5)][arg6][arg10].field_1536][stor5[address(arg5)][arg6][arg10].field_3328].field_3072 = 0
    if stor5[address(arg5)][arg6][arg10].field_1024 > 3:
        revert with 0, 33
    if not stor5[address(arg5)][arg6][arg10].field_1024:
        if stor4[0][stor5[address(arg5)][arg6][arg10].field_0] < stor5[address(arg5)][arg6][arg10].field_256:
            revert with 0, 17
        stor4[0][stor5[address(arg5)][arg6][arg10].field_0] -= stor5[address(arg5)][arg6][arg10].field_256
        call stor5[address(arg5)][arg6][arg10].field_0 with:
           value stor5[address(arg5)][arg6][arg10].field_256 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Transfer failed.'
    else:
        if stor5[address(arg5)][arg6][arg10].field_1024 > 3:
            revert with 0, 33
        require stor5[address(arg5)][arg6][arg10].field_1024 == 1
        if stor4[stor5[address(arg5)][arg6][arg10].field_512][stor5[address(arg5)][arg6][arg10].field_0] < stor5[address(arg5)][arg6][arg10].field_256:
            revert with 0, 17
        stor4[stor5[address(arg5)][arg6][arg10].field_512][stor5[address(arg5)][arg6][arg10].field_0] -= stor5[address(arg5)][arg6][arg10].field_256
        require ext_code.size(stor5[address(arg5)][arg6][arg10].field_512)
        call stor5[address(arg5)][arg6][arg10].field_512.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor5[address(arg5)][arg6][arg10].field_0, stor5[address(arg5)][arg6][arg10].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'CANNOT TRANSFER ERC20'
    if arg7 >= 4:
        revert with 0, 33
    emit 0x8ff0597a: address(arg5), arg6, arg7, arg10
}

function sub_16e2a9c0(?) payable {
    require calldata.size - 4 >= 288
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 < 4
    require calldata.size - 100 >= 96
    require arg4 == address(arg4)
    require arg6 < 4
    if arg6 > 3:
        revert with 0, 33
    if 3 == arg6:
        require ext_code.size(address(arg4))
        staticcall address(arg4).supportsInterface(bytes4 rg1) with:
                gas gas_remaining wei
               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'NOT ERC721'
    else:
        if arg6 > 3:
            revert with 0, 33
        if arg6 != 2:
            revert with 0, 'ERROR'
        require ext_code.size(address(arg4))
        staticcall address(arg4).supportsInterface(bytes4 rg1) with:
                gas gas_remaining wei
               args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'NOT ERC1155'
    ('bool', ('ext_call.return_data', 0, 32))
    if arg3 > 3:
        revert with 0, 33
    if arg3:
        if msg.value:
            revert with 0, 'cannot deposit eth into erc20 offer'
    else:
        if arg7 != msg.value:
            revert with 0, 'deposit not enough'
    if arg6 >= 4:
        revert with 0, 33
    if arg3 > 3:
        revert with 0, 33
    if block.timestamp > !arg9:
        revert with 0, 17
    stor5[address(arg4)][arg5][sha3(address(arg4), arg5, arg6, msg.sender, block.timestamp, block.number)].field_0 = msg.sender
    if not arg3:
        stor5[address(arg4)][arg5][sha3(address(arg4), arg5, arg6, msg.sender, block.timestamp, block.number)].field_256 = msg.value
    else:
        stor5[address(arg4)][arg5][sha3(address(arg4), arg5, arg6, msg.sender, block.timestamp, block.number)].field_256 = arg7
    stor5[address(arg4)][arg5][sha3(address(arg4), arg5, arg6, msg.sender, block.timestamp, block.number)].field_512 = address(arg1)
    stor5[address(arg4)][arg5][sha3(address(arg4), arg5, arg6, msg.sender, block.timestamp, block.number)].field_768 = arg2
    if arg3 > 3:
        revert with 0, 33
    stor5[address(arg4)][arg5][sha3(address(arg4), arg5, arg6, msg.sender, block.timestamp, block.number)].field_1024 = arg3
    stor5[address(arg4)][arg5][sha3(address(arg4), arg5, arg6, msg.sender, block.timestamp, block.number)].field_1280 = address(arg4)
    stor5[address(arg4)][arg5][sha3(address(arg4), arg5, arg6, msg.sender, block.timestamp, block.number)].field_1536 = arg5
    if arg6 > 3:
        revert with 0, 33
    stor5[address(arg4)][arg5][sha3(address(arg4), arg5, arg6, msg.sender, block.timestamp, block.number)].field_1792 = arg6
    stor5[address(arg4)][arg5][sha3(address(arg4), arg5, arg6, msg.sender, block.timestamp, block.number)].field_2048 = uint8(bool(arg9))
    stor5[address(arg4)][arg5][sha3(address(arg4), arg5, arg6, msg.sender, block.timestamp, block.number)].field_2304 = arg8
    stor5[address(arg4)][arg5][sha3(address(arg4), arg5, arg6, msg.sender, block.timestamp, block.number)].field_2560 = block.timestamp + arg9
    stor5[address(arg4)][arg5][sha3(address(arg4), arg5, arg6, msg.sender, block.timestamp, block.number)].field_2816 = block.timestamp
    stor5[address(arg4)][arg5][sha3(address(arg4), arg5, arg6, msg.sender, block.timestamp, block.number)].field_3072 = 1
    stor5[address(arg4)][arg5][sha3(address(arg4), arg5, arg6, msg.sender, block.timestamp, block.number)].field_3328 = sha3(address(arg4), arg5, arg6, msg.sender, block.timestamp, block.number)
    mem[ceil32(return_data.size) + 896] = arg2
    if arg3 >= 4:
        revert with 0, 33
    mem[ceil32(return_data.size) + 928] = arg3
    mem[ceil32(return_data.size) + 960] = address(arg4)
    mem[ceil32(return_data.size) + 992] = arg5
    if arg6 >= 4:
        revert with 0, 33
    mem[ceil32(return_data.size) + 1024] = arg6
    mem[ceil32(return_data.size) + 1056] = arg7
    mem[ceil32(return_data.size) + 1088] = arg8
    mem[ceil32(return_data.size) + 1120] = arg9
    mem[ceil32(return_data.size) + 1152] = sha3(address(arg4), arg5, arg6, msg.sender, block.timestamp, block.number)
    emit 0xa58a68de: msg.sender, address(arg1), arg2, arg3, address(arg4), arg5, arg6, arg7, arg8, arg9, sha3(address(arg4), arg5, arg6, msg.sender, block.timestamp, block.number)
    if arg3 > 3:
        revert with 0, 33
    if not arg3:
        if stor4[0][msg.sender] > !arg7:
            revert with 0, 17
        stor4[0][msg.sender] += arg7
        require arg7 == msg.value
    else:
        if arg3 > 3:
            revert with 0, 33
        if arg3 == 1:
            mem[ceil32(return_data.size) + 836] = msg.sender
            mem[ceil32(return_data.size) + 868] = this.address
            require ext_code.size(address(arg1))
            staticcall address(arg1).allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            mem[ceil32(return_data.size) + 832] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= arg7:
                mem[(2 * ceil32(return_data.size)) + 832] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 836] = 32
                mem[(2 * ceil32(return_data.size)) + 868] = 15
                mem[(2 * ceil32(return_data.size)) + 900] = 'ALLOWANCE ISSUE' << 136
                revert with memory
                  from (2 * ceil32(return_data.size)) + 832
                   len ceil32(return_data.size) + 100
            mem[(2 * ceil32(return_data.size)) + 836] = msg.sender
            require ext_code.size(address(arg1))
            staticcall address(arg1).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args mem[(2 * ceil32(return_data.size)) + 836 len ceil32(return_data.size) + 32]
            mem[(2 * ceil32(return_data.size)) + 832] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= arg7:
                mem[(4 * ceil32(return_data.size)) + 832] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 836] = 32
                mem[(4 * ceil32(return_data.size)) + 868] = 21
                mem[(4 * ceil32(return_data.size)) + 900] = 'OFFERER BALANCE ISSUE' << 88
                revert with memory
                  from (4 * ceil32(return_data.size)) + 832
                   len (5 * ceil32(return_data.size)) + 100
            if msg.value:
                mem[(4 * ceil32(return_data.size)) + 832] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 836] = 32
                mem[(4 * ceil32(return_data.size)) + 868] = 46
                mem[(4 * ceil32(return_data.size)) + 900] = 'CANNOT DEPOSIT NATIVE TOKEN FOR '
                mem[(4 * ceil32(return_data.size)) + 932] = 'ERC20 LISTINGS' << 144
                revert with memory
                  from (4 * ceil32(return_data.size)) + 832
                   len (5 * ceil32(return_data.size)) + 132
            if stor4[address(arg1)][msg.sender] > !arg7:
                revert with 0, 17
            stor4[address(arg1)][msg.sender] += arg7
            mem[(4 * ceil32(return_data.size)) + 836] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 868] = this.address
            mem[(4 * ceil32(return_data.size)) + 900] = arg7
            require ext_code.size(address(arg1))
            call address(arg1).transferFrom(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 836 len (5 * ceil32(return_data.size)) + 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'CANNOT TRANSFER ERC20', mem[(6 * ceil32(return_data.size)) + 932 len 9 * ceil32(return_data.size)]
}

function sub_74516d78(?) {
    require calldata.size - 4 >= 256
    require calldata.size - 4 >= 96
    require calldata.size - 100 >= 96
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 < 4
    if arg3 > 3:
        revert with 0, 33
    if 3 == arg3:
        require ext_code.size(address(arg1))
        staticcall address(arg1).supportsInterface(bytes4 rg1) with:
                gas gas_remaining wei
               args 0x80ac58cd00000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'NOT ERC721'
    else:
        if arg3 > 3:
            revert with 0, 33
        if arg3 != 2:
            revert with 0, 'ERROR'
        require ext_code.size(address(arg1))
        staticcall address(arg1).supportsInterface(bytes4 rg1) with:
                gas gas_remaining wei
               args 0xd9b67a2600000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'NOT ERC1155'
    ('bool', ('ext_call.return_data', 0, 32))
    require arg3 < 4
    if arg3 > 3:
        revert with 0, 33
    if 3 == arg3:
        require arg1 == address(arg1)
        require ext_code.size(address(arg1))
        staticcall address(arg1).isApprovedForAll(address rg1, address rg2) with:
                gas gas_remaining wei
               args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'NOT APPROVED'
        require calldata.size - 4 >= 96
        if not bool((2 * ceil32(return_data.size)) + 288 <= test266151307()):
            revert with 0, 65
        require arg1 == address(arg1)
        require arg3 < 4
        if arg3 > 3:
            revert with 0, 33
        if 3 == arg3:
            require ext_code.size(address(arg1))
            staticcall address(arg1).ownerOf(uint256 rg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'NOT ENOUGH BAL.'
        else:
            if arg3 > 3:
                revert with 0, 33
            require 2 == arg3
            require ext_code.size(address(arg1))
            staticcall address(arg1).balanceOf(address rg1, uint256 rg2) with:
                    gas gas_remaining wei
                   args msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < arg7:
                revert with 0, 'NOT ENOUGH BAL.'
        require calldata.size - 4 >= 96
        if not bool((4 * ceil32(return_data.size)) + 480 <= test266151307()):
            revert with 0, 65
        require arg1 == address(arg1)
        require arg3 < 4
        require calldata.size - 100 >= 96
        if not bool((4 * ceil32(return_data.size)) + 576 <= test266151307()):
            revert with 0, 65
    else:
        require arg3 < 4
        if arg3 > 3:
            revert with 0, 33
        if arg3 != 2:
            require calldata.size - 4 >= 96
            if not bool(ceil32(return_data.size) + 288 <= test266151307()):
                revert with 0, 65
            require arg1 == address(arg1)
            require arg3 < 4
            if arg3 > 3:
                revert with 0, 33
            if 3 == arg3:
                require ext_code.size(address(arg1))
                staticcall address(arg1).ownerOf(uint256 rg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, 'NOT ENOUGH BAL.'
            else:
                if arg3 > 3:
                    revert with 0, 33
                require 2 == arg3
                require ext_code.size(address(arg1))
                staticcall address(arg1).balanceOf(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < arg7:
                    revert with 0, 'NOT ENOUGH BAL.'
            require calldata.size - 4 >= 96
            if not bool((2 * ceil32(return_data.size)) + 480 <= test266151307()):
                revert with 0, 65
            require arg1 == address(arg1)
            require arg3 < 4
            require calldata.size - 100 >= 96
            if not bool((2 * ceil32(return_data.size)) + 576 <= test266151307()):
                revert with 0, 65
        else:
            require arg1 == address(arg1)
            require ext_code.size(address(arg1))
            staticcall address(arg1).isApprovedForAll(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'NOT APPROVED'
            require calldata.size - 4 >= 96
            if not bool((2 * ceil32(return_data.size)) + 288 <= test266151307()):
                revert with 0, 65
            require arg1 == address(arg1)
            require arg3 < 4
            if arg3 > 3:
                revert with 0, 33
            if 3 == arg3:
                require ext_code.size(address(arg1))
                staticcall address(arg1).ownerOf(uint256 rg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, 'NOT ENOUGH BAL.'
            else:
                if arg3 > 3:
                    revert with 0, 33
                require 2 == arg3
                require ext_code.size(address(arg1))
                staticcall address(arg1).balanceOf(address rg1, uint256 rg2) with:
                        gas gas_remaining wei
                       args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < arg7:
                    revert with 0, 'NOT ENOUGH BAL.'
            require calldata.size - 4 >= 96
            if not bool((4 * ceil32(return_data.size)) + 480 <= test266151307()):
                revert with 0, 65
            require arg1 == address(arg1)
            require arg3 < 4
            require calldata.size - 100 >= 96
            if not bool((4 * ceil32(return_data.size)) + 576 <= test266151307()):
                revert with 0, 65
    require arg4 == address(arg4)
    require arg6 < 4
    order[block.number][address(arg1)][arg2][address(arg4)][arg5].field_0 = msg.sender
    order[block.number][address(arg1)][arg2][address(arg4)][arg5].field_256 = block.number
    order[block.number][address(arg1)][arg2][address(arg4)][arg5].field_512 = address(arg1)
    order[block.number][address(arg1)][arg2][address(arg4)][arg5].field_768 = arg2
    if arg3 > 3:
        revert with 0, 33
    order[block.number][address(arg1)][arg2][address(arg4)][arg5].field_1024 = arg3
    order[block.number][address(arg1)][arg2][address(arg4)][arg5].field_1280 = address(arg4)
    order[block.number][address(arg1)][arg2][address(arg4)][arg5].field_1536 = arg5
    if arg6 > 3:
        revert with 0, 33
    order[block.number][address(arg1)][arg2][address(arg4)][arg5].field_1792 = arg6
    order[block.number][address(arg1)][arg2][address(arg4)][arg5].field_2048 = arg7
    order[block.number][address(arg1)][arg2][address(arg4)][arg5].field_2304 = arg8
    order[block.number][address(arg1)][arg2][address(arg4)][arg5].field_2560 = 1
    require arg1 == address(arg1)
    require arg3 < 4
    require arg4 == address(arg4)
    require arg6 < 4
    emit 0x26703f65: sha3(block.number, address(arg1), arg2, address(arg4), arg5), address(arg1), arg2, arg3, address(arg4), arg5, arg6, arg8, msg.sender, arg7
}



}
