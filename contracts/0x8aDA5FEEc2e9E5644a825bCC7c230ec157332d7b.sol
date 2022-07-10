contract main {




// =====================  Runtime code  =====================


const name = '', 0

const decimals = 18

const symbol = '', 0


uint256 stor0; offset 1
uint256 sub_8124f7ac;
address stor1;
uint256 totalSupply;
uint256 totalStaked;
mapping of struct stakedOf;
uint256 stor5;

function totalSupply() payable {
    return totalSupply
}

function isBurningDisabled(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stakedOf[address(arg1)].field_1024)
}

function sub_8124f7ac(?) payable {
    return sub_8124f7ac
}

function totalStaked() payable {
    return totalStaked
}

function stakedOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stakedOf[address(arg1)].field_256
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return stakedOf[address(arg1)][2][address(arg2)].field_0
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    stakedOf[msg.sender][2][address(arg1)].field_0 = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function disableBurning(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == stor1
    stakedOf[address(arg1)].field_1024 = uint8(arg2)
    emit DisableBurning(arg2, arg1);
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stakedOf[address(arg1)].field_0 < stakedOf[address(arg1)].field_256:
        revert with 0, 17
    return (stakedOf[address(arg1)].field_0 - stakedOf[address(arg1)].field_256)
}

function distribute(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require totalStaked
    if stakedOf[address(msg.sender)].field_0 < stakedOf[address(msg.sender)].field_256:
        revert with 0, 17
    require stakedOf[address(msg.sender)].field_0 - stakedOf[address(msg.sender)].field_256 >= arg1
    if stakedOf[msg.sender].field_0 < arg1:
        revert with 0, 17
    stakedOf[msg.sender].field_0 -= arg1
    if arg1 and 18446744073709551616 > -1 / arg1:
        revert with 0, 17
    if not totalStaked:
        revert with 0, 18
    if stor5 > !(arg1 << 64 / totalStaked):
        revert with 0, 17
    stor5 += arg1 << 64 / totalStaked
    emit 0xfeddf252: arg1, msg.sender, this.address
}

function dividendsOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor5 and stakedOf[address(arg1)].field_256 > -1 / stor5:
        revert with 0, 17
    if stor5 * stakedOf[address(arg1)].field_256 < stakedOf[address(arg1)].field_768 - 0x8000000000000000000000000000000000000000000000000000000000000000 and stakedOf[address(arg1)].field_768 >= 0:
        revert with 0, 17
    if stakedOf[address(arg1)].field_768 < 0 and stor5 * stakedOf[address(arg1)].field_256 > stakedOf[address(arg1)].field_768 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    return (Mask(192, 64, (stor5 * stakedOf[address(arg1)].field_256) - stakedOf[address(arg1)].field_768) >> 64)
}

function infoFor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stakedOf[address(arg1)].field_0 < stakedOf[address(arg1)].field_256:
        revert with 0, 17
    if stor5 and stakedOf[address(arg1)].field_256 > -1 / stor5:
        revert with 0, 17
    if stor5 * stakedOf[address(arg1)].field_256 < stakedOf[address(arg1)].field_768 - 0x8000000000000000000000000000000000000000000000000000000000000000 and stakedOf[address(arg1)].field_768 >= 0:
        revert with 0, 17
    if stakedOf[address(arg1)].field_768 < 0 and stor5 * stakedOf[address(arg1)].field_256 > stakedOf[address(arg1)].field_768 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    return totalSupply, 
           totalStaked,
           stakedOf[address(arg1)].field_0 - stakedOf[address(arg1)].field_256,
           stakedOf[address(arg1)].field_256,
           Mask(192, 64, (stor5 * stakedOf[address(arg1)].field_256) - stakedOf[address(arg1)].field_768) >> 64
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stakedOf[address(msg.sender)].field_0 < stakedOf[address(msg.sender)].field_256:
        revert with 0, 17
    require stakedOf[address(msg.sender)].field_0 - stakedOf[address(msg.sender)].field_256 >= arg1
    if stakedOf[address(msg.sender)].field_256 > !arg1:
        revert with 0, 17
    require stakedOf[address(msg.sender)].field_256 + arg1 >= 1000
    if totalStaked > !arg1:
        revert with 0, 17
    totalStaked += arg1
    if stakedOf[msg.sender].field_256 > !arg1:
        revert with 0, 17
    stakedOf[msg.sender].field_256 += arg1
    if arg1 and stor5 > -1 / arg1:
        revert with 0, 17
    if arg1 * stor5 > -stakedOf[msg.sender].field_768 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stakedOf[msg.sender].field_768 >= 0:
        revert with 0, 17
    if stakedOf[msg.sender].field_768 < 0 and arg1 * stor5 < -stakedOf[msg.sender].field_768 - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    stakedOf[msg.sender].field_768 += arg1 * stor5
    emit 0xfeddf252: arg1, msg.sender, this.address
    emit Stake(arg1, msg.sender);
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stakedOf[address(msg.sender)].field_0 < stakedOf[address(msg.sender)].field_256:
        revert with 0, 17
    if stakedOf[address(msg.sender)].field_0 - stakedOf[address(msg.sender)].field_256 < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    if stakedOf[msg.sender].field_0 < arg1:
        revert with 0, 17
    stakedOf[msg.sender].field_0 -= arg1
    if not totalStaked:
        if totalSupply < arg1:
            revert with 0, 17
        totalSupply -= arg1
        emit 0xfeddf252: arg1, msg.sender, 0
        emit Burn(arg1);
    else:
        if Mask(255, 1, arg1) and 18446744073709551616 > -1 / arg1 / 2:
            revert with 0, 17
        if not totalStaked:
            revert with 0, 18
        if stor5 > !(Mask(192, 1, arg1) << 63 / totalStaked):
            revert with 0, 17
        stor5 += Mask(192, 1, arg1) << 63 / totalStaked
        emit 0xfeddf252: (arg1 / 2), msg.sender, this.address
        if totalSupply < arg1 / 2:
            revert with 0, 17
        totalSupply -= arg1 / 2
        emit 0xfeddf252: (arg1 / 2), msg.sender, 0
        emit Burn((arg1 / 2));
}

function unstake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require stakedOf[address(msg.sender)].field_256 >= arg1
    if arg1 and stor0 > -1 / arg1:
        revert with 0, 17
    if arg1 * stor0 / 100 and 18446744073709551616 > -1 / arg1 * stor0 / 100:
        revert with 0, 17
    if not totalStaked:
        revert with 0, 18
    if stor5 > !(arg1 * stor0 / 100 << 64 / totalStaked):
        revert with 0, 17
    stor5 += arg1 * stor0 / 100 << 64 / totalStaked
    if totalStaked < arg1:
        revert with 0, 17
    totalStaked -= arg1
    if stakedOf[msg.sender].field_0 < arg1 * stor0 / 100:
        revert with 0, 17
    stakedOf[msg.sender].field_0 -= arg1 * stor0 / 100
    if stakedOf[msg.sender].field_256 < arg1:
        revert with 0, 17
    stakedOf[msg.sender].field_256 -= arg1
    if arg1 and stor5 > -1 / arg1:
        revert with 0, 17
    if stakedOf[msg.sender].field_768 < (arg1 * stor5) - 0x8000000000000000000000000000000000000000000000000000000000000000 and arg1 * stor5 >= 0:
        revert with 0, 17
    if arg1 * stor5 < 0 and stakedOf[msg.sender].field_768 > (arg1 * stor5) + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    stakedOf[msg.sender].field_768 += -1 * arg1 * stor5
    if arg1 < arg1 * stor0 / 100:
        revert with 0, 17
    emit 0xfeddf252: (arg1 - (arg1 * stor0 / 100)), this.address, msg.sender
    emit Unstake(arg1, msg.sender);
}

function collect() payable {
    if stor5 and stakedOf[address(msg.sender)].field_256 > -1 / stor5:
        revert with 0, 17
    if stor5 * stakedOf[address(msg.sender)].field_256 < stakedOf[address(msg.sender)].field_768 - 0x8000000000000000000000000000000000000000000000000000000000000000 and stakedOf[address(msg.sender)].field_768 >= 0:
        revert with 0, 17
    if stakedOf[address(msg.sender)].field_768 < 0 and stor5 * stakedOf[address(msg.sender)].field_256 > stakedOf[address(msg.sender)].field_768 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 17
    if Mask(192, 64, (stor5 * stakedOf[address(msg.sender)].field_256) - stakedOf[address(msg.sender)].field_768) and 18446744073709551616 > -1 / Mask(192, 64, (stor5 * stakedOf[address(msg.sender)].field_256) - stakedOf[address(msg.sender)].field_768) >> 64:
        revert with 0, 17
    if Mask(192, 64, (stor5 * stakedOf[address(msg.sender)].field_256) - stakedOf[address(msg.sender)].field_768) > -stakedOf[msg.sender].field_768 + 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff and stakedOf[msg.sender].field_768 >= 0:
        revert with 0, 17
    if stakedOf[msg.sender].field_768 < 0 and Mask(192, 64, (stor5 * stakedOf[address(msg.sender)].field_256) - stakedOf[address(msg.sender)].field_768) < -stakedOf[msg.sender].field_768 - 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 17
    stakedOf[msg.sender].field_768 += Mask(192, 64, (stor5 * stakedOf[address(msg.sender)].field_256) - stakedOf[address(msg.sender)].field_768)
    if stakedOf[msg.sender].field_0 > !(Mask(192, 64, (stor5 * stakedOf[address(msg.sender)].field_256) - stakedOf[address(msg.sender)].field_768) >> 64):
        revert with 0, 17
    stakedOf[msg.sender].field_0 += Mask(192, 64, (stor5 * stakedOf[address(msg.sender)].field_256) - stakedOf[address(msg.sender)].field_768) >> 64
    emit 0xfeddf252: (Mask(192, 64, (stor5 * stakedOf[address(msg.sender)].field_256) - stakedOf[address(msg.sender)].field_768) >> 64), this.address, msg.sender
    emit Collect((Mask(192, 64, (stor5 * stakedOf[address(msg.sender)].field_256) - stakedOf[address(msg.sender)].field_768) >> 64), msg.sender);
    return (Mask(192, 64, (stor5 * stakedOf[address(msg.sender)].field_256) - stakedOf[address(msg.sender)].field_768) >> 64)
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stakedOf[address(msg.sender)].field_0 < stakedOf[address(msg.sender)].field_256:
        revert with 0, 17
    if stakedOf[address(msg.sender)].field_0 - stakedOf[address(msg.sender)].field_256 < arg2:
        revert with 0, 'Insufficient balance'
    if stakedOf[address(msg.sender)].field_0 < arg2:
        revert with 0, 17
    stakedOf[address(msg.sender)].field_0 -= arg2
    if arg2 and sub_8124f7ac > -1 / arg2:
        revert with 0, 17
    if totalSupply < arg2 * sub_8124f7ac / 100:
        revert with 0, 17
    if totalSupply - (arg2 * sub_8124f7ac / 100) < 10000000 * 10^18:
        if arg2 < 0:
            revert with 0, 17
        if stakedOf[address(arg1)].field_0 > !arg2:
            revert with 0, 17
        stakedOf[address(arg1)].field_0 += arg2
        emit 0xfeddf252: arg2, msg.sender, arg1
    else:
        if stakedOf[address(msg.sender)].field_1024:
            if arg2 < 0:
                revert with 0, 17
            if stakedOf[address(arg1)].field_0 > !arg2:
                revert with 0, 17
            stakedOf[address(arg1)].field_0 += arg2
            emit 0xfeddf252: arg2, msg.sender, arg1
        else:
            if arg2 < arg2 * sub_8124f7ac / 100:
                revert with 0, 17
            if stakedOf[address(arg1)].field_0 > !(arg2 - (arg2 * sub_8124f7ac / 100)):
                revert with 0, 17
            stakedOf[address(arg1)].field_0 = stakedOf[address(arg1)].field_0 + arg2 - (arg2 * sub_8124f7ac / 100)
            emit 0xfeddf252: (arg2 - (arg2 * sub_8124f7ac / 100)), msg.sender, arg1
            if arg2 * sub_8124f7ac / 100:
                if not totalStaked:
                    if totalSupply < arg2 * sub_8124f7ac / 100:
                        revert with 0, 17
                    totalSupply -= arg2 * sub_8124f7ac / 100
                    emit 0xfeddf252: (arg2 * sub_8124f7ac / 100), msg.sender, 0
                    emit Burn((arg2 * sub_8124f7ac / 100));
                else:
                    if Mask(255, 1, arg2 * sub_8124f7ac / 100) and 18446744073709551616 > -1 / arg2 * sub_8124f7ac / 100 / 2:
                        revert with 0, 17
                    if not totalStaked:
                        revert with 0, 18
                    if stor5 > !(Mask(192, 1, arg2 * sub_8124f7ac / 100) << 63 / totalStaked):
                        revert with 0, 17
                    stor5 += Mask(192, 1, arg2 * sub_8124f7ac / 100) << 63 / totalStaked
                    emit 0xfeddf252: (arg2 * sub_8124f7ac / 100 / 2), msg.sender, this.address
                    if totalSupply < arg2 * sub_8124f7ac / 100 / 2:
                        revert with 0, 17
                    totalSupply -= arg2 * sub_8124f7ac / 100 / 2
                    emit 0xfeddf252: (arg2 * sub_8124f7ac / 100 / 2), msg.sender, 0
                    emit Burn((arg2 * sub_8124f7ac / 100 / 2));
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if arg3 > stakedOf[address(arg1)][2][msg.sender].field_0:
        revert with 0, 'Insufficient allowance'
    if stakedOf[address(arg1)][2][msg.sender].field_0 < arg3:
        revert with 0, 17
    stakedOf[address(arg1)][2][msg.sender].field_0 -= arg3
    if stakedOf[address(arg1)].field_0 < stakedOf[address(arg1)].field_256:
        revert with 0, 17
    if stakedOf[address(arg1)].field_0 - stakedOf[address(arg1)].field_256 < arg3:
        revert with 0, 'Insufficient balance'
    if stakedOf[address(arg1)].field_0 < arg3:
        revert with 0, 17
    stakedOf[address(arg1)].field_0 -= arg3
    if arg3 and sub_8124f7ac > -1 / arg3:
        revert with 0, 17
    if totalSupply < arg3 * sub_8124f7ac / 100:
        revert with 0, 17
    if totalSupply - (arg3 * sub_8124f7ac / 100) < 10000000 * 10^18:
        if arg3 < 0:
            revert with 0, 17
        if stakedOf[address(arg2)].field_0 > !arg3:
            revert with 0, 17
        stakedOf[address(arg2)].field_0 += arg3
        emit 0xfeddf252: arg3, arg1, arg2
    else:
        if stakedOf[address(arg1)].field_1024:
            if arg3 < 0:
                revert with 0, 17
            if stakedOf[address(arg2)].field_0 > !arg3:
                revert with 0, 17
            stakedOf[address(arg2)].field_0 += arg3
            emit 0xfeddf252: arg3, arg1, arg2
        else:
            if arg3 < arg3 * sub_8124f7ac / 100:
                revert with 0, 17
            if stakedOf[address(arg2)].field_0 > !(arg3 - (arg3 * sub_8124f7ac / 100)):
                revert with 0, 17
            stakedOf[address(arg2)].field_0 = stakedOf[address(arg2)].field_0 + arg3 - (arg3 * sub_8124f7ac / 100)
            emit 0xfeddf252: (arg3 - (arg3 * sub_8124f7ac / 100)), arg1, arg2
            if arg3 * sub_8124f7ac / 100:
                if not totalStaked:
                    if totalSupply < arg3 * sub_8124f7ac / 100:
                        revert with 0, 17
                    totalSupply -= arg3 * sub_8124f7ac / 100
                    emit 0xfeddf252: (arg3 * sub_8124f7ac / 100), arg1, 0
                    emit Burn((arg3 * sub_8124f7ac / 100));
                else:
                    if Mask(255, 1, arg3 * sub_8124f7ac / 100) and 18446744073709551616 > -1 / arg3 * sub_8124f7ac / 100 / 2:
                        revert with 0, 17
                    if not totalStaked:
                        revert with 0, 18
                    if stor5 > !(Mask(192, 1, arg3 * sub_8124f7ac / 100) << 63 / totalStaked):
                        revert with 0, 17
                    stor5 += Mask(192, 1, arg3 * sub_8124f7ac / 100) << 63 / totalStaked
                    emit 0xfeddf252: (arg3 * sub_8124f7ac / 100 / 2), arg1, this.address
                    if totalSupply < arg3 * sub_8124f7ac / 100 / 2:
                        revert with 0, 17
                    totalSupply -= arg3 * sub_8124f7ac / 100 / 2
                    emit 0xfeddf252: (arg3 * sub_8124f7ac / 100 / 2), arg1, 0
                    emit Burn((arg3 * sub_8124f7ac / 100 / 2));
    return 1
}

function transferAndCall(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if stakedOf[address(msg.sender)].field_0 < stakedOf[address(msg.sender)].field_256:
        revert with 0, 17
    if stakedOf[address(msg.sender)].field_0 - stakedOf[address(msg.sender)].field_256 < arg2:
        revert with 0, 'Insufficient balance'
    if stakedOf[address(msg.sender)].field_0 < arg2:
        revert with 0, 17
    stakedOf[address(msg.sender)].field_0 -= arg2
    if arg2 and sub_8124f7ac > -1 / arg2:
        revert with 0, 17
    if totalSupply < arg2 * sub_8124f7ac / 100:
        revert with 0, 17
    if totalSupply - (arg2 * sub_8124f7ac / 100) < 10000000 * 10^18:
        if arg2 < 0:
            revert with 0, 17
        if stakedOf[address(arg1)].field_0 > !arg2:
            revert with 0, 17
        stakedOf[address(arg1)].field_0 += arg2
        emit 0xfeddf252: arg2, msg.sender, arg1
        if uint32(ext_code.size(arg1)):
            mem[228 len arg3.length] = arg3[all]
            mem[arg3.length + 228] = 0
            require ext_code.size(arg1)
            call arg1.tokenCallback(address arg1, uint256 arg2, bytes arg3) with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), arg2, 96, arg3.length, arg3[all], mem[arg3.length + 228 len ceil32(arg3.length) - arg3.length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            require ext_call.return_data[0]
    else:
        if stakedOf[address(msg.sender)].field_1024:
            if arg2 < 0:
                revert with 0, 17
            if stakedOf[address(arg1)].field_0 > !arg2:
                revert with 0, 17
            stakedOf[address(arg1)].field_0 += arg2
            emit 0xfeddf252: arg2, msg.sender, arg1
            if uint32(ext_code.size(arg1)):
                mem[228 len arg3.length] = arg3[all]
                mem[arg3.length + 228] = 0
                require ext_code.size(arg1)
                call arg1.tokenCallback(address arg1, uint256 arg2, bytes arg3) with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), arg2, 96, arg3.length, arg3[all], mem[arg3.length + 228 len ceil32(arg3.length) - arg3.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_call.return_data[0]
        else:
            if arg2 < arg2 * sub_8124f7ac / 100:
                revert with 0, 17
            if stakedOf[address(arg1)].field_0 > !(arg2 - (arg2 * sub_8124f7ac / 100)):
                revert with 0, 17
            stakedOf[address(arg1)].field_0 = stakedOf[address(arg1)].field_0 + arg2 - (arg2 * sub_8124f7ac / 100)
            emit 0xfeddf252: (arg2 - (arg2 * sub_8124f7ac / 100)), msg.sender, arg1
            if arg2 * sub_8124f7ac / 100:
                if not totalStaked:
                    if totalSupply < arg2 * sub_8124f7ac / 100:
                        revert with 0, 17
                    totalSupply -= arg2 * sub_8124f7ac / 100
                    emit 0xfeddf252: (arg2 * sub_8124f7ac / 100), msg.sender, 0
                    emit Burn((arg2 * sub_8124f7ac / 100));
                else:
                    if Mask(255, 1, arg2 * sub_8124f7ac / 100) and 18446744073709551616 > -1 / arg2 * sub_8124f7ac / 100 / 2:
                        revert with 0, 17
                    if not totalStaked:
                        revert with 0, 18
                    if stor5 > !(Mask(192, 1, arg2 * sub_8124f7ac / 100) << 63 / totalStaked):
                        revert with 0, 17
                    stor5 += Mask(192, 1, arg2 * sub_8124f7ac / 100) << 63 / totalStaked
                    emit 0xfeddf252: (arg2 * sub_8124f7ac / 100 / 2), msg.sender, this.address
                    if totalSupply < arg2 * sub_8124f7ac / 100 / 2:
                        revert with 0, 17
                    totalSupply -= arg2 * sub_8124f7ac / 100 / 2
                    emit 0xfeddf252: (arg2 * sub_8124f7ac / 100 / 2), msg.sender, 0
                    emit Burn((arg2 * sub_8124f7ac / 100 / 2));
            if uint32(ext_code.size(arg1)):
                mem[228 len arg3.length] = arg3[all]
                mem[arg3.length + 228] = 0
                require ext_code.size(arg1)
                call arg1.tokenCallback(address arg1, uint256 arg2, bytes arg3) with:
                     gas gas_remaining wei
                    args 0, uint32(msg.sender), arg2 - (arg2 * sub_8124f7ac / 100), 96, arg3.length, arg3[all], mem[arg3.length + 228 len ceil32(arg3.length) - arg3.length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_call.return_data[0]
    return 1
}

function bulkTransfer(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg2.length == arg1.length
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        if idx >= arg2.length:
            revert with 0, 50
        if stakedOf[address(msg.sender)].field_0 < stakedOf[address(msg.sender)].field_256:
            revert with 0, 17
        if stakedOf[address(msg.sender)].field_0 - stakedOf[address(msg.sender)].field_256 < cd[((32 * idx) + arg2 + 36)]:
            revert with 0, 'Insufficient balance'
        if stakedOf[address(msg.sender)].field_0 < cd[((32 * idx) + arg2 + 36)]:
            revert with 0, 17
        stakedOf[address(msg.sender)].field_0 -= cd[((32 * idx) + arg2 + 36)]
        if cd[((32 * idx) + arg2 + 36)] and sub_8124f7ac > -1 / cd[((32 * idx) + arg2 + 36)]:
            revert with 0, 17
        if totalSupply < cd[((32 * idx) + arg2 + 36)] * sub_8124f7ac / 100:
            revert with 0, 17
        if totalSupply - (cd[((32 * idx) + arg2 + 36)] * sub_8124f7ac / 100) < 10000000 * 10^18:
            if cd[((32 * idx) + arg2 + 36)] < 0:
                revert with 0, 17
            mem[32] = 4
            if stakedOf[address(cd[((32 * idx) + arg1 + 36)])].field_0 > !cd[((32 * idx) + arg2 + 36)]:
                revert with 0, 17
            stakedOf[address(cd[((32 * idx) + arg1 + 36)])].field_0 += cd[((32 * idx) + arg2 + 36)]
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[96] = cd[((32 * idx) + arg2 + 36)]
            emit 0xfeddf252: cd[((32 * idx) + arg2 + 36)], msg.sender, address(cd[((32 * idx) + arg1 + 36)])
        else:
            if stakedOf[address(msg.sender)].field_1024:
                if cd[((32 * idx) + arg2 + 36)] < 0:
                    revert with 0, 17
                mem[32] = 4
                if stakedOf[address(cd[((32 * idx) + arg1 + 36)])].field_0 > !cd[((32 * idx) + arg2 + 36)]:
                    revert with 0, 17
                stakedOf[address(cd[((32 * idx) + arg1 + 36)])].field_0 += cd[((32 * idx) + arg2 + 36)]
                mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                mem[96] = cd[((32 * idx) + arg2 + 36)]
                emit 0xfeddf252: cd[((32 * idx) + arg2 + 36)], msg.sender, address(cd[((32 * idx) + arg1 + 36)])
            else:
                if cd[((32 * idx) + arg2 + 36)] < cd[((32 * idx) + arg2 + 36)] * sub_8124f7ac / 100:
                    revert with 0, 17
                mem[32] = 4
                if stakedOf[address(cd[((32 * idx) + arg1 + 36)])].field_0 > !(cd[((32 * idx) + arg2 + 36)] - (cd[((32 * idx) + arg2 + 36)] * sub_8124f7ac / 100)):
                    revert with 0, 17
                stakedOf[address(cd[((32 * idx) + arg1 + 36)])].field_0 = stakedOf[address(cd[((32 * idx) + arg1 + 36)])].field_0 + cd[((32 * idx) + arg2 + 36)] - (cd[((32 * idx) + arg2 + 36)] * sub_8124f7ac / 100)
                mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                mem[96] = cd[((32 * idx) + arg2 + 36)] - (cd[((32 * idx) + arg2 + 36)] * sub_8124f7ac / 100)
                emit 0xfeddf252: (cd[((32 * idx) + arg2 + 36)] - (cd[((32 * idx) + arg2 + 36)] * sub_8124f7ac / 100)), msg.sender, address(cd[((32 * idx) + arg1 + 36)])
                if cd[((32 * idx) + arg2 + 36)] * sub_8124f7ac / 100:
                    if not totalStaked:
                        if totalSupply < cd[((32 * idx) + arg2 + 36)] * sub_8124f7ac / 100:
                            revert with 0, 17
                        totalSupply -= cd[((32 * idx) + arg2 + 36)] * sub_8124f7ac / 100
                        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                        emit 0xfeddf252: (cd[((32 * idx) + arg2 + 36)] * sub_8124f7ac / 100), msg.sender, 0
                        mem[96] = cd[((32 * idx) + arg2 + 36)] * sub_8124f7ac / 100
                        emit Burn((cd[((32 * idx) + arg2 + 36)] * sub_8124f7ac / 100));
                    else:
                        if Mask(255, 1, cd[((32 * idx) + arg2 + 36)] * sub_8124f7ac / 100) and 18446744073709551616 > -1 / cd[((32 * idx) + arg2 + 36)] * sub_8124f7ac / 100 / 2:
                            revert with 0, 17
                        if not totalStaked:
                            revert with 0, 18
                        if stor5 > !(Mask(192, 1, cd[((32 * idx) + arg2 + 36)] * sub_8124f7ac / 100) << 63 / totalStaked):
                            revert with 0, 17
                        stor5 += Mask(192, 1, cd[((32 * idx) + arg2 + 36)] * sub_8124f7ac / 100) << 63 / totalStaked
                        emit 0xfeddf252: (cd[((32 * idx) + arg2 + 36)] * sub_8124f7ac / 100 / 2), msg.sender, this.address
                        if totalSupply < cd[((32 * idx) + arg2 + 36)] * sub_8124f7ac / 100 / 2:
                            revert with 0, 17
                        totalSupply -= cd[((32 * idx) + arg2 + 36)] * sub_8124f7ac / 100 / 2
                        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                        emit 0xfeddf252: (cd[((32 * idx) + arg2 + 36)] * sub_8124f7ac / 100 / 2), msg.sender, 0
                        mem[96] = cd[((32 * idx) + arg2 + 36)] * sub_8124f7ac / 100 / 2
                        emit Burn((cd[((32 * idx) + arg2 + 36)] * sub_8124f7ac / 100 / 2));
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
