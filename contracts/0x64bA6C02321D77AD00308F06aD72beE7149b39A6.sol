contract main {




// =====================  Runtime code  =====================


#
#  - deficit()
#  - _fallback()
#
const sub_f9462173(?) = 200


address owner;
mapping of struct sub_e21fe961;
array of struct stor2;
mapping of uint256 stor3;
mapping of uint256 balanceOf;
uint256 totalSupply;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function sub_e21fe961(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_e21fe961[arg1].field_0, sub_e21fe961[arg1].field_256, sub_e21fe961[arg1].field_512
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function pay() {
    if var41002 >= stor2.length:
    if eth.balance(this.address) < totalSupply:
        revert with 0, 17
    if var53001 >= stor2.length:
        revert with 0, 50
    if not var71001:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Budget::deficitTo: recipient not in expenditure item'
    # nil
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

function withdraw() {
    if not balanceOf[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Budget::withdraw: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] = 0
    if totalSupply < balanceOf[msg.sender]:
        revert with 0, 17
    totalSupply -= balanceOf[msg.sender]
    call msg.sender with:
       value balanceOf[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdrawal(balanceOf[msg.sender], msg.sender);
}

function deficitTo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Budget::deficitTo: recipient not in expenditure item'
    if eth.balance(arg1) > !balanceOf[address(arg1)]:
        revert with 0, 17
    if eth.balance(arg1) + balanceOf[address(arg1)] >= sub_e21fe961[address(arg1)].field_256:
        return 0
    if sub_e21fe961[address(arg1)].field_512 < eth.balance(arg1) + balanceOf[address(arg1)]:
        revert with 0, 17
    return (sub_e21fe961[address(arg1)].field_512 - eth.balance(arg1) - balanceOf[address(arg1)])
}

function transferETH(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Budget::transferETH: negative or zero amount'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Budget::transferETH: invalid recipient'
    if eth.balance(this.address) < totalSupply:
        revert with 0, 17
    if arg2 > eth.balance(this.address) - totalSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Budget::transferETH: transfer amount exceeds balance'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeExpenditure(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Budget::changeExpenditure: minimal balance should be less or equal target balance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Budget::changeExpenditure: invalid recipient'
    sub_e21fe961[address(arg1)].field_0 = arg1
    sub_e21fe961[address(arg1)].field_256 = arg2
    sub_e21fe961[address(arg1)].field_512 = arg3
    if arg3:
        if not stor3[address(arg1)]:
            stor2.length++
            stor2[stor2.length].field_0 = arg1
            stor2[stor2.length].field_160 = 0
            stor3[address(arg1)] = stor2.length
        if stor2.length > 200:
            revert with 0, 'Budget::changeExpenditure: recipient must not exceed maximum count'
    else:
        if totalSupply < balanceOf[address(arg1)]:
            revert with 0, 17
        totalSupply -= balanceOf[address(arg1)]
        balanceOf[address(arg1)] = 0
        if stor3[address(arg1)]:
            if stor3[address(arg1)] < 1:
                revert with 0, 17
            if stor2.length < 1:
                revert with 0, 17
            if stor2.length - 1 != stor3[address(arg1)] - 1:
                if stor2.length - 1 >= stor2.length:
                    revert with 0, 50
                if stor3[address(arg1)] - 1 >= stor2.length:
                    revert with 0, 50
                stor2[stor3[address(arg1)]].field_0 = stor2[stor2.length].field_0
                stor3[stor2[stor2.length].field_0] = stor3[address(arg1)]
            if not stor2.length:
                revert with 0, 49
            stor2[stor2.length].field_0 = 0
            stor2.length--
            stor3[address(arg1)] = 0
    emit ExpenditureChanged(arg2, arg3, arg1);
}

function recipients() {
    if stor2.length > test266151307():
        revert with 0, 65
    mem[96] = stor2.length
    mem[64] = (32 * stor2.length) + 128
    if not stor2.length:
        if var30002 >= stor2.length:
            mem[(32 * stor2.length) + 128] = 32
            mem[(32 * stor2.length) + 160] = stor2.length
            idx = 0
            s = (32 * stor2.length) + 192
            t = 128
            while idx < stor2.length:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor2.length) + 128
               len (96 * stor2.length) + 64
        if var36001 >= stor2.length:
            revert with 0, 50
        mem[0] = 2
        if var44002 >= stor2.length:
            revert with 0, 50
        mem[(32 * var44002) + 128] = address(var44001)
        s = var44002
        t = var44001
        idx = var44002
        while idx != -1:
            if idx + 1 >= stor2.length:
                mem[(32 * stor2.length) + 128] = 32
                mem[(32 * stor2.length) + 160] = stor2.length
                idx = 0
                u = (32 * stor2.length) + 192
                v = 128
                while idx < stor2.length:
                    mem[u] = mem[v + 12 len 20]
                    mem[(32 * s) + 128] = address(t)
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                return memory
                  from (32 * stor2.length) + 128
                   len (96 * stor2.length) + 64
            mem[0] = 2
            if idx + 1 >= stor2.length:
                revert with 0, 50
            mem[(32 * idx + 2) + 128] = stor2[idx].field_512
            s = idx + 1
            t = stor2[idx].field_256
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * stor2.length] = call.data[calldata.size len 32 * stor2.length]
        if var31002 >= stor2.length:
            mem[(32 * stor2.length) + 128] = 32
            mem[(32 * stor2.length) + 160] = stor2.length
            idx = 0
            s = (32 * stor2.length) + 192
            t = 128
            while idx < stor2.length:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            return memory
              from (32 * stor2.length) + 128
               len (96 * stor2.length) + 64
        if var37001 >= stor2.length:
            revert with 0, 50
        mem[0] = 2
        if var45002 >= stor2.length:
            revert with 0, 50
        mem[(32 * var45002) + 128] = address(var45001)
        s = var45002
        t = var45001
        idx = var45002
        while idx != -1:
            if idx + 1 >= stor2.length:
                mem[(32 * stor2.length) + 128] = 32
                mem[(32 * stor2.length) + 160] = stor2.length
                idx = 0
                u = (32 * stor2.length) + 192
                v = 128
                while idx < stor2.length:
                    mem[u] = mem[v + 12 len 20]
                    mem[(32 * s) + 128] = address(t)
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                return memory
                  from (32 * stor2.length) + 128
                   len (96 * stor2.length) + 64
            mem[0] = 2
            if idx + 1 >= stor2.length:
                revert with 0, 50
            mem[(32 * idx + 2) + 128] = stor2[idx].field_512
            s = idx + 1
            t = stor2[idx].field_256
            idx = idx + 1
            continue 
    revert with 0, 17
}



}
