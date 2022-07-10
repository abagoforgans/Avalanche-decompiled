contract main {




// =====================  Runtime code  =====================


#
#  - sub_0d87b36b(?)
#
address owner;
array of address stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
uint256 sub_8ceaae1e;
mapping of struct referral;

function getReferral(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return referral[address(arg1)].field_0, referral[address(arg1)].field_256
}

function baseFee() {
    return stor1.length
}

function sub_8ceaae1e(?) {
    return sub_8ceaae1e
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function buyback() {
    return stor2.length, stor3.length, address(stor4.length), bool(uint8(stor4.length.field_160))
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function enableBuyback(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor4.length.field_160) = Mask(96, 0, arg1)
}

function setBaseFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'Fee can't be zero!'
    stor1.length = arg1
}

function sub_8a249778(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 <= 0:
        revert with 0, 'Share can't be zero!'
    referral[address(arg1)].field_0 = arg2
}

function sub_a2e4b5b0(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'Share can't be zero!'
    stor2.length = arg1
    address(stor4.length) = address(arg2)
}

function sub_06d7e043(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg1) with:
       value eth.balance(this.address) wei
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

function sub_26590896(?) {
    if 10^18 > referral[msg.sender].field_256:
        revert with 0, 'Min. amount is 1'
    referral[msg.sender].field_256 = 0
    if sub_8ceaae1e < referral[msg.sender].field_256:
        revert with 0, 17
    sub_8ceaae1e -= referral[msg.sender].field_256
    call msg.sender with:
       value referral[msg.sender].field_256 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e0eb8bef(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    u = 32 * ('cd', 4).length
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        u = cd[s]
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < sub_8ceaae1e:
        revert with 0, 17
    if eth.balance(this.address) - sub_8ceaae1e and stor3.length > -1 / eth.balance(this.address) - sub_8ceaae1e:
        revert with 0, 17
    if cd[36] and ('cd', 4).length > -1 / cd[36]:
        revert with 0, 17
    if cd[36] * ('cd', 4).length >= (eth.balance(this.address) * stor3.length) - (sub_8ceaae1e * stor3.length):
        revert with 0, 'Balance is low!'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        call mem[(32 * idx) + 140 len 20] with:
           value cd[36] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_a3c4a695(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
    if ceil32(arg1.length) <= arg1.length:
        _279 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
        if ceil32(arg1.length) <= arg1.length:
            _553 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
            if ceil32(arg1.length) <= arg1.length:
                _821 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                if ceil32(arg1.length) <= arg1.length:
                    _1077 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                    return stor[_279], 
                           stor1[_553],
                           stor2[_821],
                           stor4[_1077].field_0,
                           stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
                _1102 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                return stor[_279], 
                       stor1[_553],
                       stor2[_821],
                       stor4[_1102].field_0,
                       stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
            _834 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
            if ceil32(arg1.length) <= arg1.length:
                _1080 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                return stor[_279], 
                       stor1[_553],
                       stor2[_834],
                       stor4[_1080].field_0,
                       stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
            _1106 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
            return stor[_279], 
                   stor1[_553],
                   stor2[_834],
                   stor4[_1106].field_0,
                   stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
        _558 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
        if ceil32(arg1.length) <= arg1.length:
            _824 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
            if ceil32(arg1.length) <= arg1.length:
                _1083 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                return stor[_279], 
                       stor1[_558],
                       stor2[_824],
                       stor4[_1083].field_0,
                       stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
            _1110 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
            return stor[_279], 
                   stor1[_558],
                   stor2[_824],
                   stor4[_1110].field_0,
                   stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
        _838 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
        if ceil32(arg1.length) <= arg1.length:
            _1086 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
            return stor[_279], 
                   stor1[_558],
                   stor2[_838],
                   stor4[_1086].field_0,
                   stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
        _1114 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
        return stor[_279], 
               stor1[_558],
               stor2[_838],
               stor4[_1114].field_0,
               stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
    _282 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
    if ceil32(arg1.length) <= arg1.length:
        _555 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
        if ceil32(arg1.length) <= arg1.length:
            _827 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
            if ceil32(arg1.length) <= arg1.length:
                _1089 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                return stor[_282], 
                       stor1[_555],
                       stor2[_827],
                       stor4[_1089].field_0,
                       stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
            _1118 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
            return stor[_282], 
                   stor1[_555],
                   stor2[_827],
                   stor4[_1118].field_0,
                   stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
        _842 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
        if ceil32(arg1.length) <= arg1.length:
            _1092 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
            return stor[_282], 
                   stor1[_555],
                   stor2[_842],
                   stor4[_1092].field_0,
                   stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
        _1122 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
        return stor[_282], 
               stor1[_555],
               stor2[_842],
               stor4[_1122].field_0,
               stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
    _561 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
    if ceil32(arg1.length) <= arg1.length:
        _830 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
        if ceil32(arg1.length) <= arg1.length:
            _1095 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
            return stor[_282], 
                   stor1[_561],
                   stor2[_830],
                   stor4[_1095].field_0,
                   stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
        _1126 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
        return stor[_282], 
               stor1[_561],
               stor2[_830],
               stor4[_1126].field_0,
               stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
    _846 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
    if ceil32(arg1.length) <= arg1.length:
        _1098 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
        return stor[_282], 
               stor1[_561],
               stor2[_846],
               stor4[_1098].field_0,
               stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
    _1130 = sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
    return stor[_282], 
           stor1[_561],
           stor2[_846],
           stor4[_1130].field_0,
           stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])]
}

function sub_c3fdf3d4(?) {
    require calldata.size - 4 >= 192
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    else:
        if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
            revert with 0, 65
        else:
            mem[96] = arg1.length
            require arg1 + arg1.length + 36 <= calldata.size
            mem[128 len arg1.length] = arg1[all]
            mem[arg1.length + 128] = 0
            require arg3 == address(arg3)
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
            else:
                if arg2 <= 0:
                    revert with 0, 'Discount can't be zero!'
                else:
                    if arg4 <= 0:
                        revert with 0, 'Usage limit can't be zero!'
                    else:
                        if arg5:
                            if arg6:
                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                if ceil32(arg1.length) <= arg1.length:
                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                    stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg2
                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                    if ceil32(arg1.length) <= arg1.length:
                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                        stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = address(arg3)
                                        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                        if ceil32(arg1.length) <= arg1.length:
                                            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                            stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg4
                                            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                            if ceil32(arg1.length) <= arg1.length:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg6
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                            else:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg6
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                        else:
                                            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                            stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg4
                                            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                            if ceil32(arg1.length) <= arg1.length:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg6
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                            else:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg6
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                    else:
                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                        stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = address(arg3)
                                        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                        if ceil32(arg1.length) <= arg1.length:
                                            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                            stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg4
                                            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                            if ceil32(arg1.length) <= arg1.length:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg6
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                            else:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg6
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                        else:
                                            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                            stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg4
                                            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                            if ceil32(arg1.length) <= arg1.length:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg6
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                            else:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg6
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                else:
                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                    stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg2
                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                    if ceil32(arg1.length) <= arg1.length:
                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                        stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = address(arg3)
                                        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                        if ceil32(arg1.length) <= arg1.length:
                                            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                            stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg4
                                            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                            if ceil32(arg1.length) <= arg1.length:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg6
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                            else:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg6
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                        else:
                                            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                            stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg4
                                            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                            if ceil32(arg1.length) <= arg1.length:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg6
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                            else:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg6
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                    else:
                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                        stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = address(arg3)
                                        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                        if ceil32(arg1.length) <= arg1.length:
                                            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                            stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg4
                                            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                            if ceil32(arg1.length) <= arg1.length:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg6
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                            else:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg6
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                        else:
                                            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                            stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg4
                                            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                            if ceil32(arg1.length) <= arg1.length:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg6
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                            else:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg6
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                            else:
                                if 2400 * 24 * 3600 > !block.timestamp:
                                    revert with 0, 17
                                else:
                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                    if ceil32(arg1.length) <= arg1.length:
                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                        stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg2
                                        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                        if ceil32(arg1.length) <= arg1.length:
                                            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                            stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = address(arg3)
                                            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                            if ceil32(arg1.length) <= arg1.length:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg4
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = block.timestamp + (2400 * 24 * 3600)
                                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                    if ceil32(arg1.length) <= arg1.length:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                    else:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = block.timestamp + (2400 * 24 * 3600)
                                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                    if ceil32(arg1.length) <= arg1.length:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                    else:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                            else:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg4
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = block.timestamp + (2400 * 24 * 3600)
                                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                    if ceil32(arg1.length) <= arg1.length:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                    else:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = block.timestamp + (2400 * 24 * 3600)
                                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                    if ceil32(arg1.length) <= arg1.length:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                    else:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                        else:
                                            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                            stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = address(arg3)
                                            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                            if ceil32(arg1.length) <= arg1.length:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg4
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = block.timestamp + (2400 * 24 * 3600)
                                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                    if ceil32(arg1.length) <= arg1.length:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                    else:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = block.timestamp + (2400 * 24 * 3600)
                                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                    if ceil32(arg1.length) <= arg1.length:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                    else:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                            else:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg4
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = block.timestamp + (2400 * 24 * 3600)
                                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                    if ceil32(arg1.length) <= arg1.length:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                    else:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = block.timestamp + (2400 * 24 * 3600)
                                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                    if ceil32(arg1.length) <= arg1.length:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                    else:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                    else:
                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                        stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg2
                                        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                        if ceil32(arg1.length) <= arg1.length:
                                            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                            stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = address(arg3)
                                            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                            if ceil32(arg1.length) <= arg1.length:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg4
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = block.timestamp + (2400 * 24 * 3600)
                                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                    if ceil32(arg1.length) <= arg1.length:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                    else:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = block.timestamp + (2400 * 24 * 3600)
                                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                    if ceil32(arg1.length) <= arg1.length:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                    else:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                            else:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg4
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = block.timestamp + (2400 * 24 * 3600)
                                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                    if ceil32(arg1.length) <= arg1.length:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                    else:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = block.timestamp + (2400 * 24 * 3600)
                                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                    if ceil32(arg1.length) <= arg1.length:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                    else:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                        else:
                                            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                            stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = address(arg3)
                                            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                            if ceil32(arg1.length) <= arg1.length:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg4
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = block.timestamp + (2400 * 24 * 3600)
                                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                    if ceil32(arg1.length) <= arg1.length:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                    else:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = block.timestamp + (2400 * 24 * 3600)
                                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                    if ceil32(arg1.length) <= arg1.length:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                    else:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                            else:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg4
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = block.timestamp + (2400 * 24 * 3600)
                                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                    if ceil32(arg1.length) <= arg1.length:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                    else:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = block.timestamp + (2400 * 24 * 3600)
                                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                    if ceil32(arg1.length) <= arg1.length:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                                                    else:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = arg5
                        else:
                            if arg6:
                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                if ceil32(arg1.length) <= arg1.length:
                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                    stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg2
                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                    if ceil32(arg1.length) <= arg1.length:
                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                        stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = address(arg3)
                                        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                        if ceil32(arg1.length) <= arg1.length:
                                            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                            stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg4
                                            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                            if ceil32(arg1.length) <= arg1.length:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg6
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                            else:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg6
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                        else:
                                            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                            stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg4
                                            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                            if ceil32(arg1.length) <= arg1.length:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg6
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                            else:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg6
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                    else:
                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                        stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = address(arg3)
                                        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                        if ceil32(arg1.length) <= arg1.length:
                                            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                            stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg4
                                            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                            if ceil32(arg1.length) <= arg1.length:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg6
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                            else:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg6
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                        else:
                                            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                            stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg4
                                            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                            if ceil32(arg1.length) <= arg1.length:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg6
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                            else:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg6
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                else:
                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                    stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg2
                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                    if ceil32(arg1.length) <= arg1.length:
                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                        stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = address(arg3)
                                        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                        if ceil32(arg1.length) <= arg1.length:
                                            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                            stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg4
                                            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                            if ceil32(arg1.length) <= arg1.length:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg6
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                            else:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg6
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                        else:
                                            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                            stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg4
                                            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                            if ceil32(arg1.length) <= arg1.length:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg6
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                            else:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg6
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                    else:
                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                        stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = address(arg3)
                                        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                        if ceil32(arg1.length) <= arg1.length:
                                            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                            stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg4
                                            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                            if ceil32(arg1.length) <= arg1.length:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg6
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                            else:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg6
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                        else:
                                            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                            stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg4
                                            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                            if ceil32(arg1.length) <= arg1.length:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg6
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                            else:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg6
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                            else:
                                if 2400 * 24 * 3600 > !block.timestamp:
                                    revert with 0, 17
                                else:
                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                    if ceil32(arg1.length) <= arg1.length:
                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                        stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg2
                                        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                        if ceil32(arg1.length) <= arg1.length:
                                            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                            stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = address(arg3)
                                            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                            if ceil32(arg1.length) <= arg1.length:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg4
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = block.timestamp + (2400 * 24 * 3600)
                                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                    if ceil32(arg1.length) <= arg1.length:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                    else:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = block.timestamp + (2400 * 24 * 3600)
                                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                    if ceil32(arg1.length) <= arg1.length:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                    else:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                            else:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg4
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = block.timestamp + (2400 * 24 * 3600)
                                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                    if ceil32(arg1.length) <= arg1.length:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                    else:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = block.timestamp + (2400 * 24 * 3600)
                                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                    if ceil32(arg1.length) <= arg1.length:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                    else:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                        else:
                                            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                            stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = address(arg3)
                                            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                            if ceil32(arg1.length) <= arg1.length:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg4
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = block.timestamp + (2400 * 24 * 3600)
                                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                    if ceil32(arg1.length) <= arg1.length:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                    else:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = block.timestamp + (2400 * 24 * 3600)
                                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                    if ceil32(arg1.length) <= arg1.length:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                    else:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                            else:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg4
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = block.timestamp + (2400 * 24 * 3600)
                                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                    if ceil32(arg1.length) <= arg1.length:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                    else:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = block.timestamp + (2400 * 24 * 3600)
                                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                    if ceil32(arg1.length) <= arg1.length:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                    else:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                    else:
                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                        stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg2
                                        mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                        if ceil32(arg1.length) <= arg1.length:
                                            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                            stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = address(arg3)
                                            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                            if ceil32(arg1.length) <= arg1.length:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg4
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = block.timestamp + (2400 * 24 * 3600)
                                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                    if ceil32(arg1.length) <= arg1.length:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                    else:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = block.timestamp + (2400 * 24 * 3600)
                                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                    if ceil32(arg1.length) <= arg1.length:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                    else:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                            else:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg4
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = block.timestamp + (2400 * 24 * 3600)
                                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                    if ceil32(arg1.length) <= arg1.length:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                    else:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = block.timestamp + (2400 * 24 * 3600)
                                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                    if ceil32(arg1.length) <= arg1.length:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                    else:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                        else:
                                            mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                            stor1[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = address(arg3)
                                            mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                            if ceil32(arg1.length) <= arg1.length:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg4
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = block.timestamp + (2400 * 24 * 3600)
                                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                    if ceil32(arg1.length) <= arg1.length:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                    else:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = block.timestamp + (2400 * 24 * 3600)
                                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                    if ceil32(arg1.length) <= arg1.length:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                    else:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                            else:
                                                mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                stor2[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = arg4
                                                mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) <= arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = block.timestamp + (2400 * 24 * 3600)
                                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                    if ceil32(arg1.length) <= arg1.length:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                    else:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                else:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                    stor3[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = block.timestamp + (2400 * 24 * 3600)
                                                    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                                    if ceil32(arg1.length) <= arg1.length:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
                                                    else:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 6
                                                        stor4[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])].field_0 = 1000 * 10^18
}



}
