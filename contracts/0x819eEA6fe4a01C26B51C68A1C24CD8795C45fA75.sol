contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#  - sub_cec790b4(?)
#
uint256 stor0;
address adminAddress;
address idoTokenAddress;
array of struct stor3;
mapping of uint256 stor4;
uint8 sub_610e8d70;
uint256 startTime;
uint256 endTime;
uint256 harvestTime;
uint256 sub_9adbc2c8;
uint256 sub_9d880f24;
uint256 sub_68ed32ac;
uint256 sub_301698fa;
mapping of struct userInfo;
array of address addressList;

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, bool(userInfo[arg1].field_256)
}

function sub_2906a49c(?) payable {
    return stor3.length
}

function sub_301698fa(?) payable {
    return sub_301698fa
}

function endTime() payable {
    return endTime
}

function sub_610e8d70(?) payable {
    return sub_610e8d70
}

function hasHarvest(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(userInfo[address(arg1)].field_256)
}

function sub_68ed32ac(?) payable {
    return sub_68ed32ac
}

function startTime() payable {
    return startTime
}

function sub_9adbc2c8(?) payable {
    return sub_9adbc2c8
}

function sub_9d880f24(?) payable {
    return sub_9d880f24
}

function addressList(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < addressList.length
    return address(addressList[arg1])
}

function idoToken() payable {
    return idoTokenAddress
}

function harvestTime() payable {
    return harvestTime
}

function getAddressListLength() payable {
    return addressList.length
}

function adminAddress() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function sub_81a86db6(?) payable {
    if sub_9adbc2c8 < sub_68ed32ac:
        revert with 0, 17
    return (sub_9adbc2c8 - sub_68ed32ac)
}

function sub_bf74d1f3(?) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'IDO: only admin'
    sub_301698fa = arg1
}

function sub_3be23495(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if adminAddress != msg.sender:
        revert with 0, 'IDO: only admin'
    sub_610e8d70 = uint8(arg1)
}

function setEndTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'IDO: only admin'
    if arg1 <= startTime:
        revert with 0, 'no'
    endTime = arg1
}

function setHarvestTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'IDO: only admin'
    if arg1 < endTime:
        revert with 0, 'no'
    harvestTime = arg1
}

function sub_b28ddf16(?) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'IDO: only admin'
    if block.timestamp >= startTime:
        revert with 0, 'no'
    sub_9d880f24 = arg1
}

function sub_f4d1b09b(?) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'IDO: only admin'
    if block.timestamp >= startTime:
        revert with 0, 'no'
    sub_9adbc2c8 = arg1
}

function sub_72f3971b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if userInfo[address(arg1)].field_0 and sub_9d880f24 > -1 / userInfo[address(arg1)].field_0:
        revert with 0, 17
    if not sub_9adbc2c8:
        revert with 0, 18
    return (userInfo[address(arg1)].field_0 * sub_9d880f24 / sub_9adbc2c8)
}

function sub_2390e167(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if adminAddress != msg.sender:
        revert with 0, 'IDO: only admin'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 4
        if not stor4[address(cd[((32 * idx) + cd[4] + 36)])]:
            stor3.length++
            stor3[stor3.length].field_0 = address(cd[((32 * idx) + cd[4] + 36)])
            stor3[stor3.length].field_160 = 0
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 4
            stor4[address(cd[((32 * idx) + cd[4] + 36)])] = stor3.length
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_40c161c9(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if adminAddress != msg.sender:
        revert with 0, 'IDO: only admin'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 4
        if stor4[address(cd[((32 * idx) + cd[4] + 36)])]:
            if idx >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[32] = 4
            if stor4[address(cd[((32 * idx) + cd[4] + 36)])]:
                if stor4[address(cd[((32 * idx) + cd[4] + 36)])] < 1:
                    revert with 0, 17
                if stor3.length < 1:
                    revert with 0, 17
                if stor3.length - 1 != stor4[address(cd[((32 * idx) + cd[4] + 36)])] - 1:
                    if stor3.length - 1 >= stor3.length:
                        revert with 0, 50
                    if stor4[address(cd[((32 * idx) + cd[4] + 36)])] - 1 >= stor3.length:
                        revert with 0, 50
                    stor3[stor4[address(cd[((32 * idx) + cd[4] + 36)])]].field_0 = stor3[stor3.length].field_0
                    stor4[stor3[stor3.length].field_0] = stor4[address(cd[((32 * idx) + cd[4] + 36)])]
                if not stor3.length:
                    revert with 0, 49
                stor3[stor3.length].field_0 = 0
                stor3.length--
                mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[32] = 4
                stor4[address(cd[((32 * idx) + cd[4] + 36)])] = 0
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function finalWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'IDO: only admin'
    mem[100] = this.address
    require ext_code.size(idoTokenAddress)
    staticcall idoTokenAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 > ext_call.return_data[0]:
        revert with 0, 'IDO: not enough ido token'
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = arg1
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = transfer(address arg1, uint256 arg2)
    mem[64] = ceil32(return_data.size) + 260
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(idoTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = transfer(address arg1, uint256 arg2), msg.sender, arg1, 0
    mem[ceil32(return_data.size) + 328] = 0
    call idoTokenAddress with:
       funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, arg1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if not ext_call.return_data[0]:
            if var81002 >= stor3.length:
            if var87001 >= stor3.length:
                revert with 0, 50
            if var97001 >= stor3.length:
                revert with 0, 50
            mem[0] = 3
            mem[ceil32(return_data.size) + 260] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[var105001] = this.address
            require ext_code.size(var107003)
            staticcall var109002.mem[var109003 len 4] with:
                    gas gas_remaining wei
                   args mem[var109003 + 4 len var109004 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            # nil
        else:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if var86002 >= stor3.length:
            if var92001 >= stor3.length:
                revert with 0, 50
            if var102001 >= stor3.length:
                revert with 0, 50
            mem[0] = 3
            mem[ceil32(return_data.size) + 260] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[var110001] = this.address
            require ext_code.size(var112003)
            staticcall var114002.mem[var114003 len 4] with:
                    gas gas_remaining wei
                   args mem[var114003 + 4 len var114004 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            # nil
    else:
        mem[64] = ceil32(return_data.size) + ceil32(return_data.size) + 261
        mem[ceil32(return_data.size) + 260] = return_data.size
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            if var81002 >= stor3.length:
            if var87001 >= stor3.length:
                revert with 0, 50
            if var97001 >= stor3.length:
                revert with 0, 50
            mem[0] = 3
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[var105001] = this.address
            require ext_code.size(var107003)
            staticcall var109002.mem[var109003 len 4] with:
                    gas gas_remaining wei
                   args mem[var109003 + 4 len var109004 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            # nil
        else:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if var86002 >= stor3.length:
            if var92001 >= stor3.length:
                revert with 0, 50
            if var102001 >= stor3.length:
                revert with 0, 50
            mem[0] = 3
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = 0x70a0823100000000000000000000000000000000000000000000000000000000
            mem[var110001] = this.address
            require ext_code.size(var112003)
            staticcall var114002.mem[var114003 len 4] with:
                    gas gas_remaining wei
                   args mem[var114003 + 4 len var114004 - 4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            # nil
}

function deposit(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if block.timestamp <= startTime:
        revert with 0, 'IDO: not ido time'
    if block.timestamp >= endTime:
        revert with 0, 'IDO: not ido time'
    if userInfo[msg.sender].field_0:
        revert with 0, 'IDO: user already exists'
    if not stor4[address(arg2)]:
        revert with 0, 'IDO: UnSupported token'
    require ext_code.size(arg2)
    staticcall arg2.decimals() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if sub_610e8d70 < ext_call.return_data[31 len 1]:
        revert with 0, 17
    if not uint8(sub_610e8d70 - ext_call.return_data[31 len 1]):
        if arg1 and 1 > -1 / arg1:
            revert with 0, 17
        if arg1 <= 0:
            revert with 0, 'IDO: amount error'
        if arg1 < sub_301698fa:
            revert with 0, 'IDO: amount error'
        if sub_9adbc2c8 < sub_68ed32ac:
            revert with 0, 17
        if arg1 > sub_9adbc2c8 - sub_68ed32ac:
            revert with 0, 'IDO: amount error'
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = this.address
        mem[ceil32(return_data.size) + 196] = arg1
        mem[ceil32(return_data.size) + 96] = 100
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
        mem[ceil32(return_data.size) + 228] = 32
        mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg2):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 292 len 128] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1, 0
        mem[ceil32(return_data.size) + 392] = 0
        call arg2 with:
           funct Mask(32, 224, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                if not mem[ceil32(return_data.size) + 324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        addressList.length++
        uint256(addressList[addressList.length]) = msg.sender or Mask(96, 160, uint256(addressList[addressList.length]))
        userInfo[msg.sender].field_0 = arg1
        if sub_68ed32ac > !arg1:
            revert with 0, 17
        sub_68ed32ac += arg1
    else:
        if bool(bool(uint8(sub_610e8d70 - ext_call.return_data[31 len 1]) < 78)) or bool(bool(uint8(sub_610e8d70 - ext_call.return_data[31 len 1]) < 32)):
            if arg1 and 10^uint8(sub_610e8d70 - ext_call.return_data[31 len 1]) > -1 / arg1:
                revert with 0, 17
            if arg1 * 10^uint8(sub_610e8d70 - ext_call.return_data[31 len 1]) <= 0:
                revert with 0, 'IDO: amount error'
            if arg1 * 10^uint8(sub_610e8d70 - ext_call.return_data[31 len 1]) < sub_301698fa:
                revert with 0, 'IDO: amount error'
            if sub_9adbc2c8 < sub_68ed32ac:
                revert with 0, 17
            if arg1 * 10^uint8(sub_610e8d70 - ext_call.return_data[31 len 1]) > sub_9adbc2c8 - sub_68ed32ac:
                revert with 0, 'IDO: amount error'
            mem[ceil32(return_data.size) + 132] = msg.sender
            mem[ceil32(return_data.size) + 164] = this.address
            mem[ceil32(return_data.size) + 196] = arg1
            mem[ceil32(return_data.size) + 96] = 100
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 128 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
            mem[ceil32(return_data.size) + 228] = 32
            mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(arg2):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 292 len 128] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1, 0
            mem[ceil32(return_data.size) + 392] = 0
            call arg2 with:
               funct Mask(32, 224, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                    if not mem[ceil32(return_data.size) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            addressList.length++
            uint256(addressList[addressList.length]) = msg.sender or Mask(96, 160, uint256(addressList[addressList.length]))
            userInfo[msg.sender].field_0 = arg1 * 10^uint8(sub_610e8d70 - uint8(ext_call.return_data[0]))
            if sub_68ed32ac > !(arg1 * 10^uint8(sub_610e8d70 - uint8(ext_call.return_data[0]))):
                revert with 0, 17
            sub_68ed32ac += arg1 * 10^uint8(sub_610e8d70 - uint8(ext_call.return_data[0]))
        else:
            s = 10
            t = 1
            idx = uint8(sub_610e8d70 - ext_call.return_data[31 len 1])
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if arg1 and s * t > -1 / arg1:
                revert with 0, 17
            if arg1 * s * t <= 0:
                revert with 0, 'IDO: amount error'
            if arg1 * s * t < sub_301698fa:
                revert with 0, 'IDO: amount error'
            if sub_9adbc2c8 < sub_68ed32ac:
                revert with 0, 17
            if arg1 * s * t > sub_9adbc2c8 - sub_68ed32ac:
                revert with 0, 'IDO: amount error'
            mem[ceil32(return_data.size) + 132] = msg.sender
            mem[ceil32(return_data.size) + 164] = this.address
            mem[ceil32(return_data.size) + 196] = arg1
            mem[ceil32(return_data.size) + 96] = 100
            mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 128 len 4] = transferFrom(address arg1, address arg2, uint256 arg3)
            mem[ceil32(return_data.size) + 228] = 32
            mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(arg2):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 292 len 128] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1, 0
            mem[ceil32(return_data.size) + 392] = 0
            call arg2 with:
               funct Mask(32, 224, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg1, 0) << 544)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                    if not mem[ceil32(return_data.size) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            addressList.length++
            uint256(addressList[addressList.length]) = msg.sender or Mask(96, 160, uint256(addressList[addressList.length]))
            userInfo[msg.sender].field_0 = arg1 * s * t
            if sub_68ed32ac > !(arg1 * s * t):
                revert with 0, 17
            sub_68ed32ac += arg1 * s * t
    emit Deposit(arg1, arg2, msg.sender);
    stor0 = 1
}



}
