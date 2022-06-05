contract main {




// =====================  Runtime code  =====================


bool stor0; offset 256
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 16
uint256 stor0; offset 8
array of uint256 stor1;
address owner;
array of struct transactions;
address policyAddress;
array of struct stor31803416089537561239136862248731574845551118351359000136225178771603843531604;
array of uint256 stor31803416089537561239136862248731574845551118351359000136225178771603843531605;

function policy() payable {
    return policyAddress
}

function owner() payable {
    return owner
}

function transactionsSize() payable {
    return transactions.length
}

function transactions(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < transactions.length
    mem[128] = stor[sha3((2 * arg1) + ('name', 'transactions', 102) + 1)].field_0
    idx = 128
    s = 0
    while stor[(2 * arg1) + ('name', 'transactions', 102) + 1].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((2 * arg1) + ('name', 'transactions', 102) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return bool(uint8(transactions[arg1].field_0)), 
           address(transactions[arg1].field_0),
           Array(len=stor[(2 * arg1) + ('name', 'transactions', 102) + 1].length, data=mem[128 len stor[(2 * arg1) + ('name', 'transactions', 102) + 1].length])
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setTransactionEnabled(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if arg1 >= transactions.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe696e646578206d75737420626520696e2072616e6765206f662073746f726564207478206c6973,
                    mem[204 len 24]
    uint8(transactions[arg1].field_0) = uint8(arg2)
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x74436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
    owner = arg1
    uint8(stor0.field_0) = 1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    Mask(240, 0, stor0.field_16) = 0
    stor0.field_256 % 1 = 0
    stor0.field_256 % 1 = 0
}

function addTransaction(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == owner
    transactions.length++
    uint8(stor4650[stor102.length].field_0) = 1
    address(stor4650[stor102.length].field_8) = arg1
    Mask(88, 0, stor4650[stor102.length].field_168) = 0
    if arg2.length:
        stor[sha3((2 * stor102.length) + 0x46501879b8ca8525e8c2fd519e2fbfcfa2ebea26501294aa02cbfcfb12e94355)][] = Array(len=arg2.length, data=arg2[all])
    else:
        stor4650[stor102.length] = 0
        idx = 0
        while stor[(2 * stor102.length) + 0x46501879b8ca8525e8c2fd519e2fbfcfa2ebea26501294aa02cbfcfb12e94355].length + 31 / 32 > idx:
            stor[idx + sha3((2 * stor102.length) + 0x46501879b8ca8525e8c2fd519e2fbfcfa2ebea26501294aa02cbfcfb12e94355)] = 0
            idx = idx + 1
            continue 
}

function rebase() payable {
    mem[64] = 96
    require tx.origin == msg.sender
    mem[96] = 0xaf14052c00000000000000000000000000000000000000000000000000000000
    require ext_code.size(policyAddress)
    call policyAddress.0xaf14052c with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 0
    while idx < transactions.length:
        mem[0] = 102
        if uint8(transactions[idx].field_0):
            _19 = mem[64]
            mem[0] = (2 * idx) + sha3(102) + 1
            mem[mem[64]] = stor[sha3((2 * idx) + ('name', 'transactions', 102) + 1)].field_0
            s = mem[64]
            t = sha3(mem[0])
            while _19 + stor[(2 * idx) + ('name', 'transactions', 102) + 1].length > s + 32:
                mem[s + 32] = stor1[t]
                s = s + 32
                t = t + 1
                continue 
            call address(transactions[idx].field_8).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _19 + stor[(2 * idx) + ('name', 'transactions', 102) + 1].length + -mem[64] - 4]
            if return_data.size:
                _34 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_34] = return_data.size
                mem[_34 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'Transaction Failed'
        idx = idx + 1
        continue 
}

function removeTransaction(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if arg1 >= transactions.length:
        revert with 0, 'index out of bounds'
    if arg1 < transactions.length - 1:
        require transactions.length - 1 < transactions.length
        require arg1 < transactions.length
        uint8(transactions[arg1].field_0) = uint8(bool(uint8(transactions[transactions.length - 1].field_0)))
        uint8(transactions[arg1].field_0) = uint8(bool(uint8(transactions[transactions.length - 1].field_0)))
        Mask(248, 0, transactions[arg1].field_8) = address(transactions[transactions.length - 1].field_8)
        Mask(88, 0, transactions[arg1].field_168) = Mask(88, 168, bool(uint8(transactions[transactions.length - 1].field_0))) >> 168
        if not stor[(2 * transactions.length - 1) + ('name', 'transactions', 102) + 1].length:
            transactions[arg1].field_256 = 0
            idx = 0
            while stor[('name', 'transactions', 102) + (2 * arg1) + 1].length + 31 / 32 > idx:
                stor[idx + sha3(('name', 'transactions', 102) + (2 * arg1) + 1)].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if 31 >= stor[(2 * transactions.length - 1) + ('name', 'transactions', 102) + 1].length:
                transactions[arg1].field_256 = transactions[transactions.length - 1].field_256
                idx = 0
                while stor[('name', 'transactions', 102) + (2 * arg1) + 1].length + 31 / 32 > idx:
                    stor[idx + sha3(('name', 'transactions', 102) + (2 * arg1) + 1)].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                transactions[arg1].field_256 = Mask(255, 1, transactions[transactions.length - 1].field_256 and (256 * not bool(transactions[transactions.length - 1].field_256)) - 1) + 1
                if not Mask(255, 1, transactions[transactions.length - 1].field_256 and (256 * not bool(transactions[transactions.length - 1].field_256)) - 1):
                    idx = 0
                    while stor[('name', 'transactions', 102) + (2 * arg1) + 1].length + 31 / 32 > idx:
                        stor[idx + sha3(('name', 'transactions', 102) + (2 * arg1) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 0
                    while stor[(2 * transactions.length - 1) + ('name', 'transactions', 102) + 1].length + 31 / 32 > idx:
                        stor[s + sha3(('name', 'transactions', 102) + (2 * arg1) + 1)].field_0 = stor[idx + sha3((2 * transactions.length - 1) + ('name', 'transactions', 102) + 1)].field_0
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = stor[(2 * transactions.length - 1) + ('name', 'transactions', 102) + 1].length + 31 / 32
                    while stor[('name', 'transactions', 102) + (2 * arg1) + 1].length + 31 / 32 > idx:
                        stor[idx + sha3(('name', 'transactions', 102) + (2 * arg1) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
    require transactions.length
    Mask(168, 0, transactions[transactions.length - 1].field_0) = 0
    transactions[transactions.length - 1].field_256 = 0
    if 31 < stor[(2 * transactions.length - 1) + ('name', 'transactions', 102) + 1].length:
        idx = 0
        while stor[(2 * transactions.length - 1) + ('name', 'transactions', 102) + 1].length + 31 / 32 > idx:
            stor[idx + sha3((2 * transactions.length - 1) + ('name', 'transactions', 102) + 1)].field_0 = 0
            idx = idx + 1
            continue 
    transactions.length--
}



}
